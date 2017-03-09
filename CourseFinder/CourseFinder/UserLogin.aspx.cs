using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserLogin : System.Web.UI.Page
{
    // connecting to the data base
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }    
    // user login
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
       
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from TB_Users where Email='" + txtusername.Text + "' and Password='" + txtpasswod.Text + "'", con);

        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["uname"] = txtusername.Text;
            // redirect to user home page
            Response.Redirect("User/Home.aspx");
        }
        else
        {
            lblmessage.Text = "invalid user";
        }
    }
}