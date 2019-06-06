using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Cartlist : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["Rid"] != null)
        {
            if (!IsPostBack)
            {
                string c = Session["Rid"].ToString();
                DataTable dt = db.selectquery("select p.pid,p.img,c.cartid,c.totalamount,p.productname,p.rate from Product p join cart c on p.pid = c.productid where c.uid='" + c + "' and status='cart'");

                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
        else
        {
            Response.Redirect("~/logout.aspx");
           // Label1.Text = "empty Cart !!!!";

        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
      
    }

    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "buy")
        {
            for (int j = 0; j < DataList1.Controls.Count; j++)
            {
                string lbl_rate = ((Label)DataList1.Items[j].FindControl("lbl_tot")).Text;
                Session["amnt"] = lbl_rate.ToString();
                Response.Redirect("Payment.aspx?cartid=" + e.CommandArgument);
            }
        }
    }
}