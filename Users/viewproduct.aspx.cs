using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_viewproduct : System.Web.UI.Page
{
    DB db = new DB();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = db.selectquery(" select top 4(p.pid),p.img,p.img2,p.img3,p.description,p.productname,b.brand,p.rate from Product p join brand b on p.brand = b.Bid where p.pid='25'   ORDER BY pid ASC");

        dlproducts.DataSource = dt;
        dlproducts.DataBind();

    }
}