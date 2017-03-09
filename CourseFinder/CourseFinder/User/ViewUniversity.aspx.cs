using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_ViewUniversity : System.Web.UI.Page
{
    // connecting to the data base
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        lblsession.Text = Session["uname"].ToString();

        // bind the university details to gridview
        try
        {
            DataSet ds = new DataSet();
            
            if (ConnectionState.Open == con.State)
                con.Close();
            con.Open();
            string query = "select UniverSitycode,UniversityName,Address,Country,Contact from TB_University";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(ds, "university");
            GridViewUniversity.DataSource = ds.Tables[0];
            GridViewUniversity.DataBind();

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