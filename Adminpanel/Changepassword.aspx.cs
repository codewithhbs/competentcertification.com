using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Adminpanel_Changepassword : System.Web.UI.Page
{
    Class1 cc = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();

        if ((String)Session["Admini"] == "")
            Response.Redirect("~/Adminpanel/Login.aspx");

        if (!IsPostBack)
        {
           
        }
    }


    protected void save_Click(object sender, EventArgs e)
    {
        string old = cc.datareader("select password from user where userid='" + Session["Admini"] + "'");
        if (oldpassword.Text.Trim() == old)
        {
            //for updating user password
            MySqlConnection con = cc.mycon;
            con.Open();
            MySqlCommand cmd = new MySqlCommand("update user set password='" + newpassword.Text.Trim() + "' where userid='" + Session["Admini"] + "' ", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Login.aspx");
        }
        else
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Please Tyep Old or Current Password Correctly!')", true);
            oldpassword.Text = "";
            oldpassword.Focus();
        }
    }

    protected void exit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx");
    }
}