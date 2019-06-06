using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       string str = "1234567890123456";
       string result = string.Empty;
        foreach (char ch in str)
        {
            result += Convert.ToString((int)ch, 2);
        }
        Label1.Text = result.ToString();
    }
}