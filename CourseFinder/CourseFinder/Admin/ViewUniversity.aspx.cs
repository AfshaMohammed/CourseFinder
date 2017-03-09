using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_ViewUniversity : System.Web.UI.Page
{
    // connecting to the data base
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["conn"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            bind();
    }
    // bind the university details to gridview
    public void bind()
    {
        
        if (ConnectionState.Open == con.State)
            con.Close();
        DataSet ds = new DataSet();
        
        con.Open();
        string query = "select UniverSitycode,UniversityName,Address,Country,Contact from TB_University";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        da.Fill(ds, "TB_University");
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
        try
        {
            
            if (ConnectionState.Open == con.State)
                con.Close();
            
            con.Open();
            string ucode = ((Label)GridView1.Rows[e.RowIndex].FindControl("Label6")).Text;
            string univ = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtuname")).Text;
            string add = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtadd")).Text;
            string country = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("txtcountry")).Text;
            string cont = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update TB_University set UniversityName='" + univ + "',Address='" + add + "',Country='" + country + "',Contact='" + cont + "' where UniverSitycode='" + ucode + "'";
            int res = cmd.ExecuteNonQuery();
            

            con.Close();
        }
        catch (Exception ex)
        {

        }
        GridView1.EditIndex = -1;
        bind();
    }
}