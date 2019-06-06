using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BANKING_Transactinaldetails : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

           
             if (Session["accountno"] ==null)
            {
                DataTable dt = db.selectquery("select * from TransactionDetails ");
                GridView1.DataSource = dt;
                GridView1.DataBind();


            }
            else if (Session["accountno"] != null)
            {
                string ano = Session["accountno"].ToString();
                DataTable dt = db.selectquery("select * from TransactionDetails where accountno='" + ano + "' ");
                GridView1.DataSource = dt;
                GridView1.DataBind();
            

            }

        }
    }
}
  


