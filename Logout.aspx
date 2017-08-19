<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="WebApplication1.Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div>
        <asp:Label ID="Label2" runat="server" Text="Logout successful."></asp:Label>
    </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/default.aspx">
            You will be redirected in 5 seconds. If you don't, click here to redirect.</asp:HyperLink>
    
    </form>
</body>
</html>
