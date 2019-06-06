using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bankadmin_AccountDetails : System.Web.UI.Page
{
    DB db = new DB();
    string otp;
    string uniqueId;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            showdetails();
        }

    }
    private void showdetails()
    {
        DataTable dt = db.selectquery("select * from Accont");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        password();
        accountno();
        int index = Convert.ToInt32(e.CommandArgument);
        GridViewRow row = GridView1.Rows[index];  // row which u have created..
        string requestNo = row.Cells[0].Text;
        string mail = row.Cells[4].Text;           


        var fromAddress = "firebaseinet@gmail.com";
              var toAddress = mail.ToString();

        const string fromPassword = "inetfire";

      
        string subject = "Account Information";

        string body = "Your Account Varified  Successfully "+ "\n";

        body += "Account NO Is: " + uniqueId + "\n";

        body += "Password: " + otp + "\n";
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


        int a = db.exequery("update Accont set Status='Approved', accountno='"+ uniqueId + "',username='"+ mail + "',password='"+ otp+"' where Aid='" + requestNo + "'");

        showdetails();
    }
    protected void SendMail()

    {

        // Gmail Address from where you send the mail


    }
    public void password()
    {
        string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
        string numbers = "1234567890";

        string characters = numbers;

        characters += alphabets + small_alphabets + numbers;

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

        //lblCaptchaMessage.Text = otp;
    }

    public void accountno()
    {
         uniqueId = "";
        Random randomizer = new Random();
        for (int i = 0; i < 12; i++)
        {
            uniqueId += randomizer.Next(0, 10);
        }
        

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

