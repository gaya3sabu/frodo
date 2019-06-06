using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Editproduct : System.Web.UI.Page
{
    DB db = new DB();
    string cat, pid;
    string brnd;
    string Image;
    protected void Page_Load(object sender, EventArgs e)
    {
       if(!IsPostBack)
        { 
            pid = Request.QueryString["pid"];
            if (pid != null)
            {

                DataTable dt1 = db.selectquery("select c.category,b.brand,p.productname,p.quality,p.rate,p.description,p.img from Product p join category c on p.category = c.Cid join brand b on p.brand = b.Bid where p.pid ='" + pid + "' ");
                if (dt1.Rows.Count > 0)
                {
                    txt_pname.Text = dt1.Rows[0]["productname"].ToString().Trim();
                    txt_rate.Text = dt1.Rows[0]["rate"].ToString().Trim();
                    txt_qty.Text = dt1.Rows[0]["quality"].ToString().Trim();
                    txt_Dscrtn.Text = dt1.Rows[0]["description"].ToString().Trim();
                    Image1.ImageUrl = dt1.Rows[0]["img"].ToString().Trim();
                    cat = dt1.Rows[0]["category"].ToString();
                    Session["c"] = cat;
                    brnd = dt1.Rows[0]["brand"].ToString();
                    Session["b"] = brnd;
                    ddl_brand.Items.Insert(0, brnd);
                    //   ddl_caterory.Items.Insert(0, );
                    caterory();
                }
            }
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
           ddl_caterory.Items.Insert(0,cat);
        }
    }




    public void brand()
    {
        DataTable dtt = db.selectquery("select * from  brand where category='" + ddl_caterory.SelectedValue + "'");
        if (dtt.Rows.Count > 0)
        {

            ddl_brand.DataSource = dtt;
            ddl_brand.DataValueField = "Bid";
            ddl_brand.DataTextField = "brand";

            ddl_brand.DataBind();
         //  ddl_brand.Items.Insert(0,brnd);
        }
    }





    protected void Button1_Click(object sender, EventArgs e)
    {
        pid = Request.QueryString["pid"];
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Productimg/" + str));
            string Image = "~/Productimg/" + str.ToString();
            if (ddl_caterory.SelectedValue == Session["c"].ToString())
            {
                int a = db.exequery("UPDATE Product SET productname='" + txt_pname.Text + "',rate='" + txt_rate.Text + "',quality='" + txt_qty.Text + "',description='" + txt_Dscrtn.Text + "'  WHERE pid ='" + pid + "' ");

            }
            else
            {
                int a = db.exequery("UPDATE Product SET category='" + ddl_caterory.SelectedValue + "',brand='" + ddl_brand.SelectedValue + "',productname='" + txt_pname.Text + "',rate='" + txt_rate.Text + "',quality='" + txt_qty.Text + "',description='" + txt_Dscrtn.Text + "' ,img='" + Image + "'  WHERE pid ='" + pid + "' ");

            }
            if (ddl_brand.SelectedValue == Session["b"].ToString())
            {
                int a = db.exequery("UPDATE Product SET productname='" + txt_pname.Text + "',rate='" + txt_rate.Text + "',quality='" + txt_qty.Text + "',description='" + txt_Dscrtn.Text + "'  ,img='" + Image + "'  WHERE pid ='" + pid + "' ");

            }
            else
            {
                int a = db.exequery("UPDATE Product SET category='" + ddl_caterory.SelectedValue + "',brand='" + ddl_brand.SelectedValue + "',productname='" + txt_pname.Text + "',rate='" + txt_rate.Text + "',quality='" + txt_qty.Text + "',description='" + txt_Dscrtn.Text + "',img='" + Image + "'  WHERE pid ='" + pid + "' ");

            }
        }
        else
        {
            if (ddl_caterory.SelectedValue == Session["c"].ToString())
            {
                int a = db.exequery("UPDATE Product SET productname='" + txt_pname.Text + "',rate='" + txt_rate.Text + "',quality='" + txt_qty.Text + "',description='" + txt_Dscrtn.Text + "'  WHERE pid ='" + pid + "' ");

            }
            else
            {
                int a = db.exequery("UPDATE Product SET category='" + ddl_caterory.SelectedValue + "',brand='" + ddl_brand.SelectedValue + "',productname='" + txt_pname.Text + "',rate='" + txt_rate.Text + "',quality='" + txt_qty.Text + "',description='" + txt_Dscrtn.Text + "'  WHERE pid ='" + pid + "' ");

            }
            if (ddl_brand.SelectedValue == Session["b"].ToString())
            {
                int a = db.exequery("UPDATE Product SET productname='" + txt_pname.Text + "',rate='" + txt_rate.Text + "',quality='" + txt_qty.Text + "',description='" + txt_Dscrtn.Text + "'  WHERE pid ='" + pid + "' ");

            }
            else
            {
                int a = db.exequery("UPDATE Product SET category='" + ddl_caterory.SelectedValue + "',brand='" + ddl_brand.SelectedValue + "',productname='" + txt_pname.Text + "',rate='" + txt_rate.Text + "',quality='" + txt_qty.Text + "',description='" + txt_Dscrtn.Text + "'  WHERE pid ='" + pid + "' ");

            }
            // int a = db.exequery("UPDATE Product SET category='" + ddl_caterory.SelectedValue + "',brand='" + ddl_brand.SelectedValue + "',productname='" + txt_pname.Text + "',rate='" + txt_rate.Text + "',quality='" + txt_qty.Text + "',description='" + txt_Dscrtn.Text + "'  WHERE pid ='" + pid + "' ");

            // Response.Write("Please Upload your Image");
        }

        Response.Redirect("~/Admin/viewProducts.aspx");
    }



    protected void ddl_caterory_SelectedIndexChanged(object sender, EventArgs e)
    {
        brand();
    }
}
