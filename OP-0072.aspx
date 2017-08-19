<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP-0072.aspx.cs" Inherits="WebApplication1.OP_0072" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
    .auto-style14 {
        width: 181px;
    }
</style>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
</head>

<body>
    <h2 class="h2">
        <asp:Label ID="Label49" runat="server" Text="OP-0072"></asp:Label>: Hydrostatic test pre-commissioning checklist</h2>
    <form id="form1" runat="server" style="border:1px solid #ccc">
    <div class="container">
    <div class="align">
    <table class="table_width" border="1">
                    <tr>
                        <td class="auto-style14"><b>Project No.:</b></td>
                        <td>
                            <asp:TextBox ID="ProjectNoTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Project Name:</b></td>
                        <td>
                            <asp:TextBox ID="PlantTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Process Unit:</b></td>
                        <td>
                            <asp:TextBox ID="PUTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>System:</b></td>
                        <td>
                            <asp:TextBox ID="SystemTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Sub-System:</b></td>
                        <td>
                            <asp:TextBox ID="SubSystemTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Equipment:</b></td>
                        <td>
                            <asp:TextBox ID="EquipmentTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Tag Number:</b></td>
                        <td>
                            <asp:TextBox ID="TagNumberTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Discipline:</b></td>
                        <td>
                            <asp:TextBox ID="DisciplineTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Date:</b></td>
                        <td>
                            <asp:TextBox ID="DateTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>No. P&ID:</b></td>
                        <td>
                            <asp:TextBox ID="PIDTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Line:</b></td>
                        <td>
                            <asp:TextBox ID="LinesTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>From:</b></td>
                        <td>
                            <asp:TextBox ID="FromTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>To:</b></td>
                        <td>
                            <asp:TextBox ID="ToTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Diameter:</b></td>
                        <td>
                            <asp:TextBox ID="DiameterTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Wall thickness:</b></td>
                        <td>
                            <asp:TextBox ID="WallThickTxtbox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Operation Pressure:</b></td>
                        <td>
                            <asp:TextBox ID="OpPressureTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Test Pressure:</b></td>
                        <td>
                            <asp:TextBox ID="TestPressureTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Temp of fluid:</b></td>
                        <td>
                            <asp:TextBox ID="FluidTempTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Temp section:</b></td>
                        <td>
                            <asp:TextBox ID="SectionTempTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>
                    </table>
        </div>

        <table class="table_width" border="1">
            
                    <tr><th class="th">Time:</th>
                        <th class="th">Pressure</th>
                        <th class="th">Temperature</th>
                        <th class="th">Time:</th>
                        <th class="th">Pressure</th>
                        <th class="th">Temperature</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td><asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox></td>
                        <td>13</td>
                        <td><asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox4" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td><asp:TextBox ID="TextBox5" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox6" runat="server" Width="100%"></asp:TextBox></td>
                        <td>14</td>
                        <td><asp:TextBox ID="TextBox7" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox8" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td><asp:TextBox ID="TextBox9" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox10" runat="server" Width="100%"></asp:TextBox></td>
                        <td>15</td>
                        <td><asp:TextBox ID="TextBox11" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox12" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td><asp:TextBox ID="TextBox13" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox14" runat="server" Width="100%"></asp:TextBox></td>
                        <td>16</td>
                        <td><asp:TextBox ID="TextBox15" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox16" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td><asp:TextBox ID="TextBox17" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox18" runat="server" Width="100%"></asp:TextBox></td>
                        <td>17</td>
                        <td><asp:TextBox ID="TextBox19" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox20" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>6</td>
                        <td><asp:TextBox ID="TextBox21" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox22" runat="server" Width="100%"></asp:TextBox></td>
                        <td>18</td>
                        <td><asp:TextBox ID="TextBox23" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox24" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td><asp:TextBox ID="TextBox25" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox26" runat="server" Width="100%"></asp:TextBox></td>
                        <td>19</td>
                        <td><asp:TextBox ID="TextBox27" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox28" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>8</td>
                        <td><asp:TextBox ID="TextBox29" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox30" runat="server" Width="100%"></asp:TextBox></td>
                        <td>20</td>
                        <td><asp:TextBox ID="TextBox31" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox32" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>9</td>
                        <td><asp:TextBox ID="TextBox33" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox34" runat="server" Width="100%"></asp:TextBox></td>
                        <td>21</td>
                        <td><asp:TextBox ID="TextBox35" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox36" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>10</td>
                        <td><asp:TextBox ID="TextBox37" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox38" runat="server" Width="100%"></asp:TextBox></td>
                        <td>22</td>
                        <td><asp:TextBox ID="TextBox39" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox40" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>11</td>
                        <td><asp:TextBox ID="TextBox41" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox42" runat="server" Width="100%"></asp:TextBox></td>
                        <td>23</td>
                        <td><asp:TextBox ID="TextBox43" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox44" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>12</td>
                        <td><asp:TextBox ID="TextBox45" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox46" runat="server" Width="100%"></asp:TextBox></td>
                        <td>24</td>
                        <td><asp:TextBox ID="TextBox47" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox48" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
            </table>
            <table class="table_width" border="1">
                <tr><td>Acceptance criteria: Pressure changes due to temperature changes only.</td></tr>
            </table>
        <div class="table_width"><label><b>Comments:</b></label>
        <asp:TextBox ID="CommentTxtBox" runat="server" TextMode="MultiLine" style="height:200px"></asp:TextBox>
        <table class="table_width" border="1">
                    <tr><th class="th">Responsible</th>
                        <th class="th">IPC</th>
                        <th class="th">Commissioning</th>
                        <th class="th">QA/QC</th>
                        <th class="th">Lead Start-up</th>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Company:</b></label></td>
                        <td><asp:TextBox ID="IPCCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="CommissioningCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="QAQCCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="LeadStartUpCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Name:</b></label></td>
                        <td><asp:TextBox ID="IPCNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="CommissioningNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="QAQCNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="LeadStartUpNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Sign:</b></label></td>
                        <td><asp:TextBox ID="IPCSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="CommissioningSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="QAQCSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="LeadStartUpSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style5"><label><b>Date:</b></label></td>
                        <td><asp:TextBox ID="IPCDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="CommissioningDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="QAQCDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="LeadStartUpDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                </table>
        <div class="clearfix">
            Do you want to submit this form?
            <asp:RadioButtonList ID="SubmitRadioButtonList" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>True</asp:ListItem>
                <asp:ListItem>False</asp:ListItem>
            </asp:RadioButtonList>
        <asp:Button class="cancelbtn"  ID="SaveBtn" runat="server" Text="Save" Width="50%" Float="left"/>
        <asp:Button class="submitbtn"  ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click"/>
        <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
        </div>
        </div>
        </div> 
    </form>
</body>
</html>
