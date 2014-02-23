<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Toppings.aspx.cs" Inherits="Toppings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Toppings</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Current Toppings</h1>
    <script src="Scripts/jquery-1.9.1.js"></script>
    <asp:GridView ID="gvToppings" PagerStyle-CssClass="pagination" runat="server" 
        CssClass="bordered" AutoGenerateColumns="False" DataKeyNames="toppingId" 
        DataSourceID="MarysPizzaDatasource" AllowSorting="True" 
        OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
        onrowcancelingedit="gvToppings_RowCancelingEdit" 
        onrowediting="gvToppings_RowEditing" onRowUpdating="gvToppings_RowUpdating"
        AllowPaging="True"
        BorderStyle="None" GridLines="None">
        
        <Columns>
            <asp:CommandField CausesValidation="false" ShowEditButton="True" ButtonType="button" />
            <asp:BoundField DataField="toppingId" HeaderText="toppingId" ReadOnly="True" SortExpression="toppingId" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="active" HeaderText="active" SortExpression="active" />

            <asp:TemplateField >
                <ItemTemplate>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Delete this Item?');"/>
                </ItemTemplate>
            </asp:TemplateField>


        </Columns>

<PagerStyle CssClass="pagination"></PagerStyle>
</asp:GridView>
<asp:EntityDataSource ID="MarysPizzaDatasource" runat="server" ConnectionString="name=MaryPizzaEntities" DefaultContainerName="MaryPizzaEntities" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="Toppings" EntityTypeFilter="Topping" EnableDelete="True">
</asp:EntityDataSource>
    <h1>Add new topping</h1>
    <table class="table container">
        <tr class="row">
            <td class="col-md-4">
                <asp:Label ID="lblToppingName" runat="server" Text="Topping Name"></asp:Label>
            </td>
            <td class="col-md-4">
                <asp:TextBox ID="tbToppingName" runat="server"> </asp:TextBox>
            </td>
            <td class="col-md-4">
                <asp:RequiredFieldValidator ControlToValidate="tbToppingName" ID="fvToppingName" runat="server" ErrorMessage="Topping name required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr class="row">
            <td class="col-md-4">
                <asp:CheckBox ID="cbActive" runat="server" Text="Active" />
            </td>
            
            <td class="col-md-4">
                <asp:Button ID="btnAddTopping" runat="server" Text="Add" UseSubmitBehavior="True" OnClick="btnAddTopping_Click" CssClass="default" />
            </td>
        </tr>
    </table>
</asp:Content>

