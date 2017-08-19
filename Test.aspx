<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="WebApplication1.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 776px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<table class="auto-style2">
                    <tr><th class="auto-style6">Description</th>
                        <th>Description_id</th>
                        <th class="auto-style8">Units</th>
                        <th class="auto-style4">Normal Value</th>
                        <th class="th">Test Readings</th>
                    </tr>
        </table>
                    <table class="auto-style1">
                    <tr>
                        <th class="th"></th>
                        <th class="auto-style9", style="background-color:lightgray"></th>
                        <th class="auto-style10", style="background-color:lightgray"></th>
                        <th class="th">1</th>
                        <th class="th">2</th>
                        <th class="th">3</th>
                        
                    </tr>
                    <tr>
                        <td class="auto-style3"><asp:Label ID="Label1" runat="server" Text="Suction Pressure"></asp:Label></td>
                        <td class="auto-style3"><asp:Label ID="Label4" runat="server" Text="1"></asp:Label></td>
                        <td class="auto-style9"><asp:TextBox ID="TextBox2" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style10"><asp:TextBox ID="TextBox3" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox4" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox25" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox26" runat="server" Width="100%"></asp:TextBox></td>
                        
                    </tr>
                     <tr>
                        <td class="auto-style3"><asp:Label ID="Label2" runat="server" Text="Discharge Pressure"></asp:Label></td>
                         <td class="auto-style3"><asp:Label ID="Label5" runat="server" Text="2"></asp:Label></td>
                        <td class="auto-style9"><asp:TextBox ID="TextBox6" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style10"><asp:TextBox ID="TextBox7" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox8" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox9" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox10" runat="server" Width="100%"></asp:TextBox></td>
                        
                    </tr>
                     <tr>
                        <td class="auto-style3"><asp:Label ID="Label3" runat="server" Text="Inlet Temperature"></asp:Label></td>
                        <td class="auto-style3"><asp:Label ID="Label6" runat="server" Text="3"></asp:Label></td>
                        <td class="auto-style9"><asp:TextBox ID="TextBox15" runat="server" Width="100%"></asp:TextBox></td>
                        <td class="auto-style10"><asp:TextBox ID="TextBox16" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox17" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox18" runat="server" Width="100%"></asp:TextBox></td>
                        <td><asp:TextBox ID="TextBox19" runat="server" Width="100%"></asp:TextBox></td>
                     </tr>
                        </table>--%>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        <asp:Button ID="AddBtn" runat="server" Text="Button" OnClick="AddBtn_Click1" />

        <table>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label18" runat="server" Text="Check that the nameplate data is both complete and corrrect"></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
                    <tr>
                        <td class="auto-style13"><asp:Label ID="Label19" runat="server" Text="Check for any installation damage"></asp:Label>
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>NC</asp:ListItem>
                            <asp:ListItem>NA</asp:ListItem>
                        </asp:RadioButtonList></td>
                    </tr>
        </table>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    </div>
    </form>
</body>
</html>
