using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;

public partial class Adminpanel_RegistrationList : System.Web.UI.Page
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
           BindData();
        }
    }

    protected void BindData()
    {
        //showing products in a detailed list form
        MySqlConnection con = cc.mycon;
        con.Open();
        DataSet ds = new DataSet();
        string cmdstr = "select * from application order by id desc";
        MySqlCommand cmd = new MySqlCommand(cmdstr, con);
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }

}