<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP-0032-1.aspx.cs" Inherits="WebApplication1.CompressorsAlignmentHot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
</head>
    <style>
    
        .auto-style6 {
            width: 444px;
        }
        .auto-style7 {
            width: 93px;
        }
        .auto-style8 {
            background-color: lightgray;
            width: 93px;
        }
        .auto-style9 {
            background-color: lightgray;
            width: 444px;
        }
        .auto-style12 {
            background-color: lightgray;
            height: 27px;
        }
        .auto-style13 {
            width: 538px;
        }
        .auto-style14 {
            width: 134px;
        }
        </style>
<body>
    <h2 class="h2">
        <asp:Image ID="Image1" src="\images\sgvs.jpg" runat="server" Height="56px" /><br />
        <asp:Label ID="FormLbl" runat="server" Text="OP-0032-1"></asp:Label>: Commissioning check list for centrifugal compressors</h2>
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
                    </table>
    </div>

        <table class="table_width" border="1">
                    <tr>
                        <th class="th">Part 1</th>
                    </tr>
        </table>
        <table class="table_width" border="1">
                    <tr>
                        <th class="th">Item description</th>
                        <th class="th"></th>
                        <%--<th class="th">NC</th>
                        <th class="th">NA</th>
                        <th class="th">Comments</th>--%>
                    </tr>
                    <tr>
                        <th class="th">Lube oil/ seal oil</th>
                        <th class="th"></th>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label18" runat="server" Text="Commissioning Functional Tests completed"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label19" runat="server" Text="Lube oil/ seal oil systems flushed and cleaned "></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label20" runat="server" Text="Oil level and quality satisfactory"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label21" runat="server" Text="Oil reservior heaters in operation"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label22" runat="server" Text="Oil cooling system running"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label23" runat="server" Text="Circuits and safety devices lined-up, filters fitted"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label24" runat="server" Text="Compressor causing pressure verified"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label25" runat="server" Text="Seal oil regeneration system ready to run"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <th class="th">Compressor</th>
                        <th class="th"></th>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label26" runat="server" Text="Commissioning Functional Tests completed"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label27" runat="server" Text="Driving running tests completed"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label28" runat="server" Text="Driver, gearbox and piping alignments verified"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label29" runat="server" Text="Gearbox oil level completed"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label30" runat="server" Text="Compressor body drained"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList13" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
             </table>
             <table class="table_width"><tr>
                        <td class="th"><asp:Label ID="Label36" runat="server" Text="Reference for results"></asp:Label></td>
                        <td class="th">C</td>
                        <td class="th">Confirm</td>
                        <td class="th"><label>NC</label></td>
                        <td class="th"><label>Non-Confirm</label></td>
                        <td class="th"><label>NA</label></td>
                        <td class="th"><label>Not-Applicable</label></td>
                    </tr>
             </table>

        <div class="table_width"><label><b>Comments:</b></label>
        <asp:TextBox ID="CommentTxtBox" runat="server" TextMode="MultiLine" style="height:200px"></asp:TextBox>
        <table class="table_width" border="1">
                    <tr><th class="th">Responsible</th>
                        <th class="th">EPC</th>
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
            </asp:RadioButtonList><br />
                <asp:Button ID="printButton" runat="server" Text="Print this form" OnClientClick="javascript:window.print();" /><br />
            <asp:Button class="cancelbtn"  ID="SaveBtn" runat="server" Text="Exit" Width="50%" Float="left"/>
            <asp:Button class="submitbtn"  ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click"/>
            <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
        </div>
        </div>
        </div>
    </form>
</body>
</html>
