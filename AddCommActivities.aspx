<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCommActivities.aspx.cs" Inherits="WebApplication1.AddCommActivities" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
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
        <h2 class="login-header">Add forms related to activities</h2>
        <form class="login-container" runat="server">
            &nbsp;&nbsp;Project Name
            <%--<asp:TextBox ID="PlantTxtBox" runat="server"></asp:TextBox>--%>
            <asp:DropDownList ID="ProjectNameDdl" runat="server" OnSelectedIndexChanged="ProjectNameDdl_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text="--Select Project--" Value=""></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ErrorMessage="Process Unit Name is required" ControlToValidate="ProjectNameDdl">*</asp:RequiredFieldValidator>

            Process_Unit Name
               <%--<asp:DropDownList ID="PUNameDdl" runat="server">
               </asp:DropDownList>--%>
            <asp:DropDownList ID="PUNameDdl" runat="server" OnSelectedIndexChanged="PUNameDdl_SelectedIndexChanged" AutoPostBack="true" Enabled="false">
                <asp:ListItem Text="--Select Process Unit--" Value=""></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvPUName" runat="server" ErrorMessage="Process Unit Name is required" ControlToValidate="PUNameDdl">*</asp:RequiredFieldValidator>

            System Name
            <%--<asp:TextBox ID="SystemNameTxtbox" runat="server"></asp:TextBox>--%>
            <asp:DropDownList ID="SystemDdl" runat="server" Width="100%" AutoPostBack="true" Enabled="false">
                <asp:ListItem Text="--Select System--" Value=""></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="SystemNameRequired" runat="server" ControlToValidate="SystemDdl" ErrorMessage="Refinery_Area_Name is required" ToolTip="Refinery_Area_Name is required">*</asp:RequiredFieldValidator>

            <%--Pre-Commissioning Activities<br />
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="10" >
            </asp:ListBox>--%>

            Commissioning Activities (hold &#39;ctrl&#39; key to select multiple forms)<br />
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="10"></asp:ListBox>

            <%--Start-Up Activities<br />
            <asp:ListBox ID="ListBox3" runat="server" SelectionMode="Multiple">
            </asp:ListBox>--%>

            <asp:Button ID="AddButton" runat="server" OnClick="AddButton_Click" Text="Add" /><br />
            <asp:Button ID="CancelBtn" runat="server" Text="Exit" OnClick="CancelBtn_Click" CausesValidation="false" />
            <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
