<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test-OP-0029.aspx.cs" Inherits="WebApplication1.Test_OP_0029" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
</head>
<body>
    <h2 class="h2">
        <asp:Label ID="Label49" runat="server" Text="OP_0029"></asp:Label>: Control loop check test record sheet- part 2</h2>
    <form id="form2" runat="server" style="border: 1px solid #ccc">
        <div class="container">
            <div class="align"> 
                <label><b>Project No.:</b></label>
                <%--<input type="text" id="ProjectNo" name="ProjectNo" required="required"/>--%>
                <asp:TextBox ID="ProjectNoTxtBox" runat="server" required="required"></asp:TextBox>

                <label><b>
                    <br />
                    Plant:</b></label>
                <%--<input type="text" id="Plant" name="Plant" required="required"/>--%>
                <asp:TextBox ID="PlantTxtBox" runat="server" required="required"></asp:TextBox>

                <label><b>
                    <br />
                    System:</b></label>
                <%--<input type="text" id="System" name="System" required="required"/>--%>
                <asp:TextBox ID="SystemTxtBox" runat="server" required="required"></asp:TextBox>

                <label><b>
                    <br />
                    Sub-System:</b></label>
                <%--<input type="text" id="Sub-System" name="Sub-System" required="required"/>--%>
                <asp:TextBox ID="SubSystemTxtBox" runat="server" required="required"></asp:TextBox>

                <label><b>
                    <br />
                    Equipment:</b></label>
                <%--<input type="text" id="Equipment" name="Equipment" required="required"/><br />--%>
                <asp:TextBox ID="EquipmentTxtBox" runat="server" required="required"></asp:TextBox>

                <label><b>
                    <br />
                    Tag Number:</b></label>
                <%--<input type="text" id="TagNumber" name="TagNumber" required="required"/><br />--%>
                <asp:TextBox ID="TagNumberTxtBox" runat="server" required="required"></asp:TextBox>

                <label><b>
                    <br />
                    Discipline:</b></label>
                <%--<input type="text" id="Discipline" name="Discipline" required="required"/>--%>
                <asp:TextBox ID="DisciplineTxtBox" runat="server" required="required"></asp:TextBox>

                <label><b>
                    <br />
                    Date:</b></label>
                <%--<input type="text" id="Date" name="Date" required="required"/><br />--%>
                <asp:TextBox ID="DateTxtBox" runat="server" required="required"></asp:TextBox>

                <label><b>
                    <br />
                    No. P&ID:</b></label>
                <%--<input type="text" id="P&ID" name="P&ID" required="required"/><br />--%>
                <asp:TextBox ID="PIDTxtBox" runat="server" required="required"></asp:TextBox>
            </div>
            <table class="table_width">
                <tr>
                    <th class="auto-style1">Description</th>
                    <th class="th"></th>
                    <%--<th class="th">Yes</th>
                        <th class="th">No</th>--%>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label18" runat="server" Text="Control loop installed per P&ID/contr.loop diag."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label19" runat="server" Text="Control loop functionality per design specs."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label1" runat="server" Text="Tag/Labeling"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label2" runat="server" Text="TRANSMITTER- Installed per installation detail"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label3" runat="server" Text="TRANSMITTER- Isolating valves correctly"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label4" runat="server" Text="TRANSMITTER- Location / accessibility"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label5" runat="server" Text="TRANSMITTER- Thermowell depth"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label6" runat="server" Text="TRANSMITTER- Orifice taps orientation"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label7" runat="server" Text="TRANSMITTER- Materials correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label8" runat="server" Text="TRANSMITTER- Orifice diameter ´d ´correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label9" runat="server" Text="TRANSMITTER- Orifice inspection report completed"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label10" runat="server" Text="IMPULSE CONNECTIONS- Installation correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label11" runat="server" Text="IMPULSE CONNECTIONS- Electrical / steam tracing correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label12" runat="server" Text="IMPULSE CONNECTIONS- Insulation installed correctly"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList14" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label13" runat="server" Text="IMPULSE CONNECTIONS- Fittings correct/ tight"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList15" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label14" runat="server" Text="AIR SUPPLIES- Visually inspected, blown clear and leak tested"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList16" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label15" runat="server" Text="AIR SUPPLIES- Correctly connected to utility lines"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList17" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label16" runat="server" Text="PNEUMATIC AND ELECTRONIC SIGNAL TRANSMITION LINES- Pneumatic visually inspect, blown clear and leak checked"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList18" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label17" runat="server" Text="PNEUMATIC AND ELECTRONIC SIGNAL TRANSMITION LINES- Electronic-polarity checked"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList19" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label20" runat="server" Text="PNEUMATIC AND ELECTRONIC SIGNAL TRANSMITION LINES- Electronic-continuity checked"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList20" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label21" runat="server" Text="PNEUMATIC AND ELECTRONIC SIGNAL TRANSMITION LINES- Electronic-wires/ cables labelled"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList21" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label22" runat="server" Text="PNEUMATIC AND ELECTRONIC SIGNAL TRANSMITION LINES- Electronic -network communications"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList22" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label23" runat="server" Text="FIELD INSTRUMENTS- Installation correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList23" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label24" runat="server" Text="FIELD INSTRUMENTS- Electrical/ Steam tracing correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList24" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label25" runat="server" Text="FIELD INSTRUMENTS- Location/ accessibility"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList25" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label26" runat="server" Text="FIELD INSTRUMENTS- Remote indicator viewable from control valve"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList26" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label27" runat="server" Text="FIELD INSTRUMENTS- Weather protected"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList27" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label28" runat="server" Text="FIELD INSTRUMENTS- Air supply correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList28" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label29" runat="server" Text="FIELD INSTRUMENTS- Hazardous area classification correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList29" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label30" runat="server" Text="PANEL OR OTHER INSTRUMENTS- Name plates on panel"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList30" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label31" runat="server" Text="PANEL OR OTHER INSTRUMENTS- Power supply correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList31" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label32" runat="server" Text="PANEL OR OTHER INSTRUMENTS- Regulator/Relief/other pressure set"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList32" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label33" runat="server" Text="PANEL OR OTHER INSTRUMENTS- Scales, charts, factors correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList33" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label34" runat="server" Text="PANEL OR OTHER INSTRUMENTS- Analyzer sample system correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList34" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label35" runat="server" Text="PANEL OR OTHER INSTRUMENTS- Air supply correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList35" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label36" runat="server" Text="AUTOMATED / CONTROL VALVES- Installation / flow direction correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList36" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label37" runat="server" Text="AUTOMATED / CONTROL VALVES- Location / accessibility"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList37" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label38" runat="server" Text="AUTOMATED / CONTROL VALVES- Solenoid operation"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList38" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label39" runat="server" Text="AUTOMATED / CONTROL VALVES- Type and size correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList39" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label40" runat="server" Text="AUTOMATED / CONTROL VALVES- Hand wheel and/ or bypass"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList40" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label41" runat="server" Text="GENERAL- Pneumatic visually inspect, blown clear and leak checked"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList41" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label42" runat="server" Text="GENERAL- Electronic-polarity checked"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList42" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label43" runat="server" Text="GENERAL- Electronic-continuity checked"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList43" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label44" runat="server" Text="GENERAL- Electronic-wires/ cables labelled"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList44" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label45" runat="server" Text="GENERAL- Electronic -network communications"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList45" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>

                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label46" runat="server" Text="CALIBRATION- Transmitter Check"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList46" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>0%</asp:ListItem>
                            <asp:ListItem>50%</asp:ListItem>
                            <asp:ListItem>100%</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label47" runat="server" Text="CALIBRATION- Control Output"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList47" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>0%</asp:ListItem>
                            <asp:ListItem>50%</asp:ListItem>
                            <asp:ListItem>100%</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label48" runat="server" Text="CALIBRATION- Value Failure"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList48" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>0%</asp:ListItem>
                            <asp:ListItem>50%</asp:ListItem>
                            <asp:ListItem>100%</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
            </table>
            <div class="table_width">
                <label><b>Comments:</b></label>
                <asp:TextBox ID="CommentTxtBox" runat="server" TextMode="MultiLine" Style="height: 200px"></asp:TextBox>
            </div>
            <table class="table_width">
                <tr>
                    <th class="th">Responsible</th>
                    <th class="th">IPC</th>
                    <th class="th">Commissioning</th>
                    <th class="th">QA/QC</th>
                    <th class="th">Lead Start-up</th>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <label><b>Company:</b></label></td>
                    <td>
                        <asp:TextBox ID="IPCCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="CommissioningCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="QAQCCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="LeadStartUpCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <label><b>Name:</b></label></td>
                    <td>
                        <asp:TextBox ID="IPCNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="CommissioningNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="QAQCNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="LeadStartUpNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <label><b>Sign:</b></label></td>
                    <td>
                        <asp:TextBox ID="IPCSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="CommissioningSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="QAQCSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="LeadStartUpSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <label><b>Date:</b></label></td>
                    <td>
                        <asp:TextBox ID="IPCDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="CommissioningDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="QAQCDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="LeadStartUpDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>

            </table>
            Status:<asp:RadioButtonList ID="RadioButtonList49" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>Submit</asp:ListItem>
                            <asp:ListItem>Cancel</asp:ListItem>
                        </asp:RadioButtonList>
            <div class="clearfix">
                <asp:Button class="cancelbtn" ID="SaveBtn" runat="server" Text="Cancel" Width="50%" Float="left" OnClick="CancelBtn_Click" />
                <asp:Button class="submitbtn" ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click" />
                <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>