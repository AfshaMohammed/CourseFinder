using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    // connecting to the data base
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    // admin login
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (txtusername.Text == "admin" && txtpasswod.Text == "admin")
        {
            Session["username"] = txtusername.Text.ToString();
            // redirect to admin folder
            Response.Redirect("~/Admin/Home.aspx");
        }
        else
            lblmessage.Visible = true;
        lblmessage.Text = "You are not a valid user......";
    }
}