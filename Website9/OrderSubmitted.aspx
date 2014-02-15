<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrderSubmitted.aspx.cs" Inherits="OrderConfirm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Confirm Order</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:Label ID="lblDate" runat="server"></asp:Label>

    Thank you for your order, <asp:Label ID="lblFirstName" runat="server"></asp:Label> <asp:Label ID="lblLastName" runat="server"></asp:Label>
    .<br />
    <table class="table">
        <tr>
            <td>
                Email: 
            </td>
            <td>
                <asp:Label ID="lblEmail" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Phone:
            </td> 
            <td>
                <asp:Label ID="lblPhone" runat="server"></asp:Label>
            </td>
        </tr>

    </table>
   
        
    <br/>
    
    You have ordered the following:
    <br />
    <table class="table">
        <tr>
            <td>
                Size:
            </td>
            <td>
                <asp:Label ID="lblPizzaSize" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Number of Pizzas: 
            </td>
            <td>
                <asp:Label ID="lblNoOfPizza" runat="server"></asp:Label>

            </td>

        </tr>
        <tr>
            <td>
                Toppings:
            </td>
            <td>
                <asp:Label ID="lblToppings" runat="server" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                Delivery Method:
            </td>
            <td>
                <asp:Label ID="lblDelivery" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    


</asp:Content>

