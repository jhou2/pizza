using MarysEntities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btnOrders_Click(object sender, EventArgs e)
    {
        var ctx = new MaryPizzaEntities();
        var orders = from Order in ctx.Orders
                     where Order.orderDate >= cdrStart.SelectedDate
                     && Order.orderDate <= cdrEnd.SelectedDate
                     select Order;
        gvOrders.DataSource = orders.ToList();
        gvOrders.DataBind();
    }
}