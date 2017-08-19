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
    public partial class UpdateRefinery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
            }
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
                    command.CommandText = "SearchRefinery";
                    command.Parameters.AddWithValue("@refname", txtSearch.Text);
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
                    DataSet dataSet = new DataSet();
                    sqlDataAdapter.Fill(dataSet, "Refinery");
                    {
                        if (dataSet.Tables[0].Rows.Count != 0)
                        {
                            gvsearchrefinery.DataSource = dataSet;
                            gvsearchrefinery.DataBind();
                        }
                        else
                        {
                            Label1.Text = "There is no such refinery in the system. Please add a new refinery.";
                            gvsearchrefinery.DataSource = null;
                            gvsearchrefinery.DataBind();
                        }
                    }
                }
            //gvsearchrefinery.DataSource = dataSet.Tables[0];
            //gvsearchrefinery.DataBind();
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
            command.CommandText = "SearchRefinery";
            command.Parameters.AddWithValue("@refname", txtSearch.Text);
            sqlDataAdapter = new SqlDataAdapter(command);
            sqlDataAdapter.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvsearchrefinery.DataSource = dt;
                gvsearchrefinery.DataBind();
            }
            sqlConnection.Close();
        }

        protected void gvsearchrefinery_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            gvsearchrefinery.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void gvsearchrefinery_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  
            Label id = gvsearchrefinery.Rows[e.RowIndex].FindControl("lbl_Refinery_id") as Label;
            TextBox name = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_Name") as TextBox;
            TextBox address = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_Address") as TextBox;
            TextBox city = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_City") as TextBox;
            TextBox state = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_State") as TextBox;
            TextBox country = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_Country") as TextBox;
            TextBox zipcode = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_Zip_code") as TextBox;
            TextBox Ac_Inac = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_Active_Inactive") as TextBox;
            TextBox ocompany = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_Owner_Company") as TextBox;
            TextBox ocontactperson = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_Owner_Contact_Person") as TextBox;
            TextBox ipccompany = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_IPC_Company") as TextBox;
            TextBox ipccontactperson = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_IPC_Contact_Person") as TextBox;
            TextBox capacity = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_Capacity") as TextBox;
            TextBox Project_Type = gvsearchrefinery.Rows[e.RowIndex].FindControl("txt_Project_Type") as TextBox;

            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = sqlConnection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "UpdateRefinery";
            command.Parameters.AddWithValue("@name", SqlDbType.VarChar).Value = name.Text;
            command.Parameters.AddWithValue("@address", SqlDbType.VarChar).Value = address.Text;
            command.Parameters.AddWithValue("@city", SqlDbType.VarChar).Value = city.Text;
            command.Parameters.AddWithValue("@state", SqlDbType.VarChar).Value = state.Text;
            command.Parameters.AddWithValue("@country", SqlDbType.VarChar).Value = country.Text;
            command.Parameters.AddWithValue("@zipcode", SqlDbType.VarChar).Value = zipcode.Text;
            command.Parameters.AddWithValue("@ac_inac", SqlDbType.Bit).Value = Ac_Inac.Text;
            command.Parameters.AddWithValue("@ocompany", SqlDbType.VarChar).Value = ocompany.Text;
            command.Parameters.AddWithValue("@ocontactperson", SqlDbType.VarChar).Value = ocontactperson.Text;
            command.Parameters.AddWithValue("@ipccompany", SqlDbType.VarChar).Value = ipccompany.Text;
            command.Parameters.AddWithValue("@ipccontactperson", SqlDbType.VarChar).Value = ipccontactperson.Text;
            command.Parameters.AddWithValue("@capacity", SqlDbType.Int).Value = capacity.Text;
            command.Parameters.AddWithValue("@project_type", SqlDbType.VarChar).Value = Project_Type.Text;
            command.Parameters.AddWithValue("@refid", SqlDbType.Int).Value = id.Text;

            //updating the record  
            //SqlCommand cmd = new SqlCommand("Update Refinery set Name='" + name.Text + "',Address='" + address.Text + "',City='" + city.Text + "',State='" + state.Text + "',Country='" + country.Text + "',Zip_code='" + zipcode.Text + "',Active_Inactive='" + Ac_Inac.Text + "',Owner_Company='" + ocompany.Text + "',Owner_Contact_Person='" + ocontactperson.Text + "',IPC_Company='" + ipccompany.Text + "',IPC_Contact_Person='" + ipccontactperson.Text + "',Capacity='" + capacity.Text + "' where Refinery_id=" + Convert.ToInt32(id.Text), sqlConnection);
            command.ExecuteNonQuery();
            sqlConnection.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvsearchrefinery.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }

        protected void gvsearchrefinery_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvsearchrefinery.EditIndex = -1;
            ShowData();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddRefinery.aspx");
        }
    }
}