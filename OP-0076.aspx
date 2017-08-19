<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP-0076.aspx.cs" Inherits="WebApplication1.OP_0076" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
    <style type="text/css">
        .auto-style14 {
            background-color: lightgray;
            text-align: center;
        }
    </style>
</head>
<body>
    <h2 class="h2">
        <asp:Label ID="Label49" runat="server" Text="OP-0076"></asp:Label>: Factory Acceptance Test- FAT checklist</h2>
    <form id="form1" runat="server" style="border: 1px solid #ccc">
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

                <label><b>
                    <br />
                    Manufacturer:</b></label>
                <%--<input type="text" id="P&ID" name="P&ID" required="required"/><br />--%>
                <asp:TextBox ID="ManufacturerTxtBox" runat="server" required="required"></asp:TextBox>
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
                        <asp:Label ID="Label18" runat="server" Text="Is the FAT planning performed?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label19" runat="server" Text="Are all test cases described?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label20" runat="server" Text="Are corrective actions in case of failures considered?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label21" runat="server" Text="Are the procedures to carry out the FAT well defined and documented in a proper way?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label22" runat="server" Text="Are the acceptance test criteria identified?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label23" runat="server" Text="Are the Safety, Health and Environmental  requirements fulfilled?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label24" runat="server" Text="Are all the safety instrumented functions identified?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label25" runat="server" Text="Have skills and competence resources been considered of the involved personnel?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label1" runat="server" Text="Are all modes of operation identified?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label2" runat="server" Text="Are the safe states identified?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label3" runat="server" Text="Are inputs, trip points and normal operating range identified?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label4" runat="server" Text="Are all equipment installed according to manufacturer specifications?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label5" runat="server" Text="Are relationships between inputs and outputs tested and behave according to safety requirements specified?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label6" runat="server" Text="Are computations by the safety instruments specifications performed correct?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList14" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label7" runat="server" Text="Is the response time tested and according to the safety requirements specifications? "></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList15" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label8" runat="server" Text="Are reset functions tested and behave according to the safety requirements specifications?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList16" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label9" runat="server" Text="Are operator functions tested and behave according to the safety requirements specifications?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList17" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label10" runat="server" Text="Are alarms tested and behave according to safety requirements specifications?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList18" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label11" runat="server" Text="Is degrade mode of operation tested?  "></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList19" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label12" runat="server" Text="Are bypass functions working properly and according to the safety requirements specifications?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList20" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label13" runat="server" Text="Is manual shutdown working properly and according to safety requirements specifications?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList21" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <asp:Label ID="Label14" runat="server" Text="Are diagnostic alarm functions working properly and according to the safety requirements specifications?"></asp:Label></td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList22" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                </tr>
                
            </table>
            <table class="table_width">
                <tr>
                    <td class="th">
                        <asp:Label ID="Label36" runat="server" Text="Reference for results:"></asp:Label></td>
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
            <table class="table_width">
                <tr>
                    <td class="auto-style14">Reference list of instruments used during the FAT</td>
                </tr>
            </table>
            <table class="table_width">
                <tr>
                    <th class="th">Instrument</th>
                    <th class="th">Calibration certificate No.</th>
                    <th class="th">Last calibration date</th>
                    <th class="th">Calibration expire date</th>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox9" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox10" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox11" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox13" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox14" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox15" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox16" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox17" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox18" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox19" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox20" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox21" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox22" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox23" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox24" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
            </table>
            <div class="table_width">
                <label><b>Comments:</b></label>
                <asp:TextBox ID="CommentTxtBox" runat="server" TextMode="MultiLine" Style="height: 200px"></asp:TextBox>
            </div>
            <table class="table_width">
                <tr>
                    <th class="th">Responsible</th>
                    <th class="th">Client</th>
                    <th class="th">Manufacturer rep.</th>
                    </tr>
                <tr>
                    <td class="auto-style5">
                        <label><b>Company:</b></label></td>
                    <td>
                        <asp:TextBox ID="ClientCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="ManufacturerCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <label><b>Name:</b></label></td>
                    <td>
                        <asp:TextBox ID="ClientNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="ManufacturerNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <label><b>Sign:</b></label></td>
                    <td>
                        <asp:TextBox ID="ClientSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="ManufacturerSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <label><b>Date:</b></label></td>
                    <td>
                        <asp:TextBox ID="ClientDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="ManufacturerDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>

            </table>
           
            <div class="clearfix">
                <asp:Button class="cancelbtn" ID="SaveBtn" runat="server" Text="Save" Width="50%" Float="left" />
                <asp:Button class="submitbtn" ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click"/>
                <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
