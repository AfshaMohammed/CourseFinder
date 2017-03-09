using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_ViewCourses : System.Web.UI.Page
{
    // connecting to the data base
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        lblsession.Text = Session["uname"].ToString();

        // bind the course details to gridview
        try
        {
            DataSet ds = new DataSet();
            
            if (ConnectionState.Open == con.State)
                con.Close();
            con.Open();
            string query = "SELECT TB_University.UniversityName, TB_Course.UniverSitycode, TB_Course.CourseName, TB_Course.duration, TB_Course.fee, TB_Course.description, TB_Course.Qualification FROM TB_Course INNER JOIN TB_University ON TB_Course.UniverSitycode = TB_University.UniverSitycode";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds);
            Gridcourse.DataSource = ds.Tables[0];
            Gridcourse.DataBind();

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
}