<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Comm.aspx.cs" Inherits="WebApplication1.Comm" %>

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
        .auto-style1 {
            font-size: large;
            color: #FFFFFF;
            text-decoration: underline;
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
        <div class="container-fluid">
        <div class="col-sm-4">
        </div>
            <div class="col-sm-8">
        <strong><asp:Label ID="Label1" runat="server" Text="List of Commissioning Activities" CssClass="auto-style1"></asp:Label></strong><br /><br />
        <table border="1">
            <tr><td><asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0015.aspx">OP-0015: Commissioning checklist for functional test of rotating equipments</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0030.aspx">OP-0030: Commissioning checklist for centrifugal pumps</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0032.aspx">OP-0032: Commissioning checklist for centrifugal compressors</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0080.aspx">OP-0080: System isolation control</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0081.aspx">OP-0081: Leak test commissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink6" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0082.aspx">OP-0082: Inerting test commissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink7" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0083.aspx">OP-0083: N2 purging test commissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink8" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0084.aspx">OP-0084: Load of catalyst commissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink9" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0085.aspx">OP-0085: Hot tie commissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink10" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0086.aspx">OP-0086: Load of chemicals commissioning checklist</asp:HyperLink></td></tr>
        </table>
        </div>
            </div>
    </form>
</body>
</html>
