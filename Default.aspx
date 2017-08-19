<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.WebForm1" %>

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
    <style type="text/css">
        .auto-style2 {
            display: block;
            /*max-width: 100%;*/
            height: 400px;
            width: 100%;
            border-radius: 8px
        }
        /*body {
            background-image: url('images\IntroImage.jpg');
            background-repeat: no-repeat;
            background-size: 100%;
            background-attachment: fixed;
            background-position: center;
            width: 100%;
            height: 100%;
         }*/
    </style>
</head>
<body>     
           <div class="container-fluid">
                    <h1 class="text-center">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/sgvs.jpg" />
                        <%--<asp:Label ID="Label1" runat="server" img="C:\Users\PC20\Desktop\VS Projects\APP\WebApplication1\WebApplication1\images\oil projects usa 3 bmp-1.bmp"></asp:Label>--%>
                        <%--<span class="label label-default">OIL PROJECTS USA</span>--%>
                    </h1>
        </div>
          <%--<img alt="Error" class="auto-style2" src="\images\KAR09010 - 1.JPG" />--%>
    <img alt="Error" class="auto-style2" src="images\IntroImage.jpg" />

        <div class="login">
            <h2 class="login-header">Log in</h2>  
                 
            <form class="login-container" runat="server">
                <asp:TextBox ID="UserNameTxtbox" runat="server" placeholder="UserName"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ErrorMessage="Username is required" ControlToValidate="UserNameTxtbox">*</asp:RequiredFieldValidator>
               
                <asp:TextBox ID="PasswordTxtbox" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ErrorMessage="Password is required" ControlToValidate="PasswordTxtbox">*</asp:RequiredFieldValidator>
               <asp:Button ID="LoginBtn" runat="server" OnClick="LoginBtn_Click" Text="Login"/>
               <asp:Label ID="Label2" runat="server"></asp:Label>
           </form>
       </div>
</body>
</html>
