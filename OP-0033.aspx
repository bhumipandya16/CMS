<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP-0033.aspx.cs" Inherits="WebApplication1.CompressorsAlignmentCold_OP0033" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
</head>
<style>
    .auto-style14 {
        background-color: lightgray;
        width: 1008px;
    }

    .auto-style15 {
        width: 1008px;
    }

    .auto-style16 {
        width: 132px;
    }
</style>
<body>
    <h2 class="h2"><asp:Label ID="Label49" runat="server" Text="OP-0033"></asp:Label>: Pre-commissioning check list for centrifugal compressors</h2>
    <form id="form1" runat="server" style="border: 1px solid #ccc">
        <div class="container">
            <div class="align">
                <table class="table_width" border="1">
                    <tr>
                        <td class="auto-style16"><b>Project No.:</b></td>
                        <td>
                            <asp:TextBox ID="ProjectNoTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style16"><b>Plant:</b></td>
                        <td>
                            <asp:TextBox ID="PlantTxtBox" runat="server" required="required" Width="100%" TextMode="Number"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style16"><b>System:</b></td>
                        <td>
                            <asp:TextBox ID="SystemTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style16"><b>Sub-System:</b></td>
                        <td>
                            <asp:TextBox ID="SubSystemTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style16"><b>Equipment:</b></td>
                        <td>
                            <asp:TextBox ID="EquipmentTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style16"><b>Tag Number:</b></td>
                        <td>
                            <asp:TextBox ID="TagNumberTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style16"><b>Discipline:</b></td>
                        <td>
                            <asp:TextBox ID="DisciplineTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style16"><b>Date:</b></td>
                        <td>
                            <asp:TextBox ID="DateTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style16"><b>No. P&ID:</b></td>
                        <td>
                            <asp:TextBox ID="PIDTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <table class="table_width" border="1">
                <tr>
                    <th class="auto-style14">Description</th>
                    <th class="th"></th>
                    <%--<th class="th">NC</th>
                        <th class="th">NA</th>
                        <th class="th">Comments</th>--%>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label18" runat="server" Text="Check that the nameplate details are complete and correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label19" runat="server" Text="Check for mechanical damages"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label20" runat="server" Text="Check the compressor and the auxillaries for cleanliness" required="required"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label21" runat="server" Text="Check the location, elevation, orientation and that the compressor is level according to design specifications"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label22" runat="server" Text="Check that the compressor holding down arrangements are correct"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label23" runat="server" Text="Check that the compressor, the motor/turbine and the clamping base are positioned correctly and securely"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label24" runat="server" Text="Check that all the auxiliary items have been supplied and that they have been correctly installed"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label25" runat="server" Text="Check that the suction strainers have been installed"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label1" runat="server" Text="Check that the preservation was performed according to established procedures"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label2" runat="server" Text="Check that the connection and grounding confirms to the specifications"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label3" runat="server" Text="Check that the suction, discharge and utility pipe-supports are in accordance with the design drawings"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label4" runat="server" Text="Check that with unbolted flanges on the suction and discharge piping, that the corresponding pipe flanges on the package align with them correctly"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style15">
                        <asp:Label ID="Label5" runat="server" Text="Check the painting visually for damage"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
            </table>
            <table class="table_width" border="1">
                <tr>
                    <td class="th">
                        <asp:Label ID="Label36" runat="server" Text="Reference for results"></asp:Label></td>
                    <td class="th">C</td>
                    <td class="th">Confirm</td>
                    <td class="th">
                        <label>NC</label></td>
                    <td class="th">
                        <label>Non-Confirm</label></td>
                    <td class="th">
                        <label>NA</label></td>
                    <td class="th">
                        <label>Not-Applicable</label></td>
                </tr>
            </table>
            <div class="table_width">
                <label><b>Comments:</b></label>
                <asp:TextBox ID="CommentTxtBox" runat="server" Style="height: 200px" TextMode="MultiLine"></asp:TextBox>
                <table class="table_width" border="1">
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
                <div class="clearfix">
                    Do you want to submit this form?
            <asp:RadioButtonList ID="Submit_RadioButtonList" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>True</asp:ListItem>
                <asp:ListItem>False</asp:ListItem>
            </asp:RadioButtonList>
                    <asp:Button class="cancelbtn" ID="CancelBtn" runat="server" Text="Save" Width="50%" Float="left" OnClick="CancelBtn_Click"/>
                    <asp:Button class="submitbtn" ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click" />
                    <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
