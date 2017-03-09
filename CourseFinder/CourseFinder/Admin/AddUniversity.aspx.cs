using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_AddUniversity : System.Web.UI.Page
{
    // connecting to the data base
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    // save university details in data base
    protected void btnadd_Click(object sender, EventArgs e)
    {
        int i = 0;
        try
        {

            if (ConnectionState.Open == con.State)
                con.Close();
            con.Open();
            string query = "insert into TB_University values('" + txtucode.Text + "','" + txtuname.Text + "','" + txtcountry.Text + "','" + txtlocation.Text + "','" + txtno.Text + "')";
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.CommandType = CommandType.Text;
            i = cmd.ExecuteNonQuery();
            if (i != 0)
            {
                lblresult.Text = "inserted successfully";
                txtucode.Text="";
                    txtuname.Text="";
                        txtcountry.Text="";
                        txtlocation.Text = "";
                        con.Close();
                bind();
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    // bind the university details to gridview
    public void bind()
    {
        
        DataSet ds = new DataSet();
       
        if (ConnectionState.Open == con.State)
            con.Close();
        con.Open();
        string query = "select UniverSitycode,UniversityName,Address,Country,Contact from TB_University";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        da.Fill(ds, "TB_University");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();
    }
    
}