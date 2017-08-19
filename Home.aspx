<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

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
    <link rel="stylesheet" href="/styles/form.css" />
    <style type="text/css">
        .ali {
            align-content: center;
        }

        .hiddencol {
            display: none;
        }

        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 25%;
            text-align: center;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style2 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 20%;
            text-align: center;
            padding-left: 15px;
            padding-right: 15px;
        }

        .auto-style3 {
            left: 0px;
            top: 0px;
        }

        .btn {
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                    <li class="auto-style3"><a href="Logout.aspx">Logout</a></li>
                    <asp:Button ID="BtnMaintenance" runat="server" Text="Maintanance" OnClick="BtnMaintenance_Click" BackColor="#00028D" ForeColor="White" Height="58px" Width="167px" />
                </ul>
            </div>
        </nav>
        <%--<img id="image" alt="Error" class="auto-style19" src="/images/PLANTA DE GAS.jpg" />--%>

        <div class="container">
            <h1 class="text-center"><span class="label label-default">Welcome to Commissioning Management System</span></h1>
            <br />
            <h4 class="text-center">Welcome,
             <asp:Label ID="LblFirstName" runat="server" ForeColor="Silver" />
                &nbsp;<asp:Label ID="LblLastName" runat="server" ForeColor="Silver" />
            </h4>
            <br />
            <br />
        </div>


        <div class="auto-style1">
            <img src="\images\Oil Refinery.jpeg" class="img-rounded" alt="Oil Refinery" width="200" height="145" /><br />
            <asp:Button ID="OilRefineriesBtn" runat="server" Text="Oil Refineries" Width="200" Height="35" OnClick="OilRefineriesBtn_Click" BackColor="#0066FF" Font-Bold="True" CssClass="btn" />
        </div>
        <div class="auto-style1">
            <img src="\images\Petrochemical Complex.jpeg" class="img-rounded" alt="Petrochemical Complex" width="200" height="145" /><br />
            <asp:Button ID="PetrochemicalComplexBtn" runat="server" Text="Petrochemical Complex" Width="200" Height="35" BackColor="#0066FF" Font-Bold="True" OnClick="PetrochemicalComplexBtn_Click" CssClass="btn" />
        </div>
        <div class="auto-style1">
            <img src="\images\Offshore Platform.jpeg" class="img-rounded" alt="Offshore Platform" width="200" height="145" /><br />
            <asp:Button ID="OffshorePlatformBtn" runat="server" Text="Offshore Platform" Width="200" Height="35" BackColor="#0066FF" Font-Bold="True" OnClick="OffshorePlatformBtn_Click" CssClass="btn" />
        </div>
        <div class="auto-style1">
            <img src="\images\Central Processing Facility.jpeg" class="img-rounded" alt="Central Processing Facility" width="210" height="145" /><br />
            <asp:Button ID="CPFacilitiesBtn" runat="server" Text="Central Processing Facilities" Width="210" Height="35" BackColor="#0066FF" Font-Bold="True" OnClick="CPFacilitiesBtn_Click" CssClass="btn" />
        </div>

        <br />
        <br />
        <div>
            .
        </div>
        <div>
            .
        </div>
        <div>
            .
        </div>
        <div>
            <div class="auto-style2">
                <img src="\images\Gas Fractionation Facility.jpeg" class="img-rounded" alt="GAs Fractionation Facility" width="210" height="145" /><br />
                <asp:Button ID="GasFractionFacilitiesBtn" runat="server" Text="Gas Fractionation Facilities" Width="210" Height="35" BackColor="#0066FF" Font-Bold="True" OnClick="GasFractionFacilitiesBtn_Click" CssClass="btn" />
            </div>
            <div class="auto-style2">
                <img src="\images\Gas Pipeline.jpeg" class="img-rounded" alt="Gas Pipeline" width="200" height="145" /><br />
                <asp:Button ID="GasPipelineBtn" runat="server" Text="Gas Pipeline" Width="200" Height="35" BackColor="#0066FF" Font-Bold="True" OnClick="GasPipelineBtn_Click" CssClass="btn" />
            </div>
            <div class="auto-style2">
                <img src="\images\Gas Compression Plant.jpeg" class="img-rounded" alt="Gas Compression Plant" width="200" height="145" /><br />
                <asp:Button ID="GasCompressionPlantsBtn" runat="server" Text="Gas Compression Plants" Width="200" Height="35" BackColor="#0066FF" Font-Bold="True" OnClick="GasCompressionPlantsBtn_Click" CssClass="btn" />
            </div>
            <div class="auto-style2">
                <img src="\images\LNG Terminal.jpeg" class="img-rounded" alt="LNG Terminal" width="200" height="145" /><br />
                <asp:Button ID="LNGTerminalsBtn" runat="server" Text="LNG Terminals" Width="200" Height="35" BackColor="#0066FF" Font-Bold="True" OnClick="LNGTerminalsBtn_Click" CssClass="btn" />
            </div>
            <div class="auto-style2">
                <img src="\images\Upgrader.jpeg" class="img-rounded" alt="Upgrader" width="200" height="145" /><br />
                <asp:Button ID="UpgradersBtn" runat="server" Text="Upgraders" Width="200" Height="35" BackColor="#0066FF" Font-Bold="True" OnClick="UpgradersBtn_Click" CssClass="btn" />
            </div>
        </div>
        <br />
        <br />

        <%--<div class="text-center">--%>
        <%--<asp:Label class="login-header" runat="server" ID="lblRefinery" Text="PROJECT" BackColor="#00028D" Font-Size="1.2em" ForeColor="White"/>--%>
        <%--                    <asp:TextBox ID="txtSearch" runat="server" BorderStyle="Solid" BorderWidth="1px" Font-Size="0.95em" Width="400px" Height="58px" placeholder="enter project name..."/>--%>
        <%--                    <asp:Button ID="BtnSearch" runat="server" Text="Search" OnClick="BtnSearch_Click" BackColor="#00028D" ForeColor="White" Height="58px" Width="167px" /><br /><br />--%>
        <%--<asp:Button ID="BtnSearch" runat="server" Text="Projects" OnClick="BtnSearch_Click" BackColor="#00028D" ForeColor="White" Height="58px" Width="167px" /><br />
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Silver"></asp:Label>--%>

        <%--<div style="margin-left: auto; margin-right: auto;">
                        <asp:GridView ID="grdVwRefineryCollection" runat="server" AutoGenerateColumns="False" CellPadding="6" ForeColor="Black" OnRowCommand="grdVwRefineryCollection_Onrowcommand" RowDataBound="grdVwRefineryCollection_RowDataBound" HorizontalAlign="Center" Width="600px">
                            <Columns>

                                <asp:BoundField DataField="Refinery_id" HeaderText="Project_id" ItemStyle-CssClass="hiddencol" HeaderStyle-CssClass="hiddencol">
                                    <HeaderStyle CssClass="hiddencol"></HeaderStyle>
                                    <ItemStyle CssClass="hiddencol"></ItemStyle>
                                </asp:BoundField>

                                <asp:TemplateField HeaderText="Project Name" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("Name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Project Type" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Type" runat="server" Text='<%#Eval("Project_Type") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Owner of Company" HeaderStyle-HorizontalAlign="Center">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_Owner_Company" runat="server" Text='<%#Eval("Owner_Company") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Button ID="ViewBtn" runat="server" Text="View" CommandName="View" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>

                            <HeaderStyle BackColor="#28d" ForeColor="#ebebeb" HorizontalAlign="Center" />
                            <RowStyle BackColor="#ebebeb" ForeColor="Black" />
                        </asp:GridView>
                    </div>
                </div>--%>
        </div>
    </form>
</body>
</html>
