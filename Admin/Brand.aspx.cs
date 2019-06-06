using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class serviceprovider_Brand : System.Web.UI.Page
{ DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            caterory();
        }
    }


    public void caterory()
    {
        DataTable dtt = db.selectquery("select * from  category");
        if (dtt.Rows.Count > 0)
        {

            ddl_caterory.DataSource = dtt;
            ddl_caterory.DataValueField = "Cid";
            ddl_caterory.DataTextField = "category";

            ddl_caterory.DataBind();
            ddl_caterory.Items.Insert(0, "Select");
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = db.exequery("insert into brand (category,brand)values('" + ddl_caterory.SelectedValue + "','" + txt_brnd.Text + "')");
        if (a > 0)
        {
            lblmsg.Text = "Registration Done!!";
            txt_brnd.Text = "";
        }
        else
        {
            lblmsg.Text = "Try again!!";
        }
    }
}
