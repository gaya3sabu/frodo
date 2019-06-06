using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reg : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {if (txt_name.Text == "" || txt_name.Text == "Name")
        {
            lbl_name.Text = "please fill out this field";
        }
        else if (txt_ph.Text == "" || txt_ph.Text == "Phone")
        {
            lbl_ph.Text = "please fill out this field";
        }
        else if (txt_name.Text == "" || txt_name.Text == "Name")
        {
            lbl_name.Text = "please fill out this field";
        }
        else if (txt_email.Text == "" || txt_email.Text == "Email")
        {
            lbl_emil.Text = "please fill out this field";

        }
        else if (txt_adrs.Text == "" || txt_adrs.Text == "Address")
        {
            lbl_adrs.Text = "please fill out this field";

        }
        else if (txt_Uname.Text == "" || txt_Uname.Text == "Username")
        {
            lbl_unm.Text = "please fill out this field";
        }
        else if (txt_pswd.Text == "" || txt_pswd.Text == "Password")
        {
            lbl_pswd.Text = "please fill out this field";
        }
        else
        {

            int a = db.exequery("insert into Registration (Name,Username,password,Email,contact,utypeid)values('" + txt_name.Text + "','" + txt_Uname.Text + "','" + txt_pswd.Text + "','" + txt_email.Text + "','" + txt_ph.Text + "','2')");
            if (a > 0)
            {
                lblmsg.Text = "Registration Done!!";
                txt_name.Text = "";
                txt_ph.Text = "";
                txt_Uname.Text = "";
                txt_email.Text = "";
                txt_pswd.Text = "";

                Response.Redirect("~/Login.aspx");
            }
            else
            {
                lblmsg.Text = ("some error occur,please try again!!");
            }
        }


    }
}