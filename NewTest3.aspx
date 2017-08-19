<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewTest3.aspx.cs" Inherits="WebApplication1.NewTest3" %>

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
            background-color: #4CAF50;
        }
        .auto-style3 {
            background-color: #f44336;
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
        <strong><span class="auto-style1">List of Systems in </span></strong><asp:Label ID="PULbl" runat="server" CssClass="auto-style1" Font-Bold="True"></asp:Label><br /><br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        </asp:UpdatePanel>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server"></asp:UpdateProgress>
        <asp:ListBox ID="lstTech" runat="server" SelectionMode="Multiple" Font-Names="Lucida Console" Height="500px" Width="500px" BackColor="#CCFFFF" Font-Size="Large"></asp:ListBox><br /><br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Select" CssClass="auto-style2" Height="38px" Width="228px" />   
        &nbsp;&nbsp;&nbsp;&nbsp;   
        <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="auto-style3" Height="38px" Width="227px" /> <br /> <br /> <br />  
    </div>
    </form>
</body>
</html>
