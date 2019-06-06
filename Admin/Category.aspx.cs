using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class serviceprovider_Category : System.Web.UI.Page
{ DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = db.exequery("insert into category (category)values('" + txt_category.Text + "')");
        if (a > 0)
        {
            lblmsg.Text = "Registration Done!!";
            txt_category.Text = "";
        }
        else
        {
            lblmsg.Text = "Try again!!";
        }
    }
}