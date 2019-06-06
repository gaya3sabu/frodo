using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Products : System.Web.UI.Page
{
    DB db = new DB();
    int v;
    protected void Page_Load(object sender, EventArgs e)
    {
        v = Convert.ToInt32(Session["s"]);
        if (!IsPostBack)
        {

            if (v != null)
            {

                showdetails();
            }
            else
            {
                DataTable dt = db.selectquery(" select p.pid,p.img,p.productname,b.brand,p.rate from Product p join brand b on p.brand = b.Bid  ORDER BY pid ASC");

                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }

    }
    private void showdetails()
    {
       DataTable dt = db.selectquery(" select p.pid,p.img,p.productname,b.brand,p.rate from Product p join brand b on p.brand = b.Bid where p.category='"+v+"' ORDER BY pid ASC");
          
       DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName== "view")
        {
            Response.Redirect("Details.aspx?pid="+e.CommandArgument.ToString());
        }
    }



}
