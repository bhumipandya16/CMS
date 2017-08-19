<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProgressOfSystems1.aspx.cs" Inherits="WebApplication1.ProgressOfSystems1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
            <div class="text-center">
                Project Name:
                                <asp:DropDownList ID="Project_NameDdl" runat="server" OnSelectedIndexChanged="Project_NameDdl_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Text="--Select Project--" Value=""></asp:ListItem>
                                </asp:DropDownList><br />
                <br />
                Process Unit Name:
                                <asp:DropDownList ID="PUDdl" runat="server" OnSelectedIndexChanged="PUDdl_SelectedIndexChanged" AutoPostBack="true" Enabled="false">
                                    <asp:ListItem Text="--Select Process Unit--" Value=""></asp:ListItem>
                                </asp:DropDownList><br />
                <br />
                System Name:
                               <asp:DropDownList ID="SystemDdl" runat="server" AutoPostBack="true" Enabled="false">
                                   <asp:ListItem Text="--Select System--" Value=""></asp:ListItem>
                               </asp:DropDownList><br />
                <br />

                <div class="col-sm-6">
                    <h3><span class="label label-default"><strong>% Pre-Commisssioning of System</strong></span></h3>
                    <br />
                    <asp:Button ID="PreCommSystem_Btn" runat="server" Text="View Chart" Width="128px" margin="0 auto" class="btn btn-primary" OnClick="PreCommSystem_Btn_Click" /><br />
                    <br />
                    <br />
                    <asp:Chart ID="PreCommSystem_Chart" runat="server" Width="500px" Height="300px" EnableViewState="True">
                        <Series>
                            <asp:Series Name="PreCommSystem_Series" ChartType="Column"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="PreCommSystem_ChartArea" BorderWidth="1">
                                <AxisY Title="Percentage of PreCommissioning (%)" Minimum="0" Maximum="100" Interval="20"></AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>

                    <br />
                        <br />
                        <h3><span class="label label-default"><strong>Number of Systems Pre-Commisssioned</strong></span></h3><br />
                    
                    <asp:Button ID="NoPreCommSystem_Btn" runat="server" Text="View single process unit" Width="180px" class="btn btn-primary" OnClick="NoPreCommSystem_Btn_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="ViewAllPreCommSystem_Btn" runat="server" Text="View all" Width="98px" class="btn btn-primary" OnClick="ViewAllPreCommSystem_Btn_Click" /><br /><br /><br />
                    <asp:Chart ID="NoOfPreCommSystemsChart" runat="server" Width="500px" Height="300px" EnableViewState="True">
                        <Legends>
                            <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />
                        </Legends>
                        <Series>
                            <asp:Series Name="Completed" ChartType="Column"></asp:Series>
                        </Series>
                        <Series>
                            <asp:Series Name="Total" ChartType="Column"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="NoOfPreCommSystemsChartArea" BorderWidth="1">
                                <AxisX Title="Process Units"></AxisX>
                                <AxisY Title="No. of Systems" Minimum="0" Maximum="20" Interval="5"></AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </div>
                <%--</div>--%>
                <div class="col-sm-6">
                    <%--<div class="text-center">--%>
                    <h3><span class="label label-default"><strong>% Commisssioning of System</strong></span></h3>
                    <br />

                    <%--Project Name:
                                <asp:DropDownList ID="Project_Name2Ddl" runat="server" OnSelectedIndexChanged="Project_Name2Ddl_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Text="--Select Project--" Value=""></asp:ListItem>
                                </asp:DropDownList><br />
                    <br />
                    Process Unit Name:
                                <asp:DropDownList ID="PU2Ddl" runat="server" OnSelectedIndexChanged="PU2Ddl_SelectedIndexChanged" AutoPostBack="true" Enabled="false">
                                    <asp:ListItem Text="--Select Process Unit--" Value=""></asp:ListItem>
                                </asp:DropDownList><br />
                    <br />
                    System Name:
                               <asp:DropDownList ID="System2Ddl" runat="server" AutoPostBack="true" Enabled="false">
                                   <asp:ListItem Text="--Select System--" Value=""></asp:ListItem>
                               </asp:DropDownList><br />
                    <br />--%>
                    <asp:Button ID="CommSystem_Btn" runat="server" Text="View Chart" Width="128px" class="btn btn-primary" OnClick="CommSystem_Btn_Click" /><br />
                    <br />
                    <br />
                    <asp:Chart ID="CommSystem_Chart" runat="server" Width="500px" Height="300px" EnableViewState="True">
                        <Series>
                            <asp:Series Name="CommSystem_Series" ChartType="StackedColumn"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="CommSystem_ChartArea" BorderWidth="1">
                                <AxisY Title="Percentage of Commissioning (%)" Minimum="0" Maximum="100" Interval="20"></AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>

                    <br />
                        <br />
                        <h3><span class="label label-default"><strong>Number of Systems Commissioned</strong></span></h3><br />
                    
                    <asp:Button ID="NoCommSystem_Btn" runat="server" Text="View single process unit" Width="180px" class="btn btn-primary" OnClick="NoCommSystem_Btn_Click" />
                    &nbsp;&nbsp;
                    <asp:Button ID="ViewAllCommSystem_Btn" runat="server" Text="View all" Width="98px" class="btn btn-primary" OnClick="ViewAllCommSystem_Btn_Click" /><br /><br /><br />
                    <asp:Chart ID="NoOfCommSystemsChart" runat="server" Width="500px" Height="300px" EnableViewState="True">
                        <Legends>
                            <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default" LegendStyle="Row" />
                        </Legends>
                        <Series>
                            <asp:Series Name="Completed" ChartType="Column"></asp:Series>
                        </Series>
                        <Series>
                            <asp:Series Name="Total" ChartType="Column"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="NoOfCommSystemsChartArea" BorderWidth="1">
                                <AxisX Title="Process Units"></AxisX>
                                <AxisY Title="No. of Systems" Minimum="0" Maximum="20" Interval="5"></AxisY>
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
