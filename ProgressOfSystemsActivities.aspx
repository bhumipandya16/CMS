<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgressOfSystemsActivities.aspx.cs" Inherits="WebApplication1.ProgressOfSystemsActivities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--<link rel="stylesheet" href="/styles/Styles.css" />
    <link rel="stylesheet" href="/styles/form.css" />--%>
    <style>
        .ali {
            align-content: center;
        }

        .hiddencol {
            display: none;
        }

        .header-center {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <h2 class="text-center"><span class="label label-default">System - Activities</span></h2>
            <br />
            <div class="text-center">
                <%--<div class="auto-style2"> --%>
                <h5>Project Name:
                                <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Text="--Select Project--" Value=""></asp:ListItem>
                                </asp:DropDownList><br />
                    <br />
                    Process Unit Name:
                                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="true" Enabled="false">
                                    <asp:ListItem Text="--Select Process Unit--" Value=""></asp:ListItem>
                                </asp:DropDownList><br />
                    <br />
                    System Name:
                               <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" Enabled="false">
                                   <asp:ListItem Text="--Select System--" Value=""></asp:ListItem>
                               </asp:DropDownList><br />
                    <br />

                    <asp:Button ID="SystemActivity_Btn" runat="server" Text="Submit" Width="128px" margin="0 auto" class="btn btn-primary" OnClick="SystemActivity_Btn_Click" /><br />
                    <br />
                    <br />
                </h5>
                <div style="margin-left: auto; margin-right: auto;">
                    <asp:GridView ID="gvSystemActivities" runat="server" AutoGenerateColumns="False" OnRowDataBound="OnRowDataBound" CellPadding="10" HorizontalAlign="Center" Width="800px" Height="300px" Font-Size="Medium">
                        <Columns>
                            <%--<asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" />
                            <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" />
                        </EditItemTemplate>
                    </asp:TemplateField>--%>

                            <asp:TemplateField HeaderText="System Name" HeaderStyle-CssClass="header-center" HeaderStyle-Height="50">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_System_Name" runat="server" Text='<%#Eval("System_Name") %>'></asp:Label>
                                </ItemTemplate>

                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="PreCommissioning Activities" HeaderStyle-CssClass="header-center">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Forms_PreComm" runat="server" Text='<%#Eval("Forms_PreComm") %>'></asp:Label>
                                </ItemTemplate>

                                <HeaderStyle CssClass="header-center"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Completed" HeaderStyle-CssClass="header-center">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Submit" runat="server" Text='<%#Eval("Submit") %>'></asp:Label>
                                </ItemTemplate>
                                
                                <HeaderStyle CssClass="header-center"></HeaderStyle>
                            </asp:TemplateField>
                        </Columns>
                        <HeaderStyle BackColor="Silver" HorizontalAlign="Center" />
                        <RowStyle BackColor="#ebebeb" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
