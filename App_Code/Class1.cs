using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using MySql.Data.MySqlClient;
using System.Security.Cryptography;

/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{

   // MySqlConnection con = new MySqlConnection("data source=localhost; initial catalog=competentcertification;User id=root; password=root");
    MySqlConnection con = new MySqlConnection("data source=72.60.75.209; initial catalog=u306755197_lxqbAsjZq_competent;User id=u306755197_lxqbAsjZq_competent; password='H6g>dEv89g'");    //MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["conString"].ConnectionString.ToString());
    public MySqlConnection mycon
    {
        get
        {
            return con;
        }
    }

    public void yeardata(DropDownList yr)
    {
        int a, c = 0;
        for (a = 2012; a <= 2020; a++)
        {
            yr.Items.Insert(c, a.ToString());
            c++;
        }
    }
    public void statedata(DropDownList sta)
    {
        sta.Items.Insert(0, "Select");
        sta.Items.Insert(1, "Delhi");
        sta.Items.Insert(2, "Bihar");
        sta.Items.Insert(3, "M.P");
        sta.Items.Insert(4, "H.P");
        sta.Items.Insert(5, "U.P");
        sta.Items.Insert(6, "Chatisgargh");
        sta.Items.Insert(7, "Uttranchal");
        sta.Items.Insert(8, "Arunachal Pradesh");
        sta.Items.Insert(9, "Daman and Diu");
        sta.Items.Insert(10, "Karnatka");
        sta.Items.Insert(11, "Kerala");
        sta.Items.Insert(12, "Maharastra");
        sta.Items.Insert(13, "West Bangal");
        sta.Items.Insert(14, "Jammu and Kashmir");
        sta.Items.Insert(15, "Rajasthan");
        sta.Items.Insert(16, "Haryana");
        sta.Items.Insert(17, "Punjab");
        sta.Items.Insert(18, "Gujrat");
        sta.Items.Insert(19, "Mijoram");
        sta.Items.Insert(20, "Nagaland");
        sta.Items.Insert(21, "Andman and Nicobar Island");
        sta.Items.Insert(22, "Andhra Pradesh");
        sta.Items.Insert(23, "Dadar and Nagar Haweli");
        sta.Items.Insert(24, "Manipur");
        sta.Items.Insert(25, "Jharkhand");
        sta.Items.Insert(26, "Orisa");
        sta.Items.Insert(27, "Tamilnadu");
        sta.Items.Insert(28, "Tripura");
    }
    public void citydata(DropDownList cta)
    {
     cta.Items.Insert(1, "Agra");
     cta.Items.Insert(2, "Ahmedabad");
     cta.Items.Insert(2, "Aligarh");
     cta.Items.Insert(2, "Amritsar");
     cta.Items.Insert(2, "Aurangabad");
    }
    public string DecryptString(string Message)
    {
        const string passphrase = "iso@34!asl&*lalit";
        byte[] Results;
        System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();
        MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
        byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(passphrase));
        TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();
        TDESAlgorithm.Key = TDESKey;
        TDESAlgorithm.Mode = CipherMode.ECB;
        TDESAlgorithm.Padding = PaddingMode.PKCS7;
        byte[] DataToDecrypt = Convert.FromBase64String(Message);
        try
        {
            ICryptoTransform Decryptor = TDESAlgorithm.CreateDecryptor();
            Results = Decryptor.TransformFinalBlock(DataToDecrypt, 0, DataToDecrypt.Length);
        }
        finally
        {
            TDESAlgorithm.Clear();
            HashProvider.Clear();
        }
        return UTF8.GetString(Results);
    }
    public void disableSubmitButton(Button objButton)
    {
        objButton.CausesValidation = false;
        string validationGroup = objButton.ValidationGroup;
        if (string.IsNullOrEmpty(validationGroup))
            objButton.Attributes.Add("onclick", "if (Page_ClientValidate()) {this.value=\"Processing...\";this.disabled=true;" + objButton.Page.ClientScript.GetPostBackEventReference(objButton, "").ToString() + "}");
        else
            objButton.Attributes.Add("onclick", "if (Page_ClientValidate(\"" + validationGroup + "\")) {this.value=\"Processing...\";this.disabled=true;" + objButton.Page.ClientScript.GetPostBackEventReference(objButton, "").ToString() + "}");
    }
    public void itemunit(DropDownList un)
    {
        un.Items.Insert(0, "Select");
        un.Items.Insert(1, "XS");
        un.Items.Insert(2, "S");
        un.Items.Insert(3, "M");
        un.Items.Insert(4, "L");
        un.Items.Insert(5, "XL");
        un.Items.Insert(6, "NA");
    }
    public void itemunitcheckbox(CheckBoxList un)
    {
        un.Items.Insert(0, "XS");
        un.Items.Insert(1, "S");
        un.Items.Insert(2, "M");
        un.Items.Insert(3, "L");
        un.Items.Insert(4, "XL");
    }
    public void dropdownbind(DropDownList dd, string sql, string textfield)
    {
        MySqlDataAdapter da = new MySqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "aaa1");
        dd.DataSource = ds;
        dd.DataTextField = textfield;
        dd.DataBind();
        dd.Items.Insert(0, "Select");
    }

    public void checkdownbind(CheckBoxList dd, string sql, string textfield)
    {
        MySqlDataAdapter da = new MySqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "aaa1");
        dd.DataSource = ds;
        dd.DataTextField = textfield;
        dd.DataBind();
    }

    public void gridbind(GridView gr, string sql)
    {

        Class1 cc = new Class1();
        MySqlConnection con10 = cc.mycon;
        con10.Open();

        //MySqlCommand cmd = new MySqlCommand();
        //cmd.Connection = con10;
        //cmd.CommandText = sql;
        //MySqlDataReader dReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        //DataTable dTable = new DataTable();
        //dTable.Load(dReader);
        MySqlDataAdapter da = new MySqlDataAdapter(sql, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "gridbnd");
        gr.DataSource = ds;
        gr.DataBind();
        //cmd.Dispose();
        con10.Close();
    }

    public String datareader(string sql)
    {
        Class1 cc = new Class1();
        MySqlConnection con = cc.mycon;
        con.Open();
        MySqlCommand cmd = new MySqlCommand(sql,con);
        MySqlDataReader dr = cmd.ExecuteReader();
        string ff = "";
        if (dr.HasRows)
        {
            if (dr.Read())
            {
                if (dr[0].ToString().Trim() != "")
                   ff= dr[0].ToString().Trim();
            }
        } dr.Close();
        con.Close();
        return ff;

    }
    public string reader(String sql)
    {
        Class1 cc = new Class1();
        MySqlConnection con = cc.mycon;
        con.Open();
        MySqlCommand cmd = new MySqlCommand(sql, con);
        MySqlDataReader dr = cmd.ExecuteReader();
        string ff = "1";
        if (dr.HasRows)
        {
            if (dr.Read())
            {
                if (dr[0].ToString().Trim() != "")
                    ff = "0";
            }
        }
        dr.Close();
        con.Close();
        return ff;
    }

    public string pagecheck(string uname)
    {
        string re = "0";
        try
        {
            string sPagePath = System.Web.HttpContext.Current.Request.Url.AbsolutePath;
            System.IO.FileInfo oFileInfo = new System.IO.FileInfo(sPagePath);
            string sPageName = oFileInfo.Name;
            Class1 cc = new Class1();
            MySqlConnection con = cc.mycon;
            con.Open();
            MySqlCommand cmd = new MySqlCommand("select *from admin where uname=@ref", con);
            cmd.Parameters.AddWithValue("@ref", uname.Trim());
            MySqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                if (dr.Read())
                {
                    if (sPageName == "ApplicationForm.aspx" && dr["applicationform"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Application-List.aspx" && dr["applicationformlist"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Edit-ApplicationForm.aspx" && dr["EditApplicationForm"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Approval-Pending.aspx" && dr["approval"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Bill.aspx" && dr["bill"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Bill-List.aspx" && dr["bill_list"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Review.aspx" && dr["review"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Edit-Review.aspx" && dr["editreview"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Payment.aspx" && dr["payment"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Payment-List.aspx" && dr["paymentlist"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Courier.aspx" && dr["courier"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Courier-List.aspx" && dr["courierlist"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Print-Bill.aspx" && dr["printbill"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Partywisebalance.aspx" && dr["partywisebalance"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Export.aspx" && dr["export"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Ratelist.aspx" && dr["ratelist"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Report - Ratelist.aspx" && dr["reportratelist"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Associate-List.aspx" && dr["associatelist"].ToString().Trim() == "1")
                        re = "1";
                    if (sPageName == "Associatepaymentreceipt.aspx" && dr["Associatepaymentreceipt"].ToString().Trim() == "1")
                        re = "1";
                }
            }
            con.Close();
        }
        catch { }
        return re;
    }
    public string EncryptData(string Message)
    {
        const string passphrase = "iso@34!asl&*lalit";
        byte[] Results;
        System.Text.UTF8Encoding UTF8 = new System.Text.UTF8Encoding();
        MD5CryptoServiceProvider HashProvider = new MD5CryptoServiceProvider();
        byte[] TDESKey = HashProvider.ComputeHash(UTF8.GetBytes(passphrase));
        TripleDESCryptoServiceProvider TDESAlgorithm = new TripleDESCryptoServiceProvider();
        TDESAlgorithm.Key = TDESKey;
        TDESAlgorithm.Mode = CipherMode.ECB;
        TDESAlgorithm.Padding = PaddingMode.PKCS7;
        byte[] DataToEncrypt = UTF8.GetBytes(Message);
        try
        {
            ICryptoTransform Encryptor = TDESAlgorithm.CreateEncryptor();
            Results = Encryptor.TransformFinalBlock(DataToEncrypt, 0, DataToEncrypt.Length);
        }
        finally
        {
            TDESAlgorithm.Clear();
            HashProvider.Clear();
        }
        return Convert.ToBase64String(Results);
    }
	public string stringreplace(string st)
    {
        st = st.Replace("'", "");
        st = st.Replace("&", "and");
        st = st.Replace("/", "-");
        return st;
    }
}