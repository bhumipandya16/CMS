<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP-0083.aspx.cs" Inherits="WebApplication1.OP_0083" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
    <style type="text/css">
        .auto-style14 {
            width: 234px;
        }
    </style>
</head>
<body>
    <h2 class="h2">
        <asp:Image ID="Image1" src="\images\sgvs.jpg" runat="server" Height="56px" /><br />
        <asp:Label ID="FormLbl" runat="server" Text="OP-0083"></asp:Label>: N2 purging test commissioning checklist</h2>
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
<%--                            <asp:TextBox ID="PlantTxtBox" runat="server" required="required" Width="100%"></asp:TextBox>--%>
                             <asp:DropDownList ID="ProjectNameDdl" runat="server" Width="100%" OnSelectedIndexChanged="ProjectNameDdl_SelectedIndexChanged" AutoPostBack="true">
                                    <asp:ListItem Text="--Select Project--" Value=""></asp:ListItem>
                                </asp:DropDownList><br /></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Process Unit:</b></td>
                        <td>
                            <%--<asp:TextBox ID="PUTxtBox" runat="server" required="required" Width="100%"></asp:TextBox>--%>
                            <asp:DropDownList ID="PUNameDdl" Width="100%" runat="server" OnSelectedIndexChanged="PUNameDdl_SelectedIndexChanged" AutoPostBack="true" Enabled="false">
                                    <asp:ListItem Text="--Select Process Unit--" Value=""></asp:ListItem>
                                </asp:DropDownList><br />
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>System:</b></td>
                        <td>
<%--                            <asp:TextBox ID="SystemTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>--%>
                            <asp:DropDownList ID="SystemDdl" runat="server" Width="100%" AutoPostBack="true" Enabled="false">
                                   <asp:ListItem Text="--Select System--" Value=""></asp:ListItem>
                               </asp:DropDownList><br /></td>
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
                        <td class="auto-style14"><b>Purging Fluid:</b></td>
                        <td>
                            <asp:TextBox ID="PurgingFluidTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td class="auto-style14"><b>Volume used:</b></td>
                        <td>
                            <asp:TextBox ID="VolumeTxtBox" runat="server" required="required" Width="100%"></asp:TextBox></td>
                    </tr>
                </table>
            </div>
            <br />

            <table class="table_width" border="1">
                <tr>
                    <th class="th">Location</th>
                    <th class="th">N2 Content</th>
                    <th class="th">Location</th>
                    <th class="th">N2 Content</th>
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
            <table class="table_width" border="1">
                <tr>
                    <td>N2 content accepted:</td>
                </tr>
            </table>
            <div class="table_width">
                <label><b>Comments:</b></label>
                <asp:TextBox ID="CommentTxtBox" runat="server" TextMode="MultiLine" Style="height: 200px"></asp:TextBox>
                <table class="table_width" border="1">
                    <tr>
                        <th class="th">Responsible</th>
                        <th class="th">EPC</th>
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
                Do you want to submit this form?
                <asp:RadioButtonList ID="SubmitRadioButtonList" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                    <asp:ListItem>True</asp:ListItem>
                    <asp:ListItem>False</asp:ListItem>
                </asp:RadioButtonList><br />
                <asp:Button ID="printButton" runat="server" Text="Print this form" OnClientClick="javascript:window.print();" /><br />
                <div class="clearfix">
                    <asp:Button class="cancelbtn" ID="SaveBtn" runat="server" Text="Exit" Width="50%" Float="left" OnClick="SaveBtn_Click" />
                    <asp:Button class="submitbtn" ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click" />
                    <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
