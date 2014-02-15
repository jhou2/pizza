<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Orders" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Order</title>
    <style type="text/css">
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script>
        function ValidateToppings(source, args) {
            var chkListModules = document.getElementById('<%= cblToppings.ClientID %>');
            var chkListinputs = chkListModules.getElementsByTagName("input");
            for (var i = 0; i < chkListinputs.length; i++) {
                if (chkListinputs[i].checked) {
                    args.IsValid = true;
                    return;
                }
            }
            args.IsValid = false;
        }
        function ValidatePizzaSize(source, args) {
            var chkPizzaSize = document.getElementById('<%= ddlPizzaSize.ClientID %>').value;
            var chkDelivery = document.getElementById('<%= ddlDelivery.ClientID %>').value;
            if (chkDelivery == "Delivery" && chkPizzaSize == "Small") {
                args.IsValid = false;
            }
        }
    </script>
    <div style=" width:800px; margin-right: auto; margin-left: auto;">
    
        <table class="table condensed">
            <tr>
                <td>First Name:</td>
                <td class="auto-style2"><asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox></td>
                <td class="auto-style1"><asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ErrorMessage="First Name is Required!"
             ControlToValidate="tbFirstName" Font-Bold="true" Font-Italic="true" ForeColor="#CC3300"></asp:RequiredFieldValidator></td>
            </tr>

            <tr>
                <td>Last Name:</td>
                <td class="auto-style2"><asp:TextBox ID="tbLastName" runat="server"></asp:TextBox></td>
                <td class="auto-style1"><asp:RequiredFieldValidator ID="rfvLastName" runat="server" ErrorMessage="Last Name is Required!"
             ControlToValidate="tbLastName" Font-Bold="true" Font-Italic="true" ForeColor="#CC3300"></asp:RequiredFieldValidator></td>
            </tr>

            <tr>
                <td>Email Address:</td>
                <td class="auto-style2"><asp:TextBox ID="tbEmail" runat="server"></asp:TextBox></td>
                <td class="auto-style1"><asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="Email is Required!"
             ControlToValidate="tbEmail" Font-Bold="true" Font-Italic="true" ForeColor="#CC3300"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="tbEmail" ErrorMessage="Email Must be of proper Format!"
            Font-Bold="true" Font-Italic="true" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
            </tr>

            <tr>
                <td>Phone Number:</td>
                <td class="auto-style2"><asp:TextBox ID="tbPhone" runat="server"></asp:TextBox></td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ErrorMessage="Phone Number is Required!"
                    ControlToValidate="tbPhone" Font-Bold="true" Font-Italic="true" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="tbPhone" ErrorMessage="Phone Number Must be of proper Format!"
                    Font-Bold="true" Font-Italic="true" ForeColor="#CC3300" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$"></asp:RegularExpressionValidator>

                </td>
            </tr>

            <tr>
                <td style="vertical-align:top">Pizza Size: </td>
                <td class="auto-style2"> 
                    <asp:DropDownList ID="ddlPizzaSize" runat="server">
                    <asp:ListItem>Small</asp:ListItem>
                    <asp:ListItem>Medium</asp:ListItem>
                    <asp:ListItem>Large</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="rfvPizzaSize" runat="server" ErrorMessage="Pizza Size is Required!"
                    ControlToValidate="ddlPizzaSize" Font-Bold="true" Font-Italic="true" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td>No. of Pizza:</td>
                <td class="auto-style2"> <asp:TextBox ID="tbNoOfPizza" runat="server"></asp:TextBox></td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="rfvNoOfPizza" runat="server" ErrorMessage="Number of Pizzas is Required!"
                    ControlToValidate="tbNoOfPizza" Font-Bold="true" Font-Italic="true" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="rvNoOfPizza" runat="server" ErrorMessage="Number of Pizzas must be 1 to 99"
                    ControlToValidate="tbNoOfPizza" Font-Bold="true" Font-Italic="true" ForeColor="#CC3300" MinimumValue="1" MaximumValue="99" Type="Integer"></asp:RangeValidator>

                </td>
            </tr>
            <tr class="row">
                <td style="vertical-align:top">Preferred Toppings: </td>
                <td class="auto-style2">
                    <asp:CheckBoxList ID="cblToppings" RepeatColumns="6" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="toppingId" ></asp:CheckBoxList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MaryPizzaConnectionString %>" SelectCommand="SELECT * FROM [Topping]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:CustomValidator ID="cvToppings" runat="server" ErrorMessage="You must choose at least one topping!" 
                    ClientValidationFunction="ValidateToppings" Font-Bold="true" Font-Italic="true" ForeColor="#CC3300" ></asp:CustomValidator>    
                </td>
            </tr>
            <tr>
                <td style="vertical-align:top">Delivery:</td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlDelivery" runat="server">
                    <asp:ListItem>Delivery</asp:ListItem>
                    <asp:ListItem>Pick up</asp:ListItem>
                    </asp:DropDownList>

                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="rfvDelivery" runat="server" ErrorMessage="Delivery Type is Required!"
                    ControlToValidate="ddlDelivery" Font-Bold="true" Font-Italic="true" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="cvPizzaSize" runat="server" ErrorMessage="Cannot do a delivery with a Small Pizza!" 
                    ClientValidationFunction="ValidatePizzaSize" Font-Bold="true" Font-Italic="true" ForeColor="#CC3300" ></asp:CustomValidator>    
                </td>
            </tr>
            <tr><td></td>
                <td>
                    <asp:Button ID="btnSubmit" class="button large bg-blue" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                </td>
            </tr>
      
        </table>
               
    </div>
             
</asp:Content>

