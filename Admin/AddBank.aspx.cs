using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddBank : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
            {
                string str2 = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Photo/" + str2));
                string Image2 = "~/Photo/" + str2.ToString();


                int a = db.exequery("insert into  Bank (name,branch,address,contactno,logo,email,username,password)values('" + txt_name.Text + "', '" + txt_brnch.Text + "','" + txt_address.Text + "','" + txt_cont.Text + "', '" + Image2 + "', '" + txt_email.Text + "','" + txt_username.Text + "','" + txt_pswrd.Text + "')");
                if (a > 0)
                {

                    Response.Write("Bank  successfully saved ");
                    txt_address.Text = "";
                    txt_cont.Text = "";                
                    txt_brnch.Text = "";
                    txt_pswrd.Text ="";
                    txt_name.Text ="";
                    txt_username.Text = "";
                    txt_email.Text = "";
                    
                }
            }
            else
            {
                Response.Write("Please Upload your Image");
            }

       
    }

}
