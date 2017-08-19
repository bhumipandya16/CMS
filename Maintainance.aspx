<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maintainance.aspx.cs" Inherits="WebApplication1.Maintainance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/styles/Styles.css" />
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="Home.aspx">Home</a></li>
                    <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-5">
                    <br />
                    <%--<br />
                <br />
                   <a href="Default.aspx">Home</a><br />
                   <a href="Default.aspx">Something</a><br />
                   <a href="Default.aspx">Something</a><br />--%>
                </div>

                <div class="col-sm-7">
                    <h1 class="auto-style1">MAINTENANCE</h1>
                    <ul>
                        <li>
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/UpdateUser.aspx" ForeColor="Silver" Font-Bold="True" Font-Size="Medium">Create/Update Users</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/UpdateProject.aspx" ForeColor="Silver" Font-Bold="True" Font-Size="Medium">Create/Update Project</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/UpdateArea.aspx" ForeColor="Silver" Font-Bold="True" Font-Size="Medium">Create/Update Area</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/UpdateProcessUnits.aspx" ForeColor="Silver" Font-Bold="True" Font-Size="Medium">Create/Update Process Units</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/UpdateSystems.aspx" ForeColor="Silver" Font-Bold="True" Font-Size="Medium">Update Systems</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AddPreCommActivities.aspx" ForeColor="Silver" Font-Bold="True" Font-Size="Medium">Add Forms for PreCommissioning Activities</asp:HyperLink></li>
                        <li>
                            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AddCommActivities.aspx" ForeColor="Silver" Font-Bold="True" Font-Size="Medium">Add Forms for Commissioning Activities</asp:HyperLink></li>
                    </ul>
                </div>
            </div>
        </div>

    </form>
</body>
</html>
