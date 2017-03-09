using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_SearchUniversityCourses : System.Web.UI.Page
{
    // connecting to the data base
    SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblsession.Text = Session["uname"].ToString();
        // bind the university names to dropdownlist
        if (IsPostBack == false)
        {

            if (ConnectionState.Open == conn.State)
                conn.Close();
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter("select UniverSityCode,UniversityName from TB_University", conn);

            sda.Fill(ds);
            ddluniversity.DataSource = ds;
            ddluniversity.DataTextField = "UniversityName";
            ddluniversity.DataValueField = "UniverSityCode";
            ddluniversity.DataBind();
            ddluniversity.Items.Insert(0, "Select");
        }

    }
    // search the course total details based on university name and course name
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        Label3.Text = Session["userid"] + "Courses offred by" + " " + ddluniversity.SelectedItem + " " + "details are" + "\n";
        
        if (ConnectionState.Open == conn.State)
            conn.Close();
        conn.Open();
        string query = "select * from TB_Course where CourseName='" + ddlcoursename.SelectedItem + "' and UniverSitycode='" + ddluniversity.SelectedValue + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, conn);
        da.Fill(ds, "course");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
      
    }
    // bind the course names to dropdownlist based on university name
    protected void ddluniversity_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlcoursename.Items.Clear();
        int i = 0;
        SqlDataReader dr;
        
        if (ConnectionState.Open == conn.State)
            conn.Close();
        conn.Open();

        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select CourseName from TB_Course where UniverSitycode='" + ddluniversity.SelectedValue + "'";
        cmd.Connection = conn;
        dr = cmd.ExecuteReader();
        ddlcoursename.Items.Insert(0, "Select");
        while (dr.Read())
        {
            ddlcoursename.Enabled = true;            
            ddlcoursename.Items.Add(dr["CourseName"].ToString());            
        }
        
       
        dr.Close();
        conn.Close();
    }
}