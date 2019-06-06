using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BANKING_LOGIN : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {

        DataTable dt = db.selectquery("select * from Accont where username='" + txt_username.Text + "' and password='" + txt_pswrd.Text + "' and status='Approved' ");
        if (dt.Rows.Count > 0)
        {
            string Usertype = dt.Rows[0]["Username"].ToString().Trim();
            Session["accountno"] = dt.Rows[0]["accountno"].ToString();
            
            if (Usertype != "bank")
            {
                Response.Redirect("~/BANKING/BankHome.aspx");
            }
            else
            {
                Response.Redirect("~/Bankadmin/Default.aspx");
            }
        }
    }
}