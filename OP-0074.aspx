<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP-0074.aspx.cs" Inherits="WebApplication1.OP_0074" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
</head>
<style>
.auto-style13 {
        width: 886px;
    }
    .auto-style14 {
        background-color: lightgray;
        width: 886px;
    }
    .auto-style15 {
        width: 886px;
        height: 32px;
    }
    .auto-style16 {
        height: 32px;
    }
    </style>
<body>
    <h2>Lighting pre-commissioning checklist</h2>
    <form id="form2" runat="server" style="border:1px solid #ccc">
    <div class="container">
    <div class="align">
    <label><b>Project No.:</b></label> 
    <%--<input type="text" id="ProjectNo" name="ProjectNo" required="required"/>--%>
    <asp:TextBox ID="ProjectNoTxtBox" runat="server" required="required"></asp:TextBox>

    <label><b><br />Plant:</b></label>
    <%--<input type="text" id="Plant" name="Plant" required="required"/>--%>
    <asp:TextBox ID="PlantTxtBox" runat="server" required="required"></asp:TextBox>

    <label><b><br />System:</b></label>
    <%--<input type="text" id="System" name="System" required="required"/>--%>
    <asp:TextBox ID="SystemTxtBox" runat="server" required="required"></asp:TextBox>

    <label><b><br />Sub-System:</b></label>
    <%--<input type="text" id="Sub-System" name="Sub-System" required="required"/>--%>
    <asp:TextBox ID="SubSystemTxtBox" runat="server" required="required"></asp:TextBox>

    <label><b><br />Equipment:</b></label>
    <%--<input type="text" id="Equipment" name="Equipment" required="required"/><br />--%>
    <asp:TextBox ID="EquipmentTxtBox" runat="server" required="required"></asp:TextBox>

    <label><b><br />Tag Number:</b></label>
    <%--<input type="text" id="TagNumber" name="TagNumber" required="required"/><br />--%>
    <asp:TextBox ID="TagNumberTxtBox" runat="server" required="required"></asp:TextBox>

    <label><b><br />Discipline:</b></label>
    <%--<input type="text" id="Discipline" name="Discipline" required="required"/>--%>
    <asp:TextBox ID="DisciplineTxtBox" runat="server" required="required"></asp:TextBox>

    <label><b><br />Date:</b></label>
    <%--<input type="text" id="Date" name="Date" required="required"/><br />--%>
    <asp:TextBox ID="DateTxtBox" runat="server" required="required"></asp:TextBox>

    <label><b><br />No. P&ID:</b></label>
    <%--<input type="text" id="P&ID" name="P&ID" required="required"/><br />--%>
    <asp:TextBox ID="PIDTxtBox" runat="server" required="required"></asp:TextBox>
    </div>
<table class="table_width">
                    <tr>
                        <th class="auto-style14">Description</th>
                        <th class="th"></th>
                        <%--<th class="th">C</th>
                        <th class="th">NC</th>
                        <th class="th">NA</th>--%>
<%--                        <th class="th">Comments</th>--%>
                    </tr>
                    <tr>
                        <td class="auto-style15"><asp:Label ID="Label18" runat="server" Text="Check that the circuit is de-energized and safe. "></asp:Label></td>
                        <td class="auto-style16"><asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label19" runat="server" Text="Check luminaires, sockets rating and tagging against drawings."></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label20" runat="server" Text="Check luminaires/ sockets are correctly mounted, accessible and don’t clash with other equipment. "></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label21" runat="server" Text="Check luminaires/ sockets and junction boxes are undamaged."></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label1" runat="server" Text="Check luminaires/ sockets and junction boxes are installed in accordance with the drawings."></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label2" runat="server" Text="Check all unused entries on junction boxes are suitably plugged."></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label3" runat="server" Text="Check cable glands mounting and compliance with specifications. "></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label4" runat="server" Text="Check earthing and bonding of all equipment against drawings."></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList8" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label5" runat="server" Text="Check cable for proper connection."></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList9" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label6" runat="server" Text="Check earthing and bonding against drawings"></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList10" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label7" runat="server" Text="Check circuit breaker rating."></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList11" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                     <tr>
                        <td class="auto-style13"><asp:Label ID="Label8" runat="server" Text="Produce marked-up drawing in accordance with installation."></asp:Label></td>
                        <td><asp:RadioButtonList ID="RadioButtonList12" runat="server" RepeatDirection="Horizontal" CssClass="FormatRadioButtonList" required="required">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                     <tr>
                        <td class="auto-style13"><asp:Label ID="Label9" runat="server" Text="Produce a defects list for inclusion in the issued punch list."></asp:Label></td>
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
        <table class="table_width">
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
        <asp:Button class="cancelbtn"  ID="SaveBtn" runat="server" Text="Save" Width="50%" Float="left"/>
        <asp:Button class="submitbtn"  ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click"/>
        <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
        </div>
        </div>
        </div>
    </form>
</body>
</html>
