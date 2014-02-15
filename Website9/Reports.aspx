<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="Reports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Reports</title>
    <script src="Scripts/jquery-1.9.1.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Search for orders</h1>
    <table class="table">
        <tr>
            <td>
                <header>From</header>
                <asp:Calendar ID="cdrStart" runat="server"></asp:Calendar>
            </td>
            <td style="width:50%;">
                <header>To</header>
                <asp:Calendar ID="cdrEnd" runat="server"></asp:Calendar>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnOrders" runat="server" Text="Search Orders" OnClick="btnOrders_Click" />
            </td>
        </tr>
    </table>
    <h1>Orders</h1>
    <asp:GridView ID="gvOrders" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
</asp:Content>

