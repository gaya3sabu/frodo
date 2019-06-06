using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Details : System.Web.UI.Page
{
    DB db = new DB();
    int a;
    string c;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Rid"] != null)
        {
            c = Session["Rid"].ToString();
        }
        if (!IsPostBack)
        {
            if (Request.QueryString["pid"] != null)
            {
                string p = Request.QueryString["pid"].ToString();
                DataTable dt = db.selectquery(" select p.pid,p.img,p.productname,p.description,b.brand,p.rate from Product p join brand b on p.brand = b.Bid where p.pid='" + p + "'");
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }
           
        }

    protected void textBox_TextChanged(object sender, EventArgs e)
    {
        // Your code here
    }


    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (Session["Rid"]== null)
        {
            Response.Redirect("~/Login.aspx");

        }
        else
        {
            if (e.CommandName == "buy")
            {
                a = 1;
            }
            Panel1.Visible = true;
        }
    
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        

        }


    protected void Button4_Click(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }

    protected void Button4_Click1(object sender, EventArgs e)
    {
        if(txt_qty.Text!=string.Empty)
        {
            cal();
            Label2.Text = " ";
            for (int j = 0; j < DataList1.Controls.Count; j++)
            {
                DateTime dat = DateTime.Now;
                string lbl_rate = ((Label)DataList1.Items[j].FindControl("lbl_rate")).Text;
                string lbl_pid = ((Label)DataList1.Items[j].FindControl("lbl_pid")).Text;
                int ab = db.exequery("insert into cart (productid,qty,rate,totalamount,uid,date,status)values('" + lbl_pid + "','" + txt_qty.Text + "','" +Convert.ToDecimal(lbl_rate) + "','" + txt_totalamnt.Text + "','"+c+"','"+ dat.ToString("yyyy-MM-dd")+ "','cart')");

                if (a == 1)
                {
                    Session["amnt"] = txt_totalamnt.Text;
                    DataTable dt = db.selectquery(" select top 1 cartid from cart order by cartid DESC");
                    if (dt.Rows.Count > 0)
                    {
                        int rno = Convert.ToInt32(dt.Rows[0]["cartid"]);

                        Response.Redirect("Payment.aspx?cartid="+rno);
                    }
                }              
                
                        
               
               else if (a != 1)
                {
                    Response.Redirect("Cartlist.aspx");
                }



            }
          

        }
        else
        {
            Label2.Text = "enter the quentity";
        }
       
    }
    public void cal()
    {
        if (txt_qty.Text != string.Empty)
        {
            for (int j = 0; j < DataList1.Controls.Count; j++)
            {
                string lbl_rate = ((Label)DataList1.Items[j].FindControl("lbl_rate")).Text;
                decimal rr = Convert.ToDecimal(lbl_rate);
                decimal qq = Convert.ToDecimal(txt_qty.Text);
                decimal tr = (rr * qq);
                txt_totalamnt.Text = tr.ToString("0.00");

            }
        }
    }
    protected void txt_qty_TextChanged(object sender, EventArgs e)
    {

        cal();

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void TxtComments_TextChanged(object sender, EventArgs e)
    {
      
    }

    protected void Button5_Click1(object sender, EventArgs e)
    {
        Panel1.Visible = false;
    }
}
