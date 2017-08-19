using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class UpdateProcessUnits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            try
            {
                if (!string.IsNullOrEmpty(txtSearch.Text))
                {
                    SqlCommand command = new SqlCommand();
                    command.Connection = sqlConnection;
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "SearchProcessUnit";
                    command.Parameters.AddWithValue("@refname", txtSearch.Text);
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
                    DataSet dataSet = new DataSet();
                    sqlDataAdapter.Fill(dataSet, "Process_Units");
                    if (dataSet != null)
                    {
                        if (dataSet.Tables[0].Rows.Count != 0)
                        {
                            gvProcess_Units.DataSource = dataSet;
                            gvProcess_Units.DataBind();
                        }
                        else
                        {
                            Label1.Text = "There is no process unit in this refinery. Please add a new process unit.";
                            gvProcess_Units.DataSource = null;
                            gvProcess_Units.DataBind();
                        }
                    }
                }
                //gvRefinery_Area.DataSource = dataSet.Tables[0];
                //gvRefinery_Area.DataBind();
            }
            catch (Exception ex)
            {
                //Label1.Text
            }
            finally
            {
                sqlConnection.Close();
            }
        }

        protected void ShowData()
        {
            DataTable dt = new DataTable();
            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            sqlConnection.Open();
            command.Connection = sqlConnection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "SearchProcessUnit";
            command.Parameters.AddWithValue("@refname", txtSearch.Text);
            sqlDataAdapter = new SqlDataAdapter(command);
            sqlDataAdapter.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvProcess_Units.DataSource = dt;
                gvProcess_Units.DataBind();
            }
            sqlConnection.Close();
        }

        protected void gvProcess_Units_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            gvProcess_Units.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void gvProcess_Units_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update 
            //Label Number = gvProcess_Units.Rows[e.RowIndex].FindControl("lbl_Refinery_Area_Number") as Label;
            Label Name = gvProcess_Units.Rows[e.RowIndex].FindControl("lbl_Refinery_Area_Name") as Label;
            Label id = gvProcess_Units.Rows[e.RowIndex].FindControl("lbl_Process_Unit_id") as Label;
            TextBox PU_Name = gvProcess_Units.Rows[e.RowIndex].FindControl("txt_Process_Unit_Name") as TextBox;
            TextBox PU_Number = gvProcess_Units.Rows[e.RowIndex].FindControl("txt_Process_Unit_Number") as TextBox;
            TextBox PU_Inspected = gvProcess_Units.Rows[e.RowIndex].FindControl("txt_Process_Unit_Inspected") as TextBox;
            TextBox PU_Activity = gvProcess_Units.Rows[e.RowIndex].FindControl("txt_Process_Unit_Activity") as TextBox;

            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = sqlConnection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "UpdateProcessUnit";
            //updating the record  
            //SqlCommand cmd = new SqlCommand("Update Process_Units set Process_Unit_Name='" + PU_Name.Text + "', Process_Unit_Number='" + PU_Number.Text + "', Process_Unit_Inspected='" + PU_Inspected.Text + "' where Process_Unit_id=" + Convert.ToInt32(id.Text), sqlConnection);
            command.Parameters.AddWithValue("@PUNumber", SqlDbType.Int).Value = PU_Number.Text;
            command.Parameters.AddWithValue("@PUName", SqlDbType.VarChar).Value = PU_Name.Text;
            command.Parameters.AddWithValue("@PUInspected", SqlDbType.Bit).Value = PU_Inspected.Text;
            command.Parameters.AddWithValue("@PUActivity", SqlDbType.VarChar).Value = PU_Activity.Text;
            command.Parameters.AddWithValue("@PUid", SqlDbType.Int).Value = id.Text;

            command.ExecuteNonQuery();
            sqlConnection.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvProcess_Units.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }

        protected void gvProcess_Units_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvProcess_Units.EditIndex = -1;
            ShowData();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddProcessUnit.aspx");
        }
    }
}