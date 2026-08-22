using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ISO90012015 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ((Literal)Master.FindControl("litBrowserTitle")).Text = Page.Title;
        if (!IsPostBack)
        {
            FillCaptcha();
        }
    }

    protected void save_Click(object sender, EventArgs e)
    {
        if (Session["captcha"].ToString() != txtcaptcha.Text)
        {
            Response.Write("<script>alert('Invalid captcha code')</script>");
            FillCaptcha();
        }
        else
        {
            Class1 cc = new Class1();
            name.Text = cc.stringreplace(name.Text.Trim());
            phone.Text = cc.stringreplace(phone.Text.Trim());
            email.Text = cc.stringreplace(email.Text.Trim());
            company.Text = cc.stringreplace(company.Text.Trim());
            MySqlConnection con = cc.mycon;
            con.Open();
            MySqlCommand cmd = new MySqlCommand("insert into isoquery(name,phone,email,company,isotype,created_date) values(@name,@phone,@email,@company,@isotype,@created_date)", con);
            cmd.Parameters.AddWithValue("@name", name.Text.Trim());
            cmd.Parameters.AddWithValue("@phone", phone.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email.Text.Trim());
            cmd.Parameters.AddWithValue("@company", company.Text.Trim());
            cmd.Parameters.AddWithValue("@isotype", "ISO 9001-2015");
            cmd.Parameters.AddWithValue("@created_date", DateTime.Now.ToString("yyyy/MM/dd"));
            cmd.ExecuteNonQuery();

            try
            {
                using (MailMessage mm = new MailMessage("sales@competentcertification.com", "sales@competentcertification.com"))
                {
                    mm.Subject = "Query from competentcertification.com";
                    mm.Body = "Name:" + name.Text.Trim() + "<br/>" + "Mobile:" + phone.Text.Trim() + "<br/>" + "Email:" + email.Text.Trim() + "<br/>" + "Company:" + company.Text.Trim();
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential("sales@competentcertification.com", "vfttqwmflmmgbbta");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                }
            }
            catch { }

            ScriptManager.RegisterStartupScript(this, GetType(), "sa", "alert('Your Query Submit Successfully. We will contact soon.');window.location.href='Thanks.aspx'", true);
            con.Close();
        }
    }

    void FillCaptcha()
    {
        try
        {
            Random random = new Random();
            string combintaion = "0123456789";
            StringBuilder captcha = new StringBuilder();
            for (int i = 0; i < 6; i++)
                captcha.Append(combintaion[random.Next(combintaion.Length)]);
            Session["captcha"] = captcha.ToString();
            imgcapture.ImageUrl = "generate.aspx?" + DateTime.Now.Ticks.ToString();
        }
        catch
        {
            throw;
        }
    }

    protected void refbutton_Click(object sender, EventArgs e)
    {
        FillCaptcha();
    }
}