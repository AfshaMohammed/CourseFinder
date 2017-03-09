using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    // connecting to the data base
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;        
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            bindCountry();        
    }
    // save the user details in data base
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        int i = 0;
        try
        {
           
            if (ConnectionState.Open == con.State)
                con.Close();
            con.Open();
            string query1 = "insert into TB_users values('" + txtusername.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtqual.Text + "','" + ddlcountry.SelectedItem.Text + "','" + ddlstate.SelectedItem.Text + "','"+txtpwd.Text+"')";            
            cmd.Connection = con;
            cmd.CommandText = query1;
            cmd.CommandType = CommandType.Text;
            i = cmd.ExecuteNonQuery();            
            if (i != 0)
            {
                Label2.Text = "Registered Success...............";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    // get all country's to the dropdown list
    public void bindCountry()
    {
        ddlcountry.Items.Clear();
        
        if (ConnectionState.Open == con.State)
            con.Close();
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select distinct(Country) from States";
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        ddlcountry.Items.Insert(0, "Select");
        while (dr.Read())
        {           
           ddlcountry.Items.Add(dr["Country"].ToString());            
        }
        con.Close();
    }
    // get all the states to the dropdown list based on country
    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlstate.Items.Clear();
        
        if (ConnectionState.Open == con.State)
            con.Close();
        con.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select State from States where Country='" + ddlcountry.SelectedItem.Text + "'";
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        ddlstate.Items.Insert(0, "Select");
        while (dr.Read())
        {
            ddlstate.Items.Add(dr["State"].ToString());
        }
        con.Close();
    }
}