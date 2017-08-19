<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProcessUnits.aspx.cs" Inherits="WebApplication1.ViewProcessUnits" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            margin-right: -15px;
            margin-left: -15px;
            background-color: #66FFFF;
        }

        .auto-style2 {
            text-decoration: underline;
        }

        .auto-style3 {
            /*position: relative;
            min-height: 1px;
            float: left;
            width: 33.33333333%;*/
            text-align: right;
            /*padding-left: 15px;
            padding-right: 15px;*/
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="PreComm.aspx">Pre-Commissioning</a></li>
                    <li><a href="Comm.aspx">Commissioning</a></li>
                    <li><a href="StartUp.aspx">Start-Up</a></li>
                    <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="auto-style1">
                <div class="col-sm-4">
                    <asp:TreeView ID="tvTables" runat="server" OnSelectedNodeChanged="TreeView1_SelectedNodeChanged" Font-Size="Medium" BackColor="#CCFFFF" ForeColor="Black">
                        <HoverNodeStyle ForeColor="White" />
                        <%--<LeafNodeStyle Font-Bold="True" />--%>
                        <NodeStyle Font-Bold="True" />
                        <ParentNodeStyle Font-Bold="True" />
                    </asp:TreeView>
                </div>
            </div>
            <div class="col-sm-8">
                <div class="text-center">
                    <h1>
                        <asp:Label class="label label-default" ID="ProjectNameLbl" runat="server" Text=""></asp:Label><br /><br />
                        <span class="label label-default">Progress of Process Units</span>
                    </h1>
                    <br />
                    <br />
                <asp:Chart ID="PU_Chart" runat="server" Width="700px" Height="500px" EnableViewState="True" BorderDashStyle="Solid" BackSecondaryColor="White"
                        BackGradientStyle="TopBottom" BorderWidth="2px" BackColor="211, 223, 240"
                        BorderColor="#1A3B69">
                        <Series>
                            <asp:Series Name="PU_Series" ChartType="Column"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="PU_ChartArea" BorderWidth="1" BorderColor="64, 64, 64, 64"
                                BorderDashStyle="Solid" BackSecondaryColor="White"
                                BackColor="64, 165, 191, 228"
                                ShadowColor="Transparent" BackGradientStyle="TopBottom">
                                <Area3DStyle Rotation="10" Perspective="10" Inclination="15"
                                    IsRightAngleAxes="False" WallWidth="0" IsClustered="False"></Area3DStyle>
                                <AxisY Title="No. of Process Units" Minimum="0" Maximum="50" Interval="10" LineColor="64, 64, 64, 64" TitleFont="Microsoft Sans Serif, 12pt">
                                    <LabelStyle Font="Trebuchet MS, 9.25pt, style=Bold" />
                                    <MajorGrid LineColor="64, 64, 64, 64" />
                                </AxisY>
                                <AxisX Title="Activities" LineColor="64, 64, 64, 64" TitleFont="Microsoft Sans Serif, 12pt">
                                    <LabelStyle Font="Trebuchet MS, 9.25pt, style=Bold" />
                                    <MajorGrid LineColor="64, 64, 64, 64" />
                                </AxisX>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="ProgressOfSystem" runat="server" Text="View Progress of Systems" OnClick="ProgressOfSystems_Click" class="btn btn-primary" BackColor="Red" Font-Bold="True" ForeColor="Black" />
                    <asp:Button ID="SystemActivities" runat="server" Text="View Progress of Systems Activities" class="btn btn-primary" BackColor="Red" Font-Bold="True" ForeColor="Black" OnClick="SystemActivities_Click" />
                </div>
            </div>
        </div>

    </form>
</body>
</html>
