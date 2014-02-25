using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
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

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (((string)Session["FirstName"]) != null)
        {       
            string orderDetails1 = "Customer Name: " + (string)Session["FirstName"] + " " + (string)Session["LastName"] + "\n";
            string orderDetails2 = "Email: " + (string)Session["Email"] + "\n";
            string orderDetails3 = "Phone: " + (string)Session["Phone"] + "\n";
            string orderDetails4 = "Size: " + (string)Session["Size"] + " Quantity: " + (string)Session["NoOfPizza"] + " Delivery: " + (string)Session["Delivery"] + "\n";
            string orderDetails5 = "Toppings: " + (string)Session["Toppings"];
            orderDetails5 = orderDetails5.Replace("</br>", " ");

            StringBuilder builder = new StringBuilder();
            builder.AppendLine(orderDetails1);
            builder.AppendLine(orderDetails2);
            builder.AppendLine(orderDetails3);
            builder.AppendLine(orderDetails4);
            builder.AppendLine(orderDetails5);


            System.Web.HttpContext.Current.Response.Buffer = true;
            System.Web.HttpContext.Current.Response.Clear();
            System.Web.HttpContext.Current.Response.ContentType = "text/plain";
            System.Web.HttpContext.Current.Response.AppendHeader("content-disposition", "attachment;filename=order.txt");
            System.Web.HttpContext.Current.Response.Write(builder.ToString());
            System.Web.HttpContext.Current.Response.Flush();
            System.Web.HttpContext.Current.Response.End();
        }



    }
}