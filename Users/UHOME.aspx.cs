using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_UHOME : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {



       

            if (!IsPostBack)
        {
            showmobile();
            showlap();
            showtv();
        }

    }
    private void showmobile()
    {
        DataTable dt = db.selectquery(" select top 5(p.pid),p.img,p.productname,p.category,b.brand,p.rate from Product p join brand b on p.brand = b.Bid where p.category='1'  ORDER BY pid ASC");
               
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }


    private void showlap()
    {
        DataTable dt = db.selectquery(" select top 5(p.pid),p.img,p.productname,p.category,b.brand,p.rate from Product p join brand b on p.brand = b.Bid where p.category='2'  ORDER BY pid ASC");

        DataList2.DataSource = dt;
        DataList2.DataBind();
    }


    private void showtv()
    {
        DataTable dt = db.selectquery(" select top 5(p.pid),p.img,p.productname,p.category,b.brand,p.rate from Product p join brand b on p.brand = b.Bid where p.category='4'  ORDER BY pid ASC");

        DataList3.DataSource = dt;
        DataList3.DataBind();
    }



    
    protected void img_mob_Click1(object sender, ImageClickEventArgs e)
    {
        var button = sender as ImageButton;
        var dataListItem = button.Parent as DataListItem;
        var hfield = dataListItem.FindControl("hfield") as HiddenField;
        Session["s"] = hfield.Value;

        Response.Redirect("Products.aspx?upid=" + hfield.Value);
    }




    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "click")
        {
            // your logic
        }
    }

    protected void btn_submit_Click(object sender, ImageClickEventArgs e)
    {
        var button = sender as ImageButton;
        var dataListItem = button.Parent as DataListItem;
        var hfield = dataListItem.FindControl("hfield") as HiddenField;
        Session["s"] = hfield.Value;

        Response.Redirect("Products.aspx?upid=" + hfield.Value);
    }

    protected void btn_lap_Click(object sender, ImageClickEventArgs e)
    {
        var button = sender as ImageButton;
        var dataListItem = button.Parent as DataListItem;
        var hfield = dataListItem.FindControl("hfield") as HiddenField;
        Session["s"] = hfield.Value;

        Response.Redirect("Products.aspx?upid=" + hfield.Value);
    }

    protected void btn_tv_Click(object sender, ImageClickEventArgs e)
    {
        var button = sender as ImageButton;
        var dataListItem = button.Parent as DataListItem;
        var hfield = dataListItem.FindControl("hfield") as HiddenField;
        Session["s"] = hfield.Value;

        Response.Redirect("Products.aspx?upid=" + hfield.Value);

    }
}

