<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddArea.aspx.cs" Inherits="WebApplication1.AddArea" %>

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
    <link rel="stylesheet" href="/styles/form.css"/>
</head>
<body>
     <%-- <form id="form1" runat="server">--%>
    <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="Maintainance.aspx">Maintenance</a></li>
                <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </div>
       </nav>
    <div class="login">
            <h2 class="login-header">Add a new area</h2>  
                 <form class="login-container" runat="server">
       
       &nbsp;&nbsp;Project_Area Name
               <asp:TextBox ID="RANameTxtbox" runat="server" CssClass="auto-style17"></asp:TextBox>
<%--               <asp:RequiredFieldValidator ID="RANameRequired" runat="server" ControlToValidate="RANameTxtbox" ErrorMessage="Area Name is required" ToolTip="Area Name is required">*</asp:RequiredFieldValidator>--%>
                    
                      Project_Area Number
               <asp:TextBox ID="RANumberTxtbox" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RANumberRequired" runat="server" ControlToValidate="RANumberTxtbox" ErrorMessage="Area Number is required" ToolTip="Area Number is required">*</asp:RequiredFieldValidator>
                    
                     Project_Area Inspected
               <asp:DropDownList ID="RAInspectedDdl" runat="server">
                        <asp:ListItem>True</asp:ListItem>
                        <asp:ListItem>False</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvInspected" runat="server" ErrorMessage="Status is required" ControlToValidate="RAInspectedDdl">*</asp:RequiredFieldValidator>
                       
                     Project_Name
               <%--<asp:TextBox ID="RefNameTxtbox" runat="server"></asp:TextBox>--%>
                     <asp:DropDownList ID="RefNameDdl" runat="server"></asp:DropDownList>
               <asp:RequiredFieldValidator ID="RefNameRequired" runat="server" ControlToValidate="RefNameDdl" ErrorMessage="Refinery_Name is required" ToolTip="Refinery_Name is required">*</asp:RequiredFieldValidator>
   
                
                     <asp:Button ID="AddBtn" runat="server" OnClick="AddBtn_Click" Text="Add"  /><br />
                     <asp:Button ID="CancelBtn" runat="server" Text="Exit" OnClick="CancelBtn_Click" causesvalidation="false" />
          <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
        </div>
</body>
</html>
