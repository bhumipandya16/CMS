 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="WebApplication1.UpdateUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="/styles/Styles.css"/> 
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            color: #C0C0C0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-center">
   <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="Maintainance.aspx">Maintenance</a></li>
                <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </div>
       </nav>
        <%--<div id="menu">
        <ul class="auto-style2">
        <li><a href="index.html">Home</a></li>
        <li><a href="aboutus.html">About Us</a></li>
        <li><a href="services.html">Services</a></li>
        <li><a href="contactus.html">Contact Us</a></li>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Logout.aspx">LogOut</asp:HyperLink>
        </ul>
        </div><br />--%>
        <div class="auto-style2"><span class="auto-style3">Enter First Name:</span>

            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
        </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <div style="margin-left:auto; margin-right:auto;">
        <asp:GridView ID="gvsearchuser" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowCancelingEdit="gvsearchuser_RowCancelingEdit" OnRowEditing="gvsearchuser_RowEditing" OnRowUpdating="gvsearchuser_RowUpdating" HorizontalAlign="Center">
            <Columns>  
                <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                      <asp:TemplateField HeaderText="User_id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_User_id" runat="server" Text='<%#Eval("User_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="FirstName">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_FirstName" runat="server" Text='<%#Eval("FirstName") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_FirstName" runat="server" Text='<%#Eval("FirstName") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="LastName">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_LastName" runat="server" Text='<%#Eval("LastName") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_LastName" runat="server" Text='<%#Eval("LastName") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="UserName">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_UserName" runat="server" Text='<%#Eval("UserName") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_UserName" runat="server" Text='<%#Eval("UserName") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

               <asp:TemplateField HeaderText="Password">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Password" runat="server" Text='<%#Eval("Password") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Password" runat="server" Text='<%#Eval("Password") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Email" runat="server" Text='<%#Eval("Email") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Email" runat="server" Text='<%#Eval("Email") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Position">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Position" runat="server" Text='<%#Eval("Position") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Position" runat="server" Text='<%#Eval("Position") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                     <asp:TemplateField HeaderText="Role">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Role" runat="server" Text='<%#Eval("Role") %>'></asp:Label> 
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Role" runat="server" Text='<%#Eval("Role") %>'></asp:TextBox>  
                        
                    </EditItemTemplate>  
                </asp:TemplateField>
            </Columns>  
            <HeaderStyle BackColor="#28d" ForeColor="#ebebeb"/>  
            <RowStyle BackColor="#ebebeb"/>  
            </asp:GridView>
        </div>
        </div>
    </form>
</body>
</html>
