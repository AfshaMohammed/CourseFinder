using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_AddCourse : System.Web.UI.Page
{
    // connecting to the data base
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            bind();
            getuname();
        }
    }
    // retrive the university names
    public void getuname()
    {
        try
        {
            SqlDataReader dr;
            if (ConnectionState.Open == con.State)
                con.Close();
            
            con.Open();


            string query = "select UniversityName from TB_University";
            cmd.Connection = con;
            cmd.CommandText = query;
            cmd.CommandType = CommandType.Text;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                Dbluniversityname.Items.Add(dr[0].ToString());

            }
            Dbluniversityname.Items.Insert(0, "Select");

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
        }
    }
    // save the course details in data base
    protected void Btnadd_Click(object sender, EventArgs e)
    {
        int i = 0;
        try
        {
            if (ConnectionState.Open == con.State)
                con.Close();
            con.Open();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "SP_insertcourse";
            cmd.Parameters.AddWithValue("@uname", Dbluniversityname.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@CourseName", txtcname.Text);
            cmd.Parameters.AddWithValue("@duration", txtcduration.Text);
            cmd.Parameters.AddWithValue("@fee", txtcfee.Text);
            cmd.Parameters.AddWithValue("@description", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Qual", txtqul.Text);
            cmd.Parameters.Add("@input", SqlDbType.Int);
            cmd.Parameters["@input"].Direction = ParameterDirection.Output;
            cmd.Connection = con;
            int res = cmd.ExecuteNonQuery();

            if (Convert.ToInt32(cmd.Parameters["@input"].Value) == 1)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Course Added Successfully')</script>");
                
                Dbluniversityname.SelectedIndex = -1;
                txtcname.Text = "";
                txtcduration.Text = "";
                txtcfee.Text = "";
                TextBox5.Text = "";
            }
            if (Convert.ToInt32(cmd.Parameters["@input"].Value) == 0)
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Course Already Added')</script>");

            }
            
            con.Close();
            bind();

        }
        catch (Exception ex)
        {
            lblresult.Text = ex.Message;
        }
    }
    // bind the course details to gridview
    public void bind()
    {
        if (ConnectionState.Open == con.State)
            con.Close();
        DataSet ds = new DataSet();     
        con.Open();
        string query = "SELECT TB_University.UniversityName, TB_Course.UniverSitycode, TB_Course.CourseName, TB_Course.duration, TB_Course.fee, TB_Course.description, TB_Course.Qualification FROM TB_Course INNER JOIN TB_University ON TB_Course.UniverSitycode = TB_University.UniverSitycode";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        con.Close();
    }
    
}