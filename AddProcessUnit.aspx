<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProcessUnit.aspx.cs" Inherits="WebApplication1.AddProcessUnit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=ListBox1]').multiselect({
                includeSelectAllOption: true
            });
        });
    </script>
    <link rel="stylesheet" href="/styles/form.css" />
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
    <div class="login">
        <h2 class="login-header">Add a new process unit</h2>
        <form class="login-container" runat="server">
            &nbsp;&nbsp;Process Unit Name
               <asp:DropDownList ID="PUNameDdl" runat="server">        
               </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Process Unit Name is required" ControlToValidate="PUNameDdl">*</asp:RequiredFieldValidator>

            Process Unit Number
               <asp:TextBox ID="PUNumberTxtbox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PUNumberRequired" runat="server" ControlToValidate="PUNumberTxtbox" ErrorMessage="Process_Unit Number is required" ToolTip="Process_Unit Number is required">*</asp:RequiredFieldValidator>

            Process Unit Inspected
               <asp:DropDownList ID="PUInspectedDdl" runat="server">
                   <asp:ListItem>True</asp:ListItem>
                   <asp:ListItem>False</asp:ListItem>
               </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvInspected" runat="server" ErrorMessage="Status is required" ControlToValidate="PUInspectedDdl">*</asp:RequiredFieldValidator>

            Project Name
               <%--<asp:TextBox ID="ProjectNameTxtBox" runat="server"></asp:TextBox>--%>
            <%--<asp:DropDownList ID="ProjectNameDdl" runat="server"></asp:DropDownList>--%>
            <asp:DropDownList ID="ProjectNameDdl" runat="server" OnSelectedIndexChanged="ProjectNameDdl_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Text="--Select Project--" Value=""></asp:ListItem>
                                </asp:DropDownList>
            <asp:RequiredFieldValidator ID="ProjectNameRequired" runat="server" ControlToValidate="ProjectNameDdl" ErrorMessage="Project_Name is required" ToolTip="Project_Name is required">*</asp:RequiredFieldValidator>
 
            Project Area Name
               <%--<asp:TextBox ID="RefAreaNameTxtbox" runat="server"></asp:TextBox>--%>
            <asp:DropDownList ID="ProjectAreaNameDdl" runat="server" Width="100%" AutoPostBack="true" Enabled="false">
                                   <asp:ListItem Text="--Select Area--" Value=""></asp:ListItem>
                               </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RefAreaNameRequired" runat="server" ControlToValidate="ProjectAreaNameDdl" ErrorMessage="Refinery_Area_Name is required" ToolTip="Refinery_Area_Name is required">*</asp:RequiredFieldValidator>
           Code
            <asp:TextBox ID="CodeTxtbx" runat="server" OnTextChanged="CodeTxtbx_TextChanged" AutoPostBack="true"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CodeTxtbx" ErrorMessage="Code is required" ToolTip="Code is required">*</asp:RequiredFieldValidator>

            Systems (hold 'ctrl' key to select multiple systems)<br />
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="6" >

            </asp:ListBox>

            <asp:Button ID="AddButton" runat="server" OnClick="AddButton_Click" Text="Add" /><br />
            <asp:Button ID="CancelBtn" runat="server" Text="Exit" OnClick="CancelBtn_Click" CausesValidation="false" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </form>
    </div>
</body>
</html>
