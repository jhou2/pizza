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


        
        string orderDetails1 = "Customer Name: " + (string)Session["FirstName"] + " " + (string)Session["LastName"] + "\n";
        string orderDetails2 = "Email: " + (string)Session["Email"] + "\n";
        string orderDetails3 = "Phone: " + (string)Session["Phone"] + "\n";
        string orderDetails4 = "Size: " + (string)Session["Size"] + " Quantity: " + (string)Session["NoOfPizza"] + "Delivery: " + (string)Session["Delivery"] + "\n" ;
        string orderDetails5 = "Toppings: " + (string)Session["Toppings"];
        orderDetails5 = orderDetails5.Replace("</br>", " ");
        List<string> orderDetails = new List<string>();
        orderDetails.Add(orderDetails1);
        orderDetails.Add(orderDetails2);
        orderDetails.Add(orderDetails3);
        orderDetails.Add(orderDetails4);
        orderDetails.Add(orderDetails5);
        orderDetails.Add("=====================================================================================");

        if (((string)Session["FirstName"])!=null)
        {
            string path = Server.MapPath(@"~/docs/orders.txt");
            System.IO.File.AppendAllLines(path, orderDetails);
        }
  
    }
}