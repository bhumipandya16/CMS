<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SystemActivities.aspx.cs" Inherits="WebApplication1.NewTest4" %>

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
        .btn {
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 50%;
        align-content: center;
    }
        .auto-style1 {
            font-size: x-large;
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

    <div class="text-center">
        <strong>
        <asp:Label ID="Label1" runat="server" Text="List of Activities" CssClass="auto-style1"></asp:Label></strong><br /><br />
        <asp:Button CSSclass="btn" ID="PreCommBtn" runat="server" Text="PRE-COMMISSIONING ACTIVITIES" BorderStyle="Inset" BackColor="Aqua" ForeColor="Black" Font-Bold="True" Font-Size="Larger" OnClick="PreCommBtn_Click" /><br />
        <asp:Button CSSclass="btn" ID="CommBtn" runat="server" Text="COMMISSIONING ACTIVITIES" BorderStyle="Inset" BackColor="Aqua" ForeColor="Black" Font-Bold="True" Font-Size="Larger" OnClick="CommBtn_Click"/><br />
        <asp:Button CSSclass="btn" ID="StartUpBtn" runat="server" Text="START-UP ACTIVITIES" BorderStyle="Inset" BackColor="Aqua" ForeColor="Black" Font-Bold="True" Font-Size="Larger" OnClick="StartUpBtn_Click" />
        <asp:Button CSSclass="btn" ID="PunchListBtn" runat="server" Text="PUNCH LIST" BorderStyle="Inset" BackColor="Aqua" ForeColor="Black" Font-Bold="True" Font-Size="Larger" OnClick="PunchListBtn_Click" />
    </div>

    </form>
</body>
</html>

