<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PunchList.aspx.cs" Inherits="WebApplication1.PunchList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%--<link rel="stylesheet" href="/styles/OP_Form.css" />
    <link rel="stylesheet" href="/styles/OP_Form.css" />--%>
    <style>
        .auto-style14 {
            width: 134px;
        }

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

    <form id="form1" runat="server" style="border: 1px solid #ccc">
        <div class="container">
            <h2 class="text-center"><span class="label label-default">Punch List</span></h2>
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
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="128px" margin="0 auto" class="btn btn-primary" />
                </h5>
                <div style="margin-left: auto; margin-right: auto;">
                    <br />
                    <asp:GridView ID="gvPunchList" runat="server" AutoGenerateColumns="False" CellPadding="10" HorizontalAlign="Center" OnRowCancelingEdit="gvPunchList_RowCancelingEdit" OnRowEditing="gvPunchList_RowEditing" OnRowUpdating="gvPunchList_RowUpdating">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update" />
                                    <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel" />
                                </EditItemTemplate>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Form id">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Form_id" runat="server" Text='<%#Eval("Form_OP_0050_id") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Project_Name">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Project_Name" runat="server" Text='<%#Eval("Project_Name") %>'></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <%--<asp:TemplateField HeaderText="Tag_Number">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Tag_Number" runat="server" Text='<%#Eval("Tag_Number") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                    </asp:TemplateField>--%>

                            <asp:TemplateField HeaderText="Tag Number">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Item" runat="server" Text='<%#Eval("Item") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_Item" runat="server" Text='<%#Eval("Item") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="No_PID">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_No_PID" runat="server" Text='<%#Eval("No_PID") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_No_PID" runat="server" Text='<%#Eval("No_PID") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Item Description">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Item_Description" runat="server" Text='<%#Eval("Item_Description") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_Item_Description" runat="server" Text='<%#Eval("Item_Description") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Category">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Category" runat="server" Text='<%#Eval("Category") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_Category" runat="server" Text='<%#Eval("Category") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Action On">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Action_On" runat="server" Text='<%#Eval("Action_On") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_Action_On" runat="server" Text='<%#Eval("Action_On") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Completed By EPC">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Completed_By_EPC" runat="server" Text='<%#Eval("Completed_By_EPC") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_Completed_By_EPC" runat="server" Text='<%#Eval("Completed_By_EPC") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Discipline Lead">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Discipline_Lead" runat="server" Text='<%#Eval("Discipline_Lead") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_Discipline_Lead" runat="server" Text='<%#Eval("Discipline_Lead") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Item Date">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Item_Date" runat="server" Text='<%#Eval("Item_Date") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_Item_Date" runat="server" Text='<%#Eval("Item_Date") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Status">
                                <ItemTemplate>
                                    <asp:Label ID="lbl_Status" runat="server" Text='<%#Eval("Item_Status") %>'></asp:Label>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:TextBox ID="txt_Status" runat="server" Text='<%#Eval("Item_Status") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <HeaderStyle CssClass="header-center" Height="50px"></HeaderStyle>
                            </asp:TemplateField>

                        </Columns>
                        <HeaderStyle BackColor="#28d" ForeColor="#ebebeb" />
                        <RowStyle BackColor="#ebebeb" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
