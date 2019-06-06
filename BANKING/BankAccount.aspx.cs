using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BANKING_BankAccount : System.Web.UI.Page
{
    DB db = new DB();

    //  string uid = Session["uid"].ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    private string GetMD5HashData(string data)
    {
        MD5 md5 = MD5.Create();

        byte[] hashdata = md5.ComputeHash(Encoding.Default.GetBytes(data));
        //   hashdata = Convert.ToBase64String(hashdata);
        StringBuilder returnvalue = new StringBuilder();
        for (int i = 0; i < hashdata.Length; i++)
        {

            returnvalue.Append(hashdata[i].ToString("x2"));
        }
        return returnvalue.ToString();
        //throw new NotImplementedException();
    }
    private string GetMD5HashData1(string data)
    {
        MD5 md5 = MD5.Create();

        byte[] hashdata = md5.ComputeHash(Encoding.Default.GetBytes(data));
        //   hashdata = Convert.ToBase64String(hashdata);
        StringBuilder returnvalue = new StringBuilder();
        for (int i = 0; i < hashdata.Length; i++)
        {

            returnvalue.Append(hashdata[i].ToString("x2"));
        }
        return returnvalue.ToString();
        //throw new NotImplementedException();
    }

    
    private static string GenerateKey(int iKeySize)
    {
        RijndaelManaged aesEncryption = new RijndaelManaged();
        aesEncryption.KeySize = iKeySize;
        aesEncryption.BlockSize = 128;
        aesEncryption.Mode = CipherMode.CBC;
        aesEncryption.Padding = PaddingMode.PKCS7;
        aesEncryption.GenerateIV();
        string ivStr = Convert.ToBase64String(aesEncryption.IV);
        return ivStr;
    }
    //    AES Advanced Encryption Standard:
    //The Advanced Encryption Standard or AES also called Rijndael cipher
    public string EnryptString(string strEncrypted)
    {
        byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(strEncrypted);
        string encrypted = Convert.ToBase64String(b);

        return encrypted;
    }
    public string DeryptStrg(string encrString)
    {
        byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(encrString);
        string decrypted = Convert.ToBase64String(b);
        return decrypted;
    }
    public string DecryptString(string encrString)
    {
        byte[] b;
        string decrypted;
        try
        {
            b = Convert.FromBase64String(encrString);
            decrypted = System.Text.ASCIIEncoding.ASCII.GetString(b);
        }
        catch (FormatException fe)
        {
            decrypted = "";
        }
        return decrypted;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        if (FileUpload1.HasFile)
        {
            string str = FileUpload1.FileName;
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Photo/" + str));
            string Image = "~/Photo/" + str.ToString();

            string name = GetMD5HashData(txt_name.Text);
            //string aadthar = GetMD5HashData(txt_aadharno.Text);
            //string noname = GetMD5HashData(txt_nominee.Text);
            //string noaadthar = GetMD5HashData(txt_NOaadharno.Text);

            //string mm = name + aadthar + noname + noaadthar;


            string enkey = GetMD5HashData1(name.Substring(0, 5));
            enkey = enkey.Substring(0, 8);

            string crdno = EnryptString(txt_cardno.Text);
            string cvv= EnryptString(txt_cvvno.Text);
            string hldr= EnryptString(txt_name.Text);
            string bnry = txt_cardno.Text;


            string result = string.Empty;
            foreach (char ch in bnry)
            {
                result += Convert.ToString((int)ch, 2);
            }

            
            int a = db.exequery("insert into  Accont (TypeofAccount,name,gender,mobile,email,dob,proof,pno,address,street,district,state,pin,aadhaarno,photo,uid,status,Nominee,Noaadhar,CvvNo,Experydate,cardnumber,encryptionkey,binary,encrcardno,encrcvv,encrholder)values('" + rb_type.SelectedItem + "', '" + txt_name.Text + "','" + rb_gender.SelectedItem + "', '" + txt_ph.Text + "', '" + txt_email.Text + "','" + txt_dob.Text + "','" + ddl_proof.SelectedItem + "', '" + txt_pno.Text + "', '" + txt_adrs.Text + "','" + txt_street.Text + "','" + txt_city + "', '" + txt_state.Text + "', '" + txt_pno.Text + "','" + txt_aadharno.Text + "', '" + Image + "', '" + 1 + "','pending','" + txt_nominee.Text + "','" + txt_NOaadharno.Text + "','" + txt_cvvno.Text + "','" + txt_date.Text + "','" + txt_cardno.Text + "','" + enkey + "','" + result + "','" + crdno + "','" + cvv + "','" + hldr + "')");
            if (a > 0)
            {
                int h = db.exequery("insert into TransactionDetails (Accountno,oprations,Amnt,balance,date)values('','Deposite','" + 2000 + "','" + 0 + "','" + DateTime.Today.ToString("yyyy/MM/dd") + "')");

                Response.Write("Account Added successfully ");
                Response.Redirect("~/BANKING/AccountDetails.aspx");
                txt_aadharno.Text = "";
                txt_adrs.Text = "";
                txt_city.Text = "";
                txt_dob.Text = "";
                txt_email.Text = "";
                txt_name.Text = "";
                txt_ph.Text = "";
                txt_pin.Text = "";
                txt_pno.Text = "";
                txt_state.Text = "";
                txt_street.Text = "";


            }
            else
            {
                Response.Write("Try Again !!!!");
            }

        }
        else
        {
            Response.Write("Please Upload your Image");
        }
    }

}