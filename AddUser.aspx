<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="WebApplication1.AddUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <link rel="stylesheet" href="styles/form.css"/>
    <style type="text/css">
        .auto-style17 {
            margin-left: 0px;
        }
        </style>
</head>
<body>
     <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="Maintainance.aspx">Maintenance</a></li>
                <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </div>
       </nav>
   <%-- <form id="form1" runat="server">--%>
    <div class="login">
            <h2 class="login-header">Add a new user</h2>  
                 <form class="login-container" runat="server">
       
       &nbsp;&nbsp;
       
                First Name
                <asp:TextBox ID="FirstNameTxtbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="FirstNameTxtbox" ErrorMessage="First Name is required" ToolTip="First Name is required">*</asp:RequiredFieldValidator>
                Last Name
               <asp:TextBox ID="LastNameTxtbox" runat="server" CssClass="auto-style17"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="LastNameTxtbox" ErrorMessage="Last Name is required" ToolTip="Last Name is required">*</asp:RequiredFieldValidator>
                UserName
                    <asp:TextBox ID="UserNameTxtbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserNameTxtbox" ErrorMessage="UserName is required" ToolTip="UserName is required">*</asp:RequiredFieldValidator>
               Password
                    <asp:TextBox ID="PasswordTxtbox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="PasswordTxtbox" ErrorMessage="Password is required" ToolTip="Password is required">*</asp:RequiredFieldValidator>
                Email
                    <asp:TextBox ID="EmailTxtbox" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="EmailTxtbox" ErrorMessage="Email is required" ToolTip="Email is required">*</asp:RequiredFieldValidator>
                Position
                    <asp:TextBox ID="PositionTxtBox" runat="server"></asp:TextBox>
               &nbsp;&nbsp;
               Role
                    <asp:DropDownList ID="RoleDdl" runat="server">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RoleRequired" runat="server" ControlToValidate="RoleDdl" ErrorMessage="Role is required" ToolTip="Role is required">*</asp:RequiredFieldValidator><br />
                     <asp:Button ID="AddBtn" runat="server" OnClick="AddBtn_Click" Text="Add"  /><br />
                     <asp:Button ID="CancelBtn" runat="server" Text="Exit" OnClick="CancelBtn_Click" causesvalidation="false" />
          <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
        </div>
</body>
</html>
