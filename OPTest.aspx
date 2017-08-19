<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OPTest.aspx.cs" Inherits="WebApplication1.OPTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style type="text/css">
body {
  background-image: url('images\IntroImage.jpg');
  background-repeat: no-repeat;
    background-attachment: fixed;
    background-position: center; 
}
</style>
<body>
    <form id="form2" runat="server">
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <asp:Button ID="Button6" runat="server" Text="Button" OnClick="Button6_Click" />
        <asp:Chart ID="Chart1" runat="server" BackColor="128, 64, 0" BackGradientStyle="LeftRight"  
        BorderlineWidth="0" Height="340px" Palette="None" PaletteCustomColors="64, 0, 0"  
        Width="360px" BorderlineColor="192, 64, 0">  
        <Series>  
            <asp:Series Name="Series1"  YValuesPerPoint="6">  
            </asp:Series>  
        </Series>  
        <ChartAreas>  
            <asp:ChartArea Name="ChartArea1">  
            </asp:ChartArea>  
        </ChartAreas>  
    </asp:Chart>  

        Number of Systems Pre-Commisssioned<br />
                <br />
                Plant: <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                Process Unit Name: <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox><br />
                
                <asp:Button ID="Button7" runat="server" Text="View all" OnClick="Button7_Click" Width="64px" class="btn btn-primary"/><br />
                <asp:Chart ID="Chart6" runat="server" Width="500px" Height="300px" EnableViewState="True">
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
                        <asp:ChartArea Name="ChartArea6" BorderWidth="1">
                            <AxisX Title="Process Units"> </AxisX>
                            <AxisY Title="No. of Systems" Minimum="0" Maximum="20" Interval="5"> </AxisY>
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
    </form>
</body>
</html>
