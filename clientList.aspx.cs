using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ClientList : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ((Literal)Master.FindControl("litBrowserTitle")).Text = Page.Title;
        }
    }

    protected void search_Click(object sender, EventArgs e)
    {
        Class1 cc = new Class1();
        //cc.gridbind(GridView1, "select companyname,address,scope,isostandard from application where certificateno='" + certificateno.Value.Trim() + "' and companyname like '%" + companyname.Value.Trim().Substring(0, 3) + "%'");
        MySqlConnection con = cc.mycon;
        con.Open();
        MySqlCommand cmd = new MySqlCommand("select companyname,address,scope,isostandard,issuedate,expirydate,certificateno from application where certificateno='" + certificateno.Value.Trim() + "' and companyname like '%" + companyname.Value.Trim().Substring(0, 3) + "%'", con);
        MySqlDataReader dr = cmd.ExecuteReader();
        if(dr.HasRows)
        {
            if (dr.Read())
            {
                companyname1.Text = dr["companyname"].ToString().Trim();
                address.Text = dr["address"].ToString().Trim();
                scope.Text = dr["scope"].ToString().Trim();
                isostandard.Text = dr["isostandard"].ToString().Trim();
                certificateno1.Text = dr["certificateno"].ToString().Trim();
                issuedate.Text = Convert.ToDateTime(dr["issuedate"]).ToString("dd-MMM-yyyy");
                expirydate.Text = Convert.ToDateTime(dr["expirydate"]).ToString("dd-MMM-yyyy");
                tableappear.Visible = true;
                if (DateTime.Today.Date>Convert.ToDateTime(dr["expirydate"]))
                {
                    status.Text = "Expired";
                }
                else
                    status.Text = "Active";

            }
        }
        dr.Close();
        con.Close();
    }
}