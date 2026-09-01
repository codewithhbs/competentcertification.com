using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminpanel_ISOStandard : System.Web.UI.Page
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
            MySqlConnection con = cc.mycon;
            con.Open();
            DataSet ds = new DataSet();
            string cmdstr = "select *from isostandard";
            MySqlCommand cmd = new MySqlCommand(cmdstr, con);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            adp.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        MySqlConnection con = cc.mycon;
        con.Open();
        MySqlCommand cmd = new MySqlCommand("insert into isostandard(isoname,created_date) values('" + isoname.Value.Trim() + "','" + DateTime.Now.ToString("yyyy/MM/dd") + "')", con);
        int t = cmd.ExecuteNonQuery();
        if (t > 0)
            ScriptManager.RegisterStartupScript(this, GetType(), "sa", "alert('Standard Saved');", true);
        
        con.Close();
        isoname.Value = "";
    }

    protected void Cancel_Click(object sender, EventArgs e)
    {
        isoname.Value = "";
    }

    protected void exit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Adminpanel/Dashboard.aspx");
    }
}