<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP-0078.aspx.cs" Inherits="WebApplication1.OP_0078" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
</head>
<body>
    <h2 class="h2">
        <asp:Label ID="Label49" runat="server" Text="OP-0078"></asp:Label>: Nondestructive test for welding</h2>
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

            </div>
            <label><b>Type of test method used:</b></label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>Visual</asp:ListItem>
                <asp:ListItem>Radiographic</asp:ListItem>
                <asp:ListItem>Magnetic Particle</asp:ListItem>
                <asp:ListItem>Liquid Penetrant</asp:ListItem>
                <asp:ListItem>Ultrasonic</asp:ListItem>
            </asp:CheckBoxList>

            <table class="table_width">
                <tr>
                    <th class="th">No. P&ID</th>
                    <th class="th">Line No.</th>
                    <th class="th">From</th>
                    <th class="th">To</th>
                    <th class="th">Inspection results</th>
                    <th class="th">Sign/Date</th>
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
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Width="100%"></asp:TextBox></td>
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
                    <td>
                        <asp:TextBox ID="TextBox17" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox18" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox19" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox20" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox21" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox22" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox23" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox24" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox25" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox26" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox27" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox28" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox29" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox30" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox31" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox32" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox33" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox34" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox35" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox36" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox37" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox38" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox39" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox40" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox41" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox42" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox43" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox44" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox45" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox46" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox47" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox48" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox49" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox50" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox51" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox52" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox53" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox54" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox55" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox56" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox57" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox58" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox59" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox60" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox61" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox62" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox63" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox64" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox65" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox66" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox67" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox68" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox69" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox70" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox71" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox72" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox73" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox74" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox75" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox76" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox77" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox78" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox79" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox80" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox81" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox82" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox83" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox84" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
            </table>
            <table>
                <tr>
                    <td>Acceptance criteria: According to the method used.</td>
                </tr>
            </table>
            
            <table class="table_width">
                <tr>
                    <td>
                        <asp:Label ID="Label36" runat="server" Text="Reference for results:"></asp:Label></td>
                    <td>C</td>
                    <td>Confirm</td>
                    <td>
                        <label>NC</label></td>
                    <td>
                        <label>Non-Confirm</label></td>
                    <td>
                        <label>NA</label></td>
                    <td>
                        <label>Not-Applicable</label></td>
                </tr>
            </table>
            <div class="table_width">
                <label><b>Comments:</b></label>
                <asp:TextBox ID="CommentTxtBox" runat="server" TextMode="MultiLine" Style="height: 200px"></asp:TextBox>
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
                <div class="clearfix">
                    <asp:Button class="cancelbtn" ID="SaveBtn" runat="server" Text="Save" Width="50%" Float="left" />
                    <asp:Button class="submitbtn" ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click" />
                    <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
