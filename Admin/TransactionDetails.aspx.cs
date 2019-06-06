using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bankadmin_TransactionDetails : System.Web.UI.Page
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
        DataTable dt = db.selectquery("select * from TransactionDetails");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }


}