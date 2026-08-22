using MySql.Data.MySqlClient;
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
        ((Literal)Master.FindControl("litBrowserTitle")).Text = Page.Title;
    }

    //protected void save_Click(object sender, EventArgs e)
    //{
    //    Class1 cc = new Class1();
    //    MySqlConnection con = cc.mycon;
    //    con.Open();
    //    MySqlCommand cmd = new MySqlCommand("insert into contact(name,mobile,email,message,created_date) values(@name,@mobile,@email,@message,@created_date)", con);
    //    cmd.Parameters.AddWithValue("@name", name.Value.Trim());
    //    cmd.Parameters.AddWithValue("@mobile", mobile.Value.Trim());
    //    cmd.Parameters.AddWithValue("@email", email.Value.Trim());
    //    cmd.Parameters.AddWithValue("@message", message.Value.Trim());
    //    cmd.Parameters.AddWithValue("@created_date", DateTime.Now.ToString("yyyy/MM/dd"));
    //    cmd.ExecuteNonQuery();
    //    ScriptManager.RegisterStartupScript(this, GetType(), "sa", "alert('Your Query Submit Successfully. We will contact soon.');window.location.href='/'", true);
    //    con.Close();
    //}
}