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
    public partial class UpdateSystems : System.Web.UI.Page
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
                    command.CommandText = "SearchSystems";
                    command.Parameters.AddWithValue("@refname", txtSearch.Text);
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
                    DataSet dataSet = new DataSet();
                    sqlDataAdapter.Fill(dataSet, "PU_System");
                    if (dataSet != null)
                    {
                        if (dataSet.Tables[0].Rows.Count != 0)
                        {
                            gvSystems.DataSource = dataSet;
                            gvSystems.DataBind();
                        }
                        else
                        {
                            Label1.Text = "There are no systems in this project.";
                            gvSystems.DataSource = null;
                            gvSystems.DataBind();
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
            command.CommandText = "SearchSystems";
            command.Parameters.AddWithValue("@refname", txtSearch.Text);
            sqlDataAdapter = new SqlDataAdapter(command);
            sqlDataAdapter.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvSystems.DataSource = dt;
                gvSystems.DataBind();
            }
            sqlConnection.Close();
        }
        protected void gvSystems_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            gvSystems.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void gvSystems_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update 
            //Label Number = gvProcess_Units.Rows[e.RowIndex].FindControl("lbl_Refinery_Area_Number") as Label;
            Label Refinery_Area_Name = gvSystems.Rows[e.RowIndex].FindControl("lbl_Refinery_Area_Name") as Label;
            Label Process_Unit_Name = gvSystems.Rows[e.RowIndex].FindControl("lbl_Process_Unit_Name") as Label;
            Label PU_Systems_id = gvSystems.Rows[e.RowIndex].FindControl("lbl_PU_Systems_id") as Label;
            TextBox System_Name = gvSystems.Rows[e.RowIndex].FindControl("txt_System_Name") as TextBox;
            TextBox System_Pre_Commissioned = gvSystems.Rows[e.RowIndex].FindControl("txt_System_Pre_Commissioned") as TextBox;
            TextBox System_Commissioned = gvSystems.Rows[e.RowIndex].FindControl("txt_System_Commissioned") as TextBox;

            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = sqlConnection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "UpdatePU_System";
            //updating the record  
            //SqlCommand cmd = new SqlCommand("Update Process_Units set Process_Unit_Name='" + PU_Name.Text + "', Process_Unit_Number='" + PU_Number.Text + "', Process_Unit_Inspected='" + PU_Inspected.Text + "' where Process_Unit_id=" + Convert.ToInt32(id.Text), sqlConnection);
            command.Parameters.AddWithValue("@SystemName", SqlDbType.VarChar).Value = System_Name.Text;
            command.Parameters.AddWithValue("@SystemPreCommissioned", SqlDbType.VarChar).Value = System_Pre_Commissioned.Text;
            command.Parameters.AddWithValue("@SystemCommissioned", SqlDbType.VarChar).Value = System_Commissioned.Text;
            command.Parameters.AddWithValue("@PUSystemsid", SqlDbType.Int).Value = PU_Systems_id.Text;

            command.ExecuteNonQuery();
            sqlConnection.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvSystems.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }

        protected void gvSystems_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvSystems.EditIndex = -1;
            ShowData();
        }
    }
}