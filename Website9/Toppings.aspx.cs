using MarysEntities;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Toppings : System.Web.UI.Page
{
    

    protected void Page_Load(object sender, EventArgs e)
    {
       // if (!IsPostBack)
            //BindToppings();

        
    }

    private void BindToppings()
    {
        //var ctx = new MaryPizzaEntities();
        //gvToppings.DataSource = ctx.Toppings;
        //gvToppings.DataSource = Session["ToppingTable"];
        gvToppings.DataBind();

        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnAddTopping_Click(object sender, EventArgs e)
    {
        var ctx = new MaryPizzaEntities();
        Topping newTopping = new Topping();
        newTopping.name = tbToppingName.Text;
        newTopping.active = cbActive.Checked ? "yes" : "no";
        ctx.Toppings.Add(newTopping);
        ctx.SaveChanges();
        gvToppings.DataBind();
    }

    protected void gvToppings_RowEditing(object sender, GridViewEditEventArgs e)
    {
        var ctx = new MaryPizzaEntities();
        
        gvToppings.EditIndex = e.NewEditIndex;

        //gvToppings.DataSource = ctx.Toppings;
        gvToppings.DataBind();
    }

    protected void gvToppings_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //var ctx = new MaryPizzaEntities();
        gvToppings.EditIndex = -1;

        //gvToppings.DataSource = ctx.Toppings;
        gvToppings.DataBind();
        
    }

    protected void gvToppings_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //int ToppingID = (int)gvToppings.DataKeys[e.RowIndex].Value;
        //TextBox ToppingName = (TextBox)gvToppings.Rows[e.RowIndex].FindControl("Name");
        //string  = (string)gvToppings.Rows[e.RowIndex].FindControl("txtSurname");

        //var entityModel = new MaryPizzaEntities();
        //Topping topping = entityModel.Toppings.Where(c => c. == customerId).First();
        //customer.Name = txtName.Text;
        //customer.Surname = txtSurname.Text;
        //entityModel.SaveChanges();
        var ctx = new MaryPizzaEntities();

        gvToppings.EditIndex = -1;
        //gvToppings.DataSource = ctx.Toppings;
        gvToppings.DataBind();
    }

 
}