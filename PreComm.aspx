<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreComm.aspx.cs" Inherits="WebApplication1.PreComm" %>

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
        <div class="container-fluid">
        <div class="col-sm-4">
        </div>
            <div class="col-sm-8">
        <strong>
        <asp:Label ID="Label1" runat="server" Text="List of Pre-Commissioning Activities" CssClass="auto-style1"></asp:Label></strong><br /><br />
        <table border="1">
            <tr><td><asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0001.aspx">OP-0001: Mechanical Completion Certificate</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0002.aspx">OP-0002: Control for water flushing</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0010.aspx">OP-0010: Pre-commissioning checklist for lube oil system</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink4" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0014.aspx">OP-0014: Walkdown checklist for system-subsystem, PSSR</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink5" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0028.aspx">OP-0028: Control loop test, part-1</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink6" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0029.aspx">OP-0029: Control loop test, part-2</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink7" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0031.aspx">OP-0031: Pre-commissioning checklist for centrifugal pumps</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink8" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0033.aspx">OP-0033: Pre-commissioning checklist for centrifugal compressors</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink9" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0034.aspx">OP-0034: Air drying of systems and lines</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink10" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0050.aspx">OP-0050: Punch list</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink11" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0051.aspx">OP-0051: Control for air blowing</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink12" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0052.aspx">OP-0052: Control for steam blowing</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink13" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0053.aspx">OP-0053: Control for chemical cleaning</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink14" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0054.aspx">OP-0054: Checklist for alignment test of rotative equipments</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink15" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0055.aspx">OP-0055: Pressure vessel precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink16" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0056.aspx">OP-0056: Storage tank precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink17" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0057.aspx">OP-0057: Heat exchanger precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink18" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0058.aspx">OP-0058: Fin fan cooler precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink19" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0059.aspx">OP-0059: Strainer filters precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink20" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0060.aspx">OP-0060: Heater precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink21" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0061.aspx">OP-0061: Preservation precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink22" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0062.aspx">OP-0062: Instrument calibration checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink23" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0063.aspx">OP-0063: Electrical generator cooler precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink24" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0064.aspx">OP-0064: Power transformer precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink25" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0065.aspx">OP-0065: High voltage switchboard precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink26" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0066.aspx">OP-0066: Low voltage switchboard precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink27" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0067.aspx">OP-0067: Bus duct precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink28" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0068.aspx">OP-0068: High voltage cables precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink29" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0069.aspx">OP-0069: Low voltage cables precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink30" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0070.aspx">OP-0070: Multicore instrument cables precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink31" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0071.aspx">OP-0071: High voltage motor precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink32" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0072.aspx">OP-0072: Hydrostatic test precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink33" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0073.aspx">OP-0073: Control for mechanical cleaning</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink34" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0074.aspx">OP-0074: Light precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink35" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0075.aspx">OP-0075: Dry out refractory precommissioning checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink36" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0076.aspx">OP-0076: Factory accepatnce test checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink37" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0077.aspx">OP-0077: Site acceptance test checklist</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink38" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0078.aspx">OP-0078: Non destructive test for welding</asp:HyperLink></td></tr>
            <tr><td><asp:HyperLink ID="HyperLink39" runat="server" Font-Size="Large" ForeColor="#66FFFF" NavigateUrl="~/OP-0079.aspx">OP-0079: Ignition test of burners</asp:HyperLink></td></tr>
        </table>
                </div>
            <%--<div class="col-sm-3">
                </div>--%>
        </div>
    </form>
</body>
</html>
