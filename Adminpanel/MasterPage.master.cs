using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.IO;

public partial class Adminpanel_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
        Response.Cache.SetNoStore();

        if ((String)Session["Admini"] == "")
            Response.Redirect("~/Adminpanel/Login.aspx");
        if (!IsPostBack)
        {
            username.Text =(string) Session["Admini"];
        }
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session["Admini"] = "";
        Response.Redirect("~/Default.aspx");
    }

}