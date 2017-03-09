using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_ViewCourse : System.Web.UI.Page
{
    // connecting to the data base
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            bind();
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
        da.Fill(ds, "university");
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    //edit the perticular row in gridveiw
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        GridView1.EditIndex = e.NewEditIndex;
        bind();
    }
    // cancel the row editing
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind();
    }
    // updating the perticular row in gridview
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        if (ConnectionState.Open == con.State)
            con.Close();
        con.Open();
        string ucode = ((Label)GridView1.Rows[e.RowIndex].FindControl("lblucode")).Text;
        string course = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcourse")).Text;
        string duration = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdur")).Text;
        string fee = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtfee")).Text;
        string description = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtdesc")).Text;
        string qual = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "update TB_Course set CourseName='" + course + "',duration='" + duration + "',fee='" + fee + "',description='" + description + "',Qualification='" + qual + "' where UniverSitycode='" + ucode + "' and CourseName='" + course + "'";
        cmd.ExecuteNonQuery();

        con.Close();

        GridView1.EditIndex = -1;
        bind();
    }
}