using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Payment : System.Web.UI.Page
{ DB db = new DB();
    string s;
    string otp,num, pid,ano;
    int v;

    decimal bl, amnt, balance;
    protected void Page_Load(object sender, EventArgs e)
    {
       
            if (Request.QueryString["cartid"] != null)
            {
                Label1.Text = Session["amnt"].ToString();
                pid = Request.QueryString["cartid"].ToString();
                v = Convert.ToInt32(pid.Trim());

            }
        }
    


    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        //Panel2.Visible = false;
        Panel1.Visible = true;

        int a = db.exequery("update pettycase set status='Completed', paymentmethod='Card' where  pettyid='" + s + "' ");
        if (a>0)
        {


        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://retail.onlinesbi.com/retail/login.htm");
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://netbanking.canarabank.in/entry/ENULogin.jsp?#");
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://netbanking.hdfcbank.com/netbanking/?_ga=2.192425642.1600828850.1537007146-49528205.1537007146");
    }

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://retail.axisbank.co.in/wps/portal/rBanking/axisebanking/AxisRetailLogin/!ut/p/a1/04_Sj9CPykssy0xPLMnMz0vMAfGjzOKNAzxMjIwNjLwsQp0MDBw9PUOd3HwdDQwMjIEKIoEKDHAARwNC-sP1o_ArMYIqwGNFQW6EQaajoiIAVNL82A!!/dl5/d5/L2dBISEvZ0FBIS9nQSEh/");
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://infinity.icicibank.com/corp/AuthenticationController?FORMSGROUP_ID__=AuthenticationFG&__START_TRAN_FLAG__=Y&FG_BUTTONS__=LOAD&ACTION.LOAD=Y&AuthenticationFG.LOGIN_FLAG=1&BANK_ID=ICI&ACCESS_DEV=WAP");
    }

    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.fednetbank.com/corp/AuthenticationController?__START_TRAN_FLAG__=Y&FORMSGROUP_ID__=AuthenticationFG&__EVENT_ID__=LOAD&FG_BUTTONS__=LOAD&ACTION.LOAD=Y&AuthenticationFG.LOGIN_FLAG=1&BANK_ID=049&LANGUAGE_ID=001");
    }

    protected void lbtn_netbanking_Click(object sender, EventArgs e)
    {
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        
      

        string cardno = txt_fno.Text + txt_sno.Text+txt_tno.Text+ txt_frno.Text;
        DataTable dt = db.selectquery("select * from Accont where CvvNo='" + txt_ccv.Text + "' and encryptionkey='" + txt_encryptiom.Text + "' and cardnumber='" + cardno.Trim() + "' ");
        if (dt.Rows.Count > 0)
        {
            Panel3.Visible = true;
            string mail = dt.Rows[0]["email"].ToString();

            string numbers = "1234567890";

            string characters = numbers;

            characters += numbers;

            int length = 6;
            otp = string.Empty;
            for (int i = 0; i < length; i++)
            {
                string character = string.Empty;
                do
                {
                    int index = new Random().Next(0, characters.Length);
                    character = characters.ToCharArray()[index].ToString();
                } while (otp.IndexOf(character) != -1);
                otp += character;
            }

            num = otp;

             Session["otp"] = num;
            var fromAddress = "mysoft.123@gmail.com";
            var toAddress = mail.ToString();

            const string fromPassword = "mysoft123";


            string subject = "Account Information";

            string body = "Your Account Varified  Successfully " + "\n";


            body += "OTP : " + num + "\n";
            var smtp = new System.Net.Mail.SmtpClient();

            {

                smtp.Host = "smtp.gmail.com";

                smtp.Port = 587;

                smtp.EnableSsl = true;

                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;

                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);

                smtp.Timeout = 20000;

            }

            smtp.Send(fromAddress, toAddress, subject, body);

            //GenerateOTP();
        
        }
        else
        {
            lbl_msg.Text = "Invalid Details";
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        
        Panel1.Visible = true;

   
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        Panel1.Visible = false;
   
      
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
   
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel3.Visible = false;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        string cardnumber = txt_fno.Text + txt_sno.Text + txt_tno.Text + txt_frno.Text;

        DataTable dttt2 = db.selectquery("select * from Accont where cardnumber= '" + cardnumber + "' ");
        if(dttt2.Rows.Count>0)
        {
            string Accountno = dttt2.Rows[0]["accountno"].ToString(); 
            DataTable dt2 = db.selectquery("select * from TransactionDetails where Accountno= '" + Accountno + "' order by trid desc");

            if (dt2.Rows.Count > 0)
            {
                bl = Convert.ToDecimal(dt2.Rows[0]["balance"]);
                amnt = Convert.ToDecimal(Label1.Text);
                balance = bl - amnt;

                int h = db.exequery("insert into TransactionDetails (Accountno,oprations,Amnt,balance,date)values('" + Accountno + "','OnlineShopping','" + amnt + "','" + balance + "','" + DateTime.Today.ToString("yyyy/MM/dd") + "')");


                Label2.Text = "your Account Balance is -" + "'" + balance + "'";

                if (txt_otp.Text != string.Empty)
                {
                    string otttpp = Session["otp"].ToString();
                    if (txt_otp.Text == otttpp)
                    {
                        int a = db.exequery("update cart set Status='Buy',date='"+DateTime.Now.ToString("yyyy-MM-dd")+"' where cartid='" + pid.Trim() + "'");


                        lbl_otp.Text = "Payment Completed Successfully !!!";

                    }
                }
            }

            else
            {
                lbl_otp.Text = "Invalid !!!";
            }
            }
        }
}
