using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Default : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = db.selectquery(" select p.pid,p.img,p.productname,b.brand,p.rate from Product p join brand b on p.brand = b.Bid  ORDER BY pid ASC");

        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
}