<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewTest2.aspx.cs" Inherits="WebApplication1.NewTest2" %>

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
        <strong><span class="auto-style1">List of Process Units in </span></strong><asp:Label ID="AreaLbl" runat="server" CssClass="auto-style1" Font-Bold="True"></asp:Label><br /><br />
        <asp:ListBox ID="lstPU" runat="server" SelectionMode="Multiple" Height="400px" Width="300px" BackColor="#CCFFFF" Font-Size="Large"></asp:ListBox><br /><br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Select" CssClass="auto-style2" Height="40px" Width="130px" />   
        &nbsp;&nbsp;&nbsp;&nbsp;   
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="auto-style3" Height="40px" Width="130px" />
    </div>
    </form>
</body>
</html>
