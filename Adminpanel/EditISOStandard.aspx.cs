using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminpanel_EditISOStandard : System.Web.UI.Page
{
    Class1 cc = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();

        if ((String)Session["Admini"] == "")
            Response.Redirect("~/Adminpanel/Login.aspx");

        // to update product details with category and subcategory
        if (!IsPostBack)
        {
            MySqlConnection con = cc.mycon;
            con.Open();
           

            MySqlCommand cmd11 = new MySqlCommand("select * from isostandard where id='" + Request["id"] + "'", con);
            MySqlDataReader dr11 = cmd11.ExecuteReader();
            if (dr11.HasRows)
            {
                if (dr11.Read())
                {
                    isoname.Value = dr11["isoname"].ToString();
                    
                }
            }
            dr11.Close();
            con.Close();


        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        MySqlConnection con = cc.mycon;
        con.Open();

        MySqlCommand cmd = new MySqlCommand("update isostandard set isoname='" + isoname.Value.Trim() + "' where id='" + Request["id"] + "'", con);
        int t = cmd.ExecuteNonQuery();
        if (t > 0)
            ScriptManager.RegisterStartupScript(this, GetType(), "sa", "alert('Standard is Updated');", true);

        con.Close();
        Response.Redirect("ISOStandard.aspx");
    }



    protected void exit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Dashboard.aspx");
    }
}