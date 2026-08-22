using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Text;

public partial class Adminpanel_ContactList : System.Web.UI.Page
{
    Class1 cc = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }
    // showing contract details in list from the contact details form
    protected void BindData()
    {
        MySqlConnection con = cc.mycon;
        con.Open();
        DataSet ds = new DataSet();
        string cmdstr = "select *from contact order by id desc";
        MySqlCommand cmd = new MySqlCommand(cmdstr, con);
        MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
        adp.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    //protected void Save_Click(object sender, EventArgs e)
    //{

    //    int RowId = ((GridViewRow)((LinkButton)sender).Parent.Parent).RowIndex;
    //    MySqlConnection con = cc.mycon;
    //    con.Open();
    //    MySqlCommand cmd = new MySqlCommand("delete from contactus where id='" + GridView1.Rows[RowId].Cells[0].Text.Trim() + "' ", con);
    //    cmd.ExecuteNonQuery();
    //    con.Close();
    //    BindData();
    //}
}