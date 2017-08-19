<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test2.aspx.cs" Inherits="WebApplication1.Test2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript">
    $("[src*=plus]").live("click", function () {
        $(this).closest("tr").after("<tr><td></td><td colspan = '999'>" + $(this).next().html() + "</td></tr>")
        $(this).attr("src", "images/minus.png");
    });
    $("[src*=minus]").live("click", function () {
        $(this).attr("src", "images/plus.png");
        $(this).closest("tr").next().remove();
    });
</script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="gvRefinery" runat="server" AutoGenerateColumns="false" CssClass="Grid" DataKeyNames ="Refinery_id" OnRowDataBound="OnRowDataBound" >
        <Columns>
            <%--<asp:TemplateField HeaderText="Refinery_id">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Refinery_id" runat="server" Text='<%#Eval("Refinery_id") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField> 
            <asp:TemplateField HeaderText="City">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_City" runat="server" Text='<%#Eval("City") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_City" runat="server" Text='<%#Eval("City") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField> --%>

            <asp:TemplateField>
                <ItemTemplate>
                    <img alt = "" style="cursor: pointer" src="images/plus.png" width="22" height="22" />
                    <asp:Panel ID="pnlUnits" runat="server" Style="display: none">
                        <asp:GridView ID="gvUnits" runat="server" AutoGenerateColumns="false" CssClass = "ChildGrid" OnRowCancelingEdit="gvUnits_RowCancelingEdit" OnRowEditing="gvUnits_RowEditing" OnRowUpdating="gvUnits_RowUpdating">
                            <Columns>
                            <%--<asp:TemplateField>  
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
                            <asp:Label ID="lbl_Unit_id" runat="server" Text='<%#Eval("Unit_id") %>'></asp:Label>  
                            </ItemTemplate>  
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="UnitName">  
                            <ItemTemplate>  
                            <asp:Label ID="lbl_UnitName" runat="server" Text='<%#Eval("Unit_Name") %>'></asp:Label>  
                            </ItemTemplate>  
                            <EditItemTemplate>  
                                <asp:TextBox ID="txt_UnitName" runat="server" Text='<%#Eval("Unit_Name") %>'></asp:TextBox>  
                            </EditItemTemplate>  
                            </asp:TemplateField> --%>
                            <asp:BoundField ItemStyle-Width="100px" DataField="Unit_id" HeaderText="Unit Id" />
                            <asp:BoundField ItemStyle-Width="100px" DataField="Unit_Name" HeaderText="Name" />
                            </Columns>
                        </asp:GridView>
                    </asp:Panel>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField ItemStyle-Width="100px" DataField="Refinery_id" HeaderText="Refinery ID" />
            <asp:BoundField ItemStyle-Width="100px" DataField="City" HeaderText="City" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
