using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
public partial class Adminpanel_Login : System.Web.UI.Page
{
    Class1 cc = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
       
        MySqlConnection con = cc.mycon;
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select userid from user where userid=@uname and password=@pass", con);
        cmd.Parameters.AddWithValue("@uname", uname.Value.Trim());
        cmd.Parameters.AddWithValue("@pass", password.Value.Trim());
        MySqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            if(dr.Read())
            {
                Session["Admini"] = dr[0].ToString();
                Response.Redirect("Dashboard.aspx");
            }
        }
        dr.Close();
        con.Close();
    }
}