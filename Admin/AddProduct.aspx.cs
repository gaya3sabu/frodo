using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class serviceprovider_AddProduct : System.Web.UI.Page
{ DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { caterory();
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




    public void brand()
    {
        DataTable dtt = db.selectquery("select * from  brand where category='"+ddl_caterory.SelectedValue+"'");
        if (dtt.Rows.Count > 0)
        {

            ddl_brand.DataSource = dtt;
            ddl_brand.DataValueField = "Bid";
            ddl_brand.DataTextField = "brand";

            ddl_brand.DataBind();
            ddl_brand.Items.Insert(0, "Select");
        }
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        string Image, Image3;
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Productimg/" + str));
             Image = "~/Productimg/" + str.ToString();

        
       
           
            int a = db.exequery("insert into  Product (category,brand,productname,rate,quality,description,img)values('" + ddl_caterory.SelectedValue + "', '" + ddl_brand.SelectedValue + "','" + txt_pname.Text + "', '" + txt_rate.Text + "', '" + txt_qty.Text + "','" +txt_Dscrtn.Text + "','" + Image + "')");
                if (a > 0)
                {

                    Response.Write("Station  successfully saved ");
                    txt_Dscrtn.Text = "";
                    txt_pname.Text = "";
                    txt_qty.Text = "";
                    txt_rate.Text = "";
                 
                 }
            else
            {
                Response.Write("Please Upload your Image");
            }

        }
        else
        {
            Response.Write("Please Upload your Image");
        }
    }



    protected void ddl_caterory_SelectedIndexChanged(object sender, EventArgs e)
    {
        brand();
    }
}
