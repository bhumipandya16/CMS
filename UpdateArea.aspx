﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateArea.aspx.cs" Inherits="WebApplication1.UpdateArea" %>

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
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            color: silver;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Home.aspx">Home</a></li>
                    <li><a href="Maintainance.aspx">Maintenance</a></li>
                    <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </div>
        </nav>
        <div class="auto-style2">
            Enter Project Name:

            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" ForeColor="Black" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd" runat="server" Text="Add Area" OnClick="btnAdd_Click" ForeColor="Black" /><br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <br />
        <div style="margin-left: auto; margin-right: auto;">
            <asp:GridView ID="gvRefinery_Area" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowCancelingEdit="gvRefinery_Area_RowCancelingEdit" OnRowEditing="gvRefinery_Area_RowEditing" OnRowUpdating="gvRefinery_Area_RowUpdating" HorizontalAlign="Center">
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

                    <asp:TemplateField HeaderText="Refinery_Name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Refinery_Area_id">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Refinery_Area_id" runat="server" Text='<%#Eval("Refinery_Area_id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Refinery_Area_Name">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Refinery_Area_Name" runat="server" Text='<%#Eval("Refinery_Area_Name") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Refinery_Area_Name" runat="server" Text='<%#Eval("Refinery_Area_Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Refinery_Area_Number">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Refinery_Area_Number" runat="server" Text='<%#Eval("Refinery_Area_Number") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Refinery_Area_Number" runat="server" Text='<%#Eval("Refinery_Area_Number") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Refinery_Area_Inspected">
                        <ItemTemplate>
                            <asp:Label ID="lbl_Refinery_Area_Inspected" runat="server" Text='<%#Eval("Refinery_Area_Inspected") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txt_Refinery_Area_Inspected" runat="server" Text='<%#Eval("Refinery_Area_Inspected") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>

                </Columns>
                <HeaderStyle BackColor="#28d" ForeColor="#ebebeb" />
                <RowStyle BackColor="#ebebeb" />
            </asp:GridView>

        </div>
    </form>
</body>
</html>
