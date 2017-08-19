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
    public partial class UpdateArea : System.Web.UI.Page
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
                    command.CommandText = "SearchArea";
                    command.Parameters.AddWithValue("@refname", txtSearch.Text);
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
                    DataSet dataSet = new DataSet();
                    sqlDataAdapter.Fill(dataSet, "Refinery_Area");
                    if (dataSet != null)
                    {
                        if (dataSet.Tables[0].Rows.Count != 0)
                        {
                            gvRefinery_Area.DataSource = dataSet;
                            gvRefinery_Area.DataBind();
                        }
                        else
                        {
                            Label1.Text = "There is no area added to this refinery. Please add a new area.";
                            gvRefinery_Area.DataSource = null;
                            gvRefinery_Area.DataBind();
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
            command.CommandText = "SearchArea";
            command.Parameters.AddWithValue("@refname", txtSearch.Text);
            sqlDataAdapter = new SqlDataAdapter(command);
            sqlDataAdapter.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvRefinery_Area.DataSource = dt;
                gvRefinery_Area.DataBind();
            }
            sqlConnection.Close();
        }

        protected void gvRefinery_Area_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            gvRefinery_Area.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void gvRefinery_Area_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update 
            Label name = gvRefinery_Area.Rows[e.RowIndex].FindControl("lbl_Name") as Label;
            Label id = gvRefinery_Area.Rows[e.RowIndex].FindControl("lbl_Refinery_Area_id") as Label;
            TextBox RA_Name = gvRefinery_Area.Rows[e.RowIndex].FindControl("txt_Refinery_Area_Name") as TextBox;
            TextBox RA_Number = gvRefinery_Area.Rows[e.RowIndex].FindControl("txt_Refinery_Area_Number") as TextBox;
            TextBox RA_Inspected = gvRefinery_Area.Rows[e.RowIndex].FindControl("txt_Refinery_Area_Inspected") as TextBox;

            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = sqlConnection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "UpdateArea";
            //updating the record  
            //SqlCommand cmd = new SqlCommand("Update Refinery_Area set Refinery_Area_Name='" + RA_Name.Text + "',Refinery_Area_Number='" + RA_Number.Text + "',Refinery_Area_Inspected='" + RA_Inspected.Text + "' where Refinery_Area_id=" + Convert.ToInt32(id.Text), sqlConnection);
            command.Parameters.AddWithValue("@AreaNumber", SqlDbType.Int).Value = RA_Number.Text;
            command.Parameters.AddWithValue("@AreaName", SqlDbType.VarChar).Value = RA_Name.Text;
            command.Parameters.AddWithValue("@AreaInspected", SqlDbType.Bit).Value = RA_Inspected.Text;
            command.Parameters.AddWithValue("@Areaid", SqlDbType.Int).Value = id.Text;

            command.ExecuteNonQuery();
            sqlConnection.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvRefinery_Area.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }

        protected void gvRefinery_Area_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvRefinery_Area.EditIndex = -1;
            ShowData();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddArea.aspx");
        }
    }
    }