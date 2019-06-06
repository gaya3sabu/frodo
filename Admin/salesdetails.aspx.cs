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
        DataTable dt = db.selectquery("select * from cart c join Product p on c.productid=p.pid join Registration r  on c.uid=r.Rid join Accont a on r.Name=a.name  where c.status='Buy'");

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
