using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{ DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
       

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["username"] =null;
        Session["Rid"] = null;
        Session["accountno"] =null;
        if (txt_uname.Text == "" || txt_uname.Text == "username")
        {
            lbl_unm.Text = "please fill out this field";
        }
     
     else  if (txt_pswd.Text == "" || txt_pswd.Text == "username")
            {
                lbl_pswd.Text = "please fill out this field";
            }
        
        else
        {
            DataTable dt11 = db.selectquery("select * from Accont where username='" + txt_uname.Text + "' and password='" + txt_pswd.Text + "' ");
            DataTable dt1 = db.selectquery("select * from Bank where username='" + txt_uname.Text + "' and password='" + txt_pswd.Text + "' ");

            DataTable dt = db.selectquery("select * from Registration where Username='" + txt_uname.Text + "' and password='" + txt_pswd.Text + "' ");
            if (dt.Rows.Count > 0)
            {
                Session["username"] = null;
                Session["Rid"] = null;
                Session["accountno"] = null;

                Session["Rid"] = dt.Rows[0]["Rid"].ToString().Trim();
                string utypeid = dt.Rows[0]["utypeid"].ToString().Trim();
                if (utypeid == "1")
                {
                    Response.Redirect("~/Admin/home.aspx");

                }
                else if (utypeid == "2")
                {
                    Response.Redirect("~/Users/UHOME.aspx");
                }
               
            }
            else if (dt1.Rows.Count > 0)
            {
                Session["username"] = null;
                Session["Rid"] = null;
                Session["accountno"] = null;
                Session["username"] = dt1.Rows[0]["username"].ToString();
                Response.Redirect("~/BANKING/BankHome.aspx");
            }
            else if (dt11.Rows.Count > 0)
            {
                Session["username"] = null;
                Session["Rid"] = null;
                Session["accountno"] = null;
                Session["accountno"] = dt11.Rows[0]["accountno"].ToString();
                Response.Redirect("~/BANKING/BankHome.aspx");
            }
            else
            {
                lblmsg.Text = ("Invalid user");
            }
        }
    }



            //    }
            //    else
            //    {
            //        if (txtVerificationCode.Text == Session["CaptchaVerify"].ToString())
            //        {
            //            Response.Redirect("~/User/Home.aspx");
            //        }
            //        else
            //        {
            //            lblCaptchaMessage.Text = "Please enter correct captcha !";
            //            lblCaptchaMessage.ForeColor = System.Drawing.Color.Red;
            //        }

            //    }

            //}

            //else
            //{
            //    lblmsg.Text = ("Invalid user");
            //}

    


    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Reg.aspx");
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Login.aspx");
    }

  
}
