using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminpanel_Application : System.Web.UI.Page
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
            string cmdstr = "select isoname from isostandard";
            MySqlCommand cmd = new MySqlCommand(cmdstr, con);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            adp.Fill(ds);
            isostandard.DataSource = ds;
            isostandard.DataTextField = "isoname";
            isostandard.DataBind();
            isostandard.Items.Insert(0, "Select");
            con.Close();
        }
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        MySqlConnection con = cc.mycon;
        con.Open();
        MySqlCommand cmd = new MySqlCommand("insert into application(companyname,address,scope,phoneno,email,certificateno,issuedate,expirydate,orginaldate,isostandard,created_date) values(@companyname,@address,@scope,@phoneno,@email,@certificateno,@issuedate,@expirydate,@orginaldate,@isostandard,@created_date)", con);
        cmd.Parameters.AddWithValue("@companyname", companyname.Value.Trim());
        cmd.Parameters.AddWithValue("@address", address.Value.Trim());
        cmd.Parameters.AddWithValue("@scope", scope.Value.Trim());
        cmd.Parameters.AddWithValue("@phoneno", phoneno.Value.Trim());
        cmd.Parameters.AddWithValue("@email", email.Value.Trim());
        cmd.Parameters.AddWithValue("@certificateno", certificateno.Value.Trim());
        cmd.Parameters.AddWithValue("@issuedate",  issuedate.Value);
        cmd.Parameters.AddWithValue("@expirydate", expirydate.Value);
        cmd.Parameters.AddWithValue("@orginaldate", orignaldate.Value);
        cmd.Parameters.AddWithValue("@isostandard", isostandard.Text.Trim());
        cmd.Parameters.AddWithValue("@created_date", DateTime.Now.ToString("yyyy/MM/dd"));
        cmd.ExecuteNonQuery();
        //if (t > 0)
            ScriptManager.RegisterStartupScript(this, GetType(), "sa", "alert('Application Saved');window.location.href='" + ResolveUrl("~/Adminpanel/Application.aspx") + "'", true);
        
        con.Close();
    }

    protected void Cancel_Click(object sender, EventArgs e)
    {
        companyname.Value = "";
    }

    protected void exit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Adminpanel/Dashboard.aspx");
    }

}