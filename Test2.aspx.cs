using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class Test2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-3PPUOC9\\SQLEXPRESS;Initial Catalog=Registration;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridview();
            }
        }

        protected void BindGridview()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Refinery", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            gvRefinery.DataSource = ds;
            gvRefinery.DataBind();

        }


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                con.Open();
                GridView gvUnits = (GridView)e.Row.FindControl("gvUnits");
                int Refinery_id = Convert.ToInt32(e.Row.Cells[1].Text);
                SqlCommand cmd = new SqlCommand("select * from Unit_1 where Refinery_id=" + Refinery_id, con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
                con.Close();
                gvUnits.DataSource = ds;
                gvUnits.DataBind();
            }
        }

        protected void gvUnits_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            ////NewEditIndex property used to determine the index of the row being edited.
            GridView gvUnits = sender as GridView;
            GridViewRow row = gvUnits.Rows[e.NewEditIndex];
            //int Depa = Convert.ToInt32((row.Cells[0].FindControl("lblDepartmentId") as Label).Text);
            //gvEmployees.EditIndex = e.NewEditIndex;
            gvUnits.EditIndex = e.NewEditIndex;
            BindGridview();
        }

        protected void gvUnits_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  
            GridView gvUnits = sender as GridView;
            Label id = gvUnits.Rows[e.RowIndex].FindControl("lbl_Unit_id") as Label;
            TextBox uname = gvUnits.Rows[e.RowIndex].FindControl("txt_Unit_Name") as TextBox;
            //sqlConnection con= new SqlConnection("Data Source=DESKTOP-3PPUOC9\\SQLEXPRESS;Initial Catalog=Registration;Integrated Security=True");
            con.Open();
            //updating the record  
            SqlCommand cmd = new SqlCommand("Update Unit_1 set Unit_Name='" + uname.Text + "' where Unit_id=" + Convert.ToInt32(id.Text), con);
            cmd.ExecuteNonQuery();
            con.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvUnits.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            BindGridview();
        }

        protected void gvUnits_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            ////Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            GridView gvUnits = sender as GridView;
            gvUnits.EditIndex = -1;
            BindGridview();
        }
    }
}