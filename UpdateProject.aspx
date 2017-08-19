<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProject.aspx.cs" Inherits="WebApplication1.UpdateRefinery" %>

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
        .auto-style3 {
            left: 0px;
            top: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <ul class="nav navbar-nav navbar-right">
                <li><a href="Home.aspx" class="auto-style3">Home</a></li>
                <li><a href="Maintainance.aspx">Maintenance</a></li>
                <li><a href="Logout.aspx">Logout</a></li>
                </ul>
            </div>
       </nav>
        <%--<div id="menu">
        <ul class="auto-style2">
        <li><a href="index.html">Home</a></li>
        <li><a href="aboutus.html">About Us</a></li>
        <li><a href="services.html">Services</a></li>
        <li><a href="contactus.html">Contact Us</a></li>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Logout.aspx">LogOut</asp:HyperLink>
        </ul>
        </div>--%>
        <div class="auto-style2">Enter Project Name:

            <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" ForeColor="Black" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" ForeColor="Black" /><br />
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

                      <asp:TemplateField HeaderText="Refinery_id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Refinery_id" runat="server" Text='<%#Eval("Refinery_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Name">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Name" runat="server" Text='<%#Eval("Name") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Name" runat="server" Text='<%#Eval("Name") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="Address">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Address" runat="server" Text='<%#Eval("Address") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Address" runat="server" Text='<%#Eval("Address") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  

                <asp:TemplateField HeaderText="City">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_City" runat="server" Text='<%#Eval("City") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_City" runat="server" Text='<%#Eval("City") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

               <asp:TemplateField HeaderText="State">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_State" runat="server" Text='<%#Eval("State") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_State" runat="server" Text='<%#Eval("State") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Country">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Country" runat="server" Text='<%#Eval("Country") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Country" runat="server" Text='<%#Eval("Country") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                     <asp:TemplateField HeaderText="Zip_code">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Zip_code" runat="server" Text='<%#Eval("Zip_code") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Zip_code" runat="server" Text='<%#Eval("Zip_code") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Active_Inactive">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Active_Inactive" runat="server" Text='<%#Eval("Active_Inactive") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Active_Inactive" runat="server" Text='<%#Eval("Active_Inactive") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Owner_Company">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Owner_Company" runat="server" Text='<%#Eval("Owner_Company") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Owner_Company" runat="server" Text='<%#Eval("Owner_Company") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Owner_Contact_Person">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Owner_Contact_Person" runat="server" Text='<%#Eval("Owner_Contact_Person") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Owner_Contact_Person" runat="server" Text='<%#Eval("Owner_Contact_Person") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="IPC_Company">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_IPC_Company" runat="server" Text='<%#Eval("IPC_Company") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_IPC_Company" runat="server" Text='<%#Eval("IPC_Company") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="IPC_Contact_Person">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_IPC_Contact_Person" runat="server" Text='<%#Eval("IPC_Contact_Person") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_IPC_Contact_Person" runat="server" Text='<%#Eval("IPC_Contact_Person") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Capacity">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Capacity" runat="server" Text='<%#Eval("Capacity") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Capacity" runat="server" Text='<%#Eval("Capacity") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Type">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Project_Type" runat="server" Text='<%#Eval("Project_Type") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Project_Type" runat="server" Text='<%#Eval("Project_Type") %>'></asp:TextBox>  
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
