using MarysEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Orders : System.Web.UI.Page
{
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        using (MaryPizzaEntities ctx = new MaryPizzaEntities())
        {
            List<Topping> toppings = new List<Topping>();

            foreach (ListItem topping in cblToppings.Items)
            {
                if (topping.Selected)
                {
                    toppings.Add(ctx.Toppings
                        .Where(c => c.name == topping.Text)
                        .Select(c => c)
                        .First());
                }
            }

            Order order = new Order();
            order.firstname = tbFirstName.Text;
            order.lastName = tbLastName.Text;
            order.email = tbEmail.Text;
            order.phone = tbPhone.Text;
            order.size = ddlPizzaSize.SelectedValue;
            order.noOfPizzas = Convert.ToInt32(tbNoOfPizza.Text);
            order.Toppings = toppings;
            order.delivery = ddlDelivery.SelectedValue;
            order.orderDate = DateTime.Now;
            ctx.Orders.Add(order);
            ctx.SaveChanges();
             
            foreach (ListItem topping in cblToppings.Items)
            {
                if (topping.Selected)
                {
                    Session["Toppings"] += topping.Text + "</br>";
                }
            }
        


            Session["FirstName"] = tbFirstName.Text;
            Session["LastName"] = tbLastName.Text;
            Session["Email"] = tbEmail.Text;
            Session["Phone"] = tbPhone.Text;
            Session["Size"] = ddlPizzaSize.SelectedValue;
            Session["NoOfPizza"] = tbNoOfPizza.Text;
            //Session["Toppings"] = toppings;
            Session["Delivery"] = ddlDelivery.SelectedValue;
            
        }

        Server.Transfer("OrderSubmitted.aspx", false);
       
    }
}