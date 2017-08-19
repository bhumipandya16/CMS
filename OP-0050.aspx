<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP-0050.aspx.cs" Inherits="WebApplication1.OP_0050" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
    <style>
         .auto-style14 {
            width: 134px;
        }
    </style>
</head>
<body>
   <h2 class="h2"><asp:Label ID="Label49" runat="server" Text="OP-0050"></asp:Label>: Punch list</h2>
    <form id="form1" runat="server" style="border: 1px solid #ccc">
        <div class="container">
            <div class="align">
                <table class="table_width" border="1">
                    <%--<tr>
                        <td class="auto-style14"><b>Project No.:</b></td>
                        <td>
                            <asp:TextBox ID="ProjectNoTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>--%>

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

                    <%--<tr>
                        <td class="auto-style14"><b>Equipment:</b></td>
                        <td>
                            <asp:TextBox ID="EquipmentTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>--%>

                    <%--<tr>
                        <td class="auto-style14"><b>Tag Number:</b></td>
                        <td>
                            <asp:TextBox ID="TagNumberTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>--%>

                    <%--<tr>
                        <td class="auto-style14"><b>Discipline:</b></td>
                        <td>
                            <asp:TextBox ID="DisciplineTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>--%>

                    <tr>
                        <td class="auto-style14"><b>Date:</b></td>
                        <td>
                            <asp:TextBox ID="DateTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <%--<tr>
                        <td class="auto-style14"><b>No. P&ID:</b></td>
                        <td>
                            <asp:TextBox ID="PIDTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>--%>
                    </table>
            </div>
            <table class="table_width" border="1">
                <tr>
                    <th class="th">Tag Number</th>
                    <th class="th">No. P&ID</th>
                    <th class="th">Description</th>
                    <th class="th">Category A/B/C</th>
                    <th class="th">Action on</th>
                    <th class="th">Completed by EPC</th>
                    <th class="th">Discipline lead</th>
                    <th class="th">Date</th>
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
                    <td>
                        <asp:TextBox ID="TextBox31" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox32" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox33" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox34" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox35" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox36" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox37" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox38" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox39" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox40" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox41" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox42" runat="server" Width="100%"></asp:TextBox></td>
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
                    <td>
                        <asp:TextBox ID="TextBox55" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox56" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox57" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox58" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox59" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox60" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox61" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox62" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox63" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox64" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="TextBox65" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TextBox66" runat="server" Width="100%"></asp:TextBox></td>
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
            </table>
            <table class="table_width" border="1">
                <tr>
                    <th class="th">Team members</th>
                    <th class="th">Lead</th>
                    <th class="th">TM1</th>
                    <th class="th">TM2</th>
                    <th class="th">TM3</th>
                    <th class="th">TM4</th>
                </tr>
                <tr>
                    <td>
                        <label><b>Company:</b></label></td>
                    <td>
                        <asp:TextBox ID="LeadCompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM1CompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM2CompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM3CompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM4CompanyTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <label><b>Name:</b></label></td>
                    <td>
                        <asp:TextBox ID="LeadNameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM1NameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM2NameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM3NameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM4NameTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <label><b>Sign:</b></label></td>
                    <td>
                        <asp:TextBox ID="LeadSignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM1SignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM2SignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM3SignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM4SignTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <label><b>Date:</b></label></td>
                    <td>
                        <asp:TextBox ID="LeadDateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM1DateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM2DateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM3DateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="TM4DateTxtBox" runat="server" Width="100%"></asp:TextBox></td>
                </tr>
            </table>
            <div class="clearfix">
                Do you want to submit this form?
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                    <asp:ListItem>True</asp:ListItem>
                    <asp:ListItem>False</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Button class="cancelbtn" ID="SaveBtn" runat="server" Text="Cancel" Width="50%" Float="left" OnClick="SaveBtn_Click" CausesValidation="false"/>
                <asp:Button class="submitbtn" ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click" />
                <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
            </div>
        </div>

    </form>
</body>
</html>
