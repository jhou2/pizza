using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderConfirm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblFirstName.Text = (string)Session["FirstName"];
        lblLastName.Text = (string)Session["LastName"];

        lblEmail.Text = (string)Session["Email"];
        lblPhone.Text = (string)Session["Phone"];

        lblPizzaSize.Text = (string)Session["Size"];
        lblNoOfPizza.Text = (string)Session["NoOfPizza"];
        lblToppings.Text = (string)Session["Toppings"];
        lblDelivery.Text = (string)Session["Delivery"];

    }
}