<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP-0064.aspx.cs" Inherits="WebApplication1.OP_0064" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
</head>
<style>
    .auto-style14 {
        width: 171px;
    }
</style>
<body>
    <h2 class="h2">
        <asp:Label ID="Label49" runat="server" Text="OP-0064"></asp:Label>: Power transformer pre-commissioning checklist</h2>
    <form id="form2" runat="server" style="border: 1px solid #ccc">
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
                    </table>

            </div>
            <table class="table_width" border="1">
                <tr>
                    <th class="auto-style1">Description</th>
                    <th class="th"></th>
                    <%--<th class="th">C</th>
                        <th class="th">NC</th>
                        <th class="th">NA</th>--%>
                    <%--                        <th class="th">Comments</th>--%>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="Label18" runat="server" Text="Check equipment is de-energized and safe. "></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label19" runat="server" Text="Check transformer data conformity against data sheet / project specification (rating plate)"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label20" runat="server" Text="Check general mechanical arrangement."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label21" runat="server" Text="Check transformer installation against drawings."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label1" runat="server" Text="Check dielectric levels are correct with no leak."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label2" runat="server" Text="Check retention pan is correctly made and clean."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label3" runat="server" Text="Check transformer access is properly protected and warning labels and safety instructions are adequately posted."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label4" runat="server" Text="Check primary terminations are clean, undamaged and correctly identified."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label5" runat="server" Text="Check secondary terminations are clean, undamaged and correctly identified."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label6" runat="server" Text="Check all termination enclosures have correct gaskets and fixing bolts."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label7" runat="server" Text="Check accessories according to data sheet are correctly installed and undamaged. "></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label8" runat="server" Text="Check all cables are identified and supported correctly."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label9" runat="server" Text="Check tap changer selector is correctly fitted and locked in the mid position, where applicable."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label10" runat="server" Text="Check on load tap changer control panel to wiring diagram, where applicable. "></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList14" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label11" runat="server" Text="Check all accessories for proper installation."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList15" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label12" runat="server" Text="Check relief valve has been unlocked."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList16" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label13" runat="server" Text="Check mechanical interlock of terminals."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList17" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label14" runat="server" Text="Check cable connections against drawings."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList18" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label15" runat="server" Text="Check coating integrity."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList19" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label16" runat="server" Text="Check earthing and bonding against drawings."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList20" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label17" runat="server" Text="Check supplier documentation and drawings."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList21" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label22" runat="server" Text="Produce a defects list for inclusion in the issued punch list."></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList22" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
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
                <asp:TextBox ID="CommentTxtBox" runat="server" TextMode="MultiLine" Style="height: 200px"></asp:TextBox>
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
            <asp:RadioButtonList ID="SubmitRadioButtonList" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem>True</asp:ListItem>
                <asp:ListItem>False</asp:ListItem>
            </asp:RadioButtonList>
                    <asp:Button class="cancelbtn" ID="SaveBtn" runat="server" Text="Save" Width="50%" Float="left" />
                    <asp:Button class="submitbtn" ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click" />
                    <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
