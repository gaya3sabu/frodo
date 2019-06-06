using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BANKING_DepositeAmount : System.Web.UI.Page
{
    DB db = new DB();
    string ano;
    decimal balance;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["accountno"] != null)
        {
            ano = Session["accountno"].ToString();
            if (!IsPostBack)
            {
                DataTable dt2 = db.selectquery("select *  from Accont  where accountno= '" + ano + "'");

                if (dt2.Rows.Count > 0)
                {
                    txt_acntno.Text = ano;
                    txt_holder.Text = dt2.Rows[0]["name"].ToString();

                }
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt2 = db.selectquery("select balance from TransactionDetails where Accountno= '" + ano + "' order by trid desc");

        if (dt2.Rows.Count > 0)
        {
            decimal bl =Convert.ToDecimal(dt2.Rows[0]["balance"]);
           decimal amnt    = Convert.ToDecimal(txt_amount.Text);
            balance = bl +amnt ;
        }
        else
        {
             balance =Convert.ToDecimal(txt_amount.Text);
        }
        
        int a = db.exequery("insert into TransactionDetails (Accountno,oprations,Amnt,balance,date)values('" + txt_acntno.Text + "','DEPOSITE','" + txt_amount.Text + "','" + balance + "','" + DateTime.Today.ToString("yyyy/MM/dd")+ "')");
      //  int a = db.exequery("insert into Transaction(Accountno,oprations,Amnt,balance,date)values('" + txt_acntno.Text + "','DEPOSITE','" + txt_amount.Text + "','"+balance+"','" + DateTime.Today + "')");
        if (a > 0)
        {
            lblmsg.Text = "Deposite Done!!";
            txt_acntno.Text = "";
            txt_amount.Text = " ";
            txt_holder.Text = "";

        }
    }
}