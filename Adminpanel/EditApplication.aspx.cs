using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Adminpanel_EditApplication : System.Web.UI.Page
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
            DataSet ds = new DataSet();
            string cmdstr = "select isoname from isostandard";
            MySqlCommand cmd = new MySqlCommand(cmdstr, con);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            adp.Fill(ds);
            isostandard.DataSource = ds;
            isostandard.DataTextField = "isoname";
            isostandard.DataBind();
            isostandard.Items.Insert(0, "Select");

            MySqlCommand cmd11 = new MySqlCommand("select * from application where id='" + Request["id"] + "'", con);
            MySqlDataReader dr11 = cmd11.ExecuteReader();
            if (dr11.HasRows)
            {
                if (dr11.Read())
                {
                    companyname.Value = dr11["companyname"].ToString();
                    address.Value = dr11["address"].ToString();
                    scope.Value = dr11["scope"].ToString();
                    phoneno.Value = dr11["phoneno"].ToString();
                    email.Value = dr11["email"].ToString();
                    certificateno.Value = dr11["certificateno"].ToString();
                    issuedate.Value = dr11["issuedate"].ToString();
                    expirydate.Value = dr11["expirydate"].ToString();
                    orignaldate.Value = dr11["orginaldate"].ToString();
                    isostandard.Text = dr11["isostandard"].ToString();
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
       
        MySqlCommand cmd = new MySqlCommand("update application set companyname='" + companyname.Value.Trim() + "', address='" + address.Value.Trim() + "',scope='" + scope.Value.Trim() + "',phoneno='" + phoneno.Value.Trim() + "',email='" + email.Value.Trim() + "',certificateno='" + certificateno.Value.Trim() + "',issuedate='" + issuedate.Value.Trim() + "',expirydate='" + expirydate.Value.Trim() + "',orginaldate='" + orignaldate.Value.Trim() + "',isostandard='" + isostandard.Text.Trim() + "' where id='" + Request["id"] + "'", con);
        int t = cmd.ExecuteNonQuery();
        if (t > 0)
            ScriptManager.RegisterStartupScript(this, GetType(), "sa", "alert('Application is Updated');", true);

        con.Close();
        Response.Redirect("~/Adminpanel/ApplicationList.aspx");
    }

   

    protected void exit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Adminpanel/Dashboard.aspx");
    }
}