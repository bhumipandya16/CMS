<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartUp.aspx.cs" Inherits="WebApplication1.StartUp" %>

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
        .auto-style2 {
            margin-left: 0;
            background-color: #009933;
        }
        .auto-style3 {
            background-color: #FF0000;
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
    <div class="text-center">
        <strong>
        <asp:Label ID="Label1" runat="server" Text="List of Start-Up Activities" CssClass="auto-style1"></asp:Label></strong><br /><br />
        <ul>
            <li><asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" ForeColor="#66FFFF">OP-----</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" ForeColor="#66FFFF">OP-----</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" ForeColor="#66FFFF">OP-----</asp:HyperLink></li>
        </ul>
        </div>
    </form>
</body>
</html>
