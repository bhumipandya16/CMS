<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateSystems.aspx.cs" Inherits="WebApplication1.UpdateSystems" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/styles/Styles.css"/> 
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            color: silver;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                <li><a href="Home.aspx">Home</a></li>
                <li><a href="Maintainance.aspx">Maintenance</a></li>
                <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </div>
       </nav>
    <div class="auto-style2">Enter Project Name:

            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" ForeColor="Black" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        </div><br />
        <div style="margin-left:auto; margin-right:auto;">
            <asp:GridView ID="gvSystems" runat="server" AutoGenerateColumns="False" CellPadding="6" OnRowCancelingEdit="gvSystems_RowCancelingEdit" OnRowEditing="gvSystems_RowEditing" OnRowUpdating="gvSystems_RowUpdating" HorizontalAlign="Center">
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
                
                <asp:TemplateField HeaderText="Refinery_Area_Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Refinery_Area_Name" runat="server" Text='<%#Eval("Refinery_Area_Name") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Process_Unit_Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Process_Unit_Name" runat="server" Text='<%#Eval("Process_Unit_Name") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="PU_Systems_id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_PU_Systems_id" runat="server" Text='<%#Eval("PU_Systems_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="System_Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_System_Name" runat="server" Text='<%#Eval("System_Name") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_System_Name" runat="server" Text='<%#Eval("System_Name") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> 
                
                <asp:TemplateField HeaderText="System_Pre_Commissioned">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_System_Pre_Commissioned" runat="server" Text='<%#Eval("System_Pre_Commissioned") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_System_Pre_Commissioned" runat="server" Text='<%#Eval("System_Pre_Commissioned") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> 
                
                <asp:TemplateField HeaderText="System_Commissioned">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_System_Commissioned" runat="server" Text='<%#Eval("System_Commissioned") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_System_Commissioned" runat="server" Text='<%#Eval("System_Commissioned") %>'></asp:TextBox>  
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
