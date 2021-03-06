﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OP-0030.aspx.cs" Inherits="WebApplication1.PumpsAlignmentHot_OP0030" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="/styles/OP_Form.css" />
</head>
    <style>
        .auto-style15 {
            background-color: lightgray;
            width: 319px;
        }

        .auto-style16 {
            width: 319px;
        }

        .auto-style17 {
            width: 99px;
        }

        .auto-style18 {
            width: 321px;
        }

        .auto-style19 {
            width: 124px;
        }

        .auto-style20 {
            width: 101px;
        }

        .auto-style21 {
            width: 99px;
        }

        .auto-style22 {
            width: 124px;
        }

        .auto-style23 {
            background-color: lightgray;
        }

        .auto-style24 {
            width: 126px;
        }

        .auto-style14 {
            width: 171px;
        }
    </style>
<body>
    <h2 class="h2">
        <asp:Image ID="Image1" src="\images\sgvs.jpg" runat="server" Height="56px" /><br />
        <asp:Label ID="FormLbl" runat="server" Text="OP-0030"></asp:Label>: Commissioning check list for centrifugal pumps</h2>
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
                    <tr><th class="auto-style18", style="background-color:lightgray">Description</th>
                        <th class="auto-style17", style="background-color:lightgray">Units</th>
                        <th class="auto-style19", style="background-color:lightgray">Normal Value</th>
                        <th class="th">Test Readings</th>
                    </tr>
        </table>
                    <table class="table_width" border="1">
                    <tr>
                        <th class="auto-style15"></th>
                        <th class="auto-style21", style="background-color:lightgray"></th>
                        <th class="auto-style22", style="background-color:lightgray"></th>
                        <th class="auto-style23">1</th>
                        <th class="auto-style23">2</th>
                        <th class="auto-style23">3</th>
                        <th class="auto-style23">4</th>
                        <th class="auto-style23">5</th>
                        <th class="auto-style23">6</th>
                        <th class="auto-style23">7</th>
                    </tr>
                    <tr>
                        <td class="auto-style16"><asp:Label ID="Label1" runat="server" Text="Suction pressure"></asp:Label></td>
                        <td class="auto-style17"><asp:TextBox ID="TextBox1" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style19"><asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox4" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox5" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox6" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox7" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox8" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox9" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td class="auto-style16"><asp:Label ID="Label2" runat="server" Text="Discharge pressure"></asp:Label></td>
                        <td class="auto-style17"><asp:TextBox ID="TextBox10" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style19"><asp:TextBox ID="TextBox11" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox12" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox13" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox14" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox15" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox16" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox17" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox18" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td class="auto-style16"><asp:Label ID="Label3" runat="server" Text="Inlet temperature"></asp:Label></td>
                        <td class="auto-style17"><asp:TextBox ID="TextBox19" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style19"><asp:TextBox ID="TextBox20" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox21" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox22" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox23" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox24" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox25" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox26" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox27" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><asp:Label ID="Label4" runat="server" Text="Outlet temperature"></asp:Label></td>
                        <td class="auto-style17"><asp:TextBox ID="TextBox28" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style19"><asp:TextBox ID="TextBox29" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox30" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox31" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox32" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox33" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox34" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox35" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox36" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><asp:Label ID="Label5" runat="server" Text="Discharge flow"></asp:Label></td>
                        <td class="auto-style17"><asp:TextBox ID="TextBox37" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style19"><asp:TextBox ID="TextBox38" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox39" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox40" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox41" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox42" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox43" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox44" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox45" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><asp:Label ID="Label6" runat="server" Text="Shut in discharge pressure"></asp:Label></td>
                        <td class="auto-style17"><asp:TextBox ID="TextBox46" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style19"><asp:TextBox ID="TextBox47" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox48" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox49" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox50" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox51" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox52" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox53" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox54" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    </table>
                    <table class="table_width" border="1">
                    <tr>
                        <th class="th">Mechanical: Bearing Temperature and vibration readings</th>
                    </tr>
                    </table>
        <table class="table_width" border="1">
            <tr>
                        <td class="auto-style16"><asp:Label ID="Label7" runat="server" Text="Thrust bearing temperature"></asp:Label></td>
                        <td class="auto-style20"><asp:TextBox ID="TextBox55" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style19"><asp:TextBox ID="TextBox56" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox57" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox58" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox59" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox60" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox61" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox62" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox63" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td class="auto-style16"><asp:Label ID="Label8" runat="server" Text="Vibration"></asp:Label></td>
                        <td class="auto-style20"><asp:TextBox ID="TextBox64" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style19"><asp:TextBox ID="TextBox65" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox66" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox67" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox68" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox69" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox70" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox71" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox72" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
        </table>
        <table class="table_width" border="1">
                    <tr>
                        <th class="th">Electrical</th>
                    </tr>
        </table>
        <table class="table_width" border="1">
            <tr>
                        <td class="auto-style16"><asp:Label ID="Label9" runat="server" Text="Motor speed"></asp:Label></td>
                        <td class="auto-style9"><asp:TextBox ID="TextBox73" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style24"><asp:TextBox ID="TextBox74" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox75" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox76" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox77" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox78" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox79" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox80" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox81" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                     <tr>
                        <td class="auto-style16"><asp:Label ID="Label10" runat="server" Text="Motor voltage"></asp:Label></td>
                        <td class="auto-style9"><asp:TextBox ID="TextBox82" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style24"><asp:TextBox ID="TextBox83" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox84" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox85" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox86" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox87" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox88" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox89" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox90" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><asp:Label ID="Label11" runat="server" Text="Motor intensity"></asp:Label></td>
                        <td class="auto-style9"><asp:TextBox ID="TextBox91" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style24"><asp:TextBox ID="TextBox92" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox93" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox94" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox95" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox96" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox97" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox98" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox99" runat="server" Width="100%"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style16"><asp:Label ID="Label12" runat="server" Text="Electrical power"></asp:Label></td>
                        <td class="auto-style9"><asp:TextBox ID="TextBox100" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style24"><asp:TextBox ID="TextBox101" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox102" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox103" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox104" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox105" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox106" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox107" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox108" runat="server" Width="100%"></asp:TextBox></td>
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
      <asp:Button class="cancelbtn"  ID="SaveBtn" runat="server" Text="Exit" Width="50%" Float="left" OnClick="SaveBtn_Click" CausesValidation="false"/>
        <asp:Button class="submitbtn"  ID="SubmitBtn" runat="server" Text="Submit" Width="50%" Float="left" OnClick="SubmitBtn_Click"/>
        <asp:Label ID="SuccessLbl" runat="server"></asp:Label>
        </div>
        </div>
        </div>
    </form>
</body>
</html>
