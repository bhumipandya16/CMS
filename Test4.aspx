<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test4.aspx.cs" Inherits="WebApplication1.Test4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
	Enter Refinery Name:

            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" Text="Search" ForeColor="Black" />
            &nbsp;&nbsp;&nbsp;
            <%--<asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" ForeColor="Black" /><br />--%>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div><br />
        <div style="margin-left:auto; margin-right:auto;">
        <asp:GridView ID="gvsearchrefinery" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowCancelingEdit="gvsearchrefinery_RowCancelingEdit" OnRowEditing="gvsearchrefinery_RowEditing" OnRowUpdating="gvsearchrefinery_RowUpdating" HorizontalAlign="Center">
            <Columns>  
                <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Unit_id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_UNit_id" runat="server" Text='<%#Eval("Unit_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Refinery_id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Refinery_id" runat="server" Text='<%#Eval("Refinery_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Unit_Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lblUnit_Name" runat="server" Text='<%#Eval("Unit_Name") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txtUnit_Name" runat="server" Text='<%#Eval("Unit_Name") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                </Columns>  
            <HeaderStyle BackColor="#28d" ForeColor="#ebebeb"/>  
            <RowStyle BackColor="#ebebeb"/>  
            </asp:GridView>
	</div>
    </form>
</body>
</html>
