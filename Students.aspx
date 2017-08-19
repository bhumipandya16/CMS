<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="WebApplication1.Students" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 168px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblFirstName" runat="server" Text="Enter Student`s First Name"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtFirstName" runat="server" ></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblLastName" runat="server" Text="Enter Student`s Last Name"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtLastName" runat="server" ></asp:TextBox></td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="lblEmail" runat="server" Text="Enter Student`s Email"></asp:Label></td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtEmail" runat="server" ></asp:TextBox></td>
            </tr>
            <tr>
                <td style="text-align:right">
                    Enter Student&#39;s ID</td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtstudentID" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align:right">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" />
                    <asp:Button ID="btnedit" runat="server" OnClick="btnedit_Click" Text="Edit" />
                </td>
            </tr>
        </table>
        <br />

        <table>
            <tr>
                <td> Search the Student </td> <td> <asp:TextBox ID="txtSearch" runat="server" ></asp:TextBox></td> <td> <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" /> </td>
            </tr>

        </table>
    <div>
        <asp:GridView ID="gvStudents" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
