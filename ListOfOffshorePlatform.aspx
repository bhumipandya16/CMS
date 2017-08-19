<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListOfOffshorePlatform.aspx.cs" Inherits="WebApplication1.ListOfOffshorePlatform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="/styles/Styles.css" />
    <link rel="stylesheet" href="/styles/form.css" />
    <style>
        .ali {
            align-content: center;
        }

        .hiddencol {
            display: none;
        }
        .header-center{
        text-align:center;
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
            <h2 class="text-center"><span class="label label-default">List of Offshore Platforms</span></h2>
            <br />
            <div class="text-center">

                <div style="margin-left: auto; margin-right: auto;">
                    <asp:Label ID="Label1" runat="server" Text="" ForeColor="Silver"></asp:Label>
                    <asp:GridView ID="grdVwRefineryCollection" runat="server" AutoGenerateColumns="False" CellPadding="6" ForeColor="Black" OnRowCommand="grdVwRefineryCollection_Onrowcommand" RowDataBound="grdVwRefineryCollection_RowDataBound" HorizontalAlign="Center" Width="800px">
                        <Columns>

                            <asp:BoundField DataField="Refinery_id" HeaderText="Project_id" ItemStyle-CssClass="hiddencol" HeaderStyle-CssClass="hiddencol">
                                <HeaderStyle CssClass="hiddencol"></HeaderStyle>
                                <ItemStyle CssClass="hiddencol"></ItemStyle>
                            </asp:BoundField>

                            <asp:TemplateField HeaderText="Project Name" HeaderStyle-CssClass="header-center">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Project Type" HeaderStyle-CssClass="header-center">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Type" runat="server" Text='<%#Eval("Project_Type") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Owner of Company" HeaderStyle-CssClass="header-center">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Owner_Company" runat="server" Text='<%#Eval("Owner_Company") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="ViewBtn" runat="server" Text="View" CommandName="View" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                        <HeaderStyle BackColor="#28d" ForeColor="#ebebeb" HorizontalAlign="Center" />
                        <RowStyle BackColor="#ebebeb" ForeColor="Black" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
