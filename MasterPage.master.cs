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

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillCaptcha();
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
    protected void query_Click(object sender, EventArgs e)
    {
        if (Session["captcha"].ToString() != txtcaptcha.Text)
        {
            Response.Write("<script>alert('Invalid captcha code')</script>");
            FillCaptcha();
        }
        else
        {
            Class1 cc = new Class1();

            fname.Text = cc.stringreplace(fname.Text.Trim());
            email1.Text = cc.stringreplace(email1.Text.Trim());
            mobile.Text = cc.stringreplace(mobile.Text.Trim());
            message.Text = cc.stringreplace(message.Text.Trim());

            MySqlConnection con = cc.mycon;
            con.Open();
            MySqlCommand cmd = new MySqlCommand("insert into contact(name,mobile,email,message,created_date) values(@name,@mobile,@email,@message,@created_date)", con);
            cmd.Parameters.AddWithValue("@name", fname.Text.Trim());
            cmd.Parameters.AddWithValue("@mobile", mobile.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email1.Text.Trim());
            cmd.Parameters.AddWithValue("@message", message.Text.Trim());
            cmd.Parameters.AddWithValue("@created_date", DateTime.Now.ToString("yyyy/MM/dd"));
            cmd.ExecuteNonQuery();

            try
            {
                StringBuilder sb = new StringBuilder();
                using (MailMessage mm = new MailMessage("sales@competentcertification.com", "sales@competentcertification.com"))
                {
                    mm.Subject = "Query from competentcertification.com";
                    mm.Body = "Name:" + fname.Text.Trim() + "<br/>" + "Mobile:" + mobile.Text.Trim() + "<br/>" + "Email:" + email1.Text.Trim() + "<br/>" + "Message:" + message.Text.Trim();
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

    protected void SideQuery_Click(object sender, EventArgs e)
    {
        if (Session["captcha"].ToString() != txtcaptcha.Text)
        {
            Response.Write("<script>alert('Invalid captcha code')</script>");
            FillCaptcha();
        }
        else
        {
            Class1 cc = new Class1();
            nameside.Text = cc.stringreplace(nameside.Text.Trim());
            emailside.Text = cc.stringreplace(emailside.Text.Trim());
            mobileside.Text = cc.stringreplace(mobileside.Text.Trim());
            messageside.Text = cc.stringreplace(messageside.Text.Trim());
            MySqlConnection con = cc.mycon;
            con.Open();
            MySqlCommand cmd = new MySqlCommand("insert into contact(name,mobile,email,message,created_date) values(@name,@mobile,@email,@message,@created_date)", con);
            cmd.Parameters.AddWithValue("@name", nameside.Text.Trim());
            cmd.Parameters.AddWithValue("@mobile", mobile.Text.Trim());
            cmd.Parameters.AddWithValue("@email", email1.Text.Trim());
            cmd.Parameters.AddWithValue("@message", message.Text.Trim());
            cmd.Parameters.AddWithValue("@created_date", DateTime.Now.ToString("yyyy/MM/dd"));
            cmd.ExecuteNonQuery();

            try
            {
                StringBuilder sb = new StringBuilder();
                using (MailMessage mm = new MailMessage("sales@competentcertification.com", "sales@competentcertification.com"))
                {
                    mm.Subject = "Query from competentcertification.com";
                    mm.Body = "Name:" + nameside.Text.Trim() + "<br/>" + "Mobile:" + mobileside.Text.Trim() + "<br/>" + "Email:" + emailside.Text.Trim() + "<br/>" + "Message:" + messageside.Text.Trim();
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

    protected void refbutton_Click(object sender, EventArgs e)
    {
        FillCaptcha();
    }
}
