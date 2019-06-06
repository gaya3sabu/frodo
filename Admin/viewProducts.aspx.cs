using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class serviceprovider_viewProducts : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showdetails();
        }

    }
    private void showdetails()
    {
        DataTable dt = db.selectquery("select p.pid,c.category,b.brand,p.productname,p.rate,p.quality,p.img from Product p join category c on p.category=c.Cid join brand b on p.brand=b.Bid");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

   

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        showdetails();

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Update")
        {
            Response.Redirect("Editproduct.aspx?pid=" + e.CommandArgument.ToString());
        }
    }
}
