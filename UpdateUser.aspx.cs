using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

//using WebApplication1.BLL;

namespace WebApplication1
{
    public partial class UpdateUser : System.Web.UI.Page
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
                    command.CommandText = "SearchUser";
                    command.Parameters.AddWithValue("@firstname", txtSearch.Text);
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
                    DataSet dataSet = new DataSet();

                    //sqlDataAdapter = new SqlDataAdapter("Select * from Users where FirstName='" + txtSearch.Text + "'", sqlConnection);
                    //dataSet = new DataSet();
                    sqlDataAdapter.Fill(dataSet, "Users");
                    if (dataSet != null)
                    {
                        if (dataSet.Tables[0].Rows.Count != 0)
                        {
                            gvsearchuser.DataSource = dataSet;
                            gvsearchuser.DataBind();
                        }
                        else
                        {
                            Label1.Text = "There is no such user in the system. Please add a new user.";
                            gvsearchuser.DataSource = null;
                            gvsearchuser.DataBind();
                        }
                    }
                }
                //gvsearchuser.DataSource = dataSet.Tables[0];
                //gvsearchuser.DataBind();
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
            command.CommandText = "SearchUser";
            command.Parameters.AddWithValue("@firstname", txtSearch.Text);
            sqlDataAdapter = new SqlDataAdapter(command);
            sqlDataAdapter.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                gvsearchuser.DataSource = dt;
                gvsearchuser.DataBind();
            }
            
            sqlConnection.Close();
        }

        protected void gvsearchuser_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            gvsearchuser.EditIndex = e.NewEditIndex;
            ShowData();
        }
        protected void gvsearchuser_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  
            Label id = gvsearchuser.Rows[e.RowIndex].FindControl("lbl_User_id") as Label;
            TextBox fname = gvsearchuser.Rows[e.RowIndex].FindControl("txt_FirstName") as TextBox;
            TextBox lname = gvsearchuser.Rows[e.RowIndex].FindControl("txt_LastName") as TextBox;
            TextBox uname = gvsearchuser.Rows[e.RowIndex].FindControl("txt_UserName") as TextBox;
            TextBox password = gvsearchuser.Rows[e.RowIndex].FindControl("txt_Password") as TextBox;
            TextBox email = gvsearchuser.Rows[e.RowIndex].FindControl("txt_Email") as TextBox;
            TextBox position = gvsearchuser.Rows[e.RowIndex].FindControl("txt_Position") as TextBox;
            TextBox role = gvsearchuser.Rows[e.RowIndex].FindControl("txt_Role") as TextBox;
            //DropDownList role = gvsearchuser.Rows[e.RowIndex].FindControl("Ddl_Role") as DropDownList;

            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = sqlConnection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "UpdateUser";
            //updating the record  
            //SqlCommand cmd = new SqlCommand("Update Users set FirstName='" + fname.Text + "',LastName='" + lname.Text + "',UserName='" + uname.Text + "',Password='" + password.Text + "',Email='" + email.Text + "',Position='" + position.Text + "',Role='" + role.Text + "' where User_id=" + Convert.ToInt32(id.Text), sqlConnection);

            command.Parameters.AddWithValue("@firstname", SqlDbType.VarChar).Value = fname.Text;
            command.Parameters.AddWithValue("@lastname", SqlDbType.VarChar).Value = lname.Text;
            command.Parameters.AddWithValue("@username", SqlDbType.VarChar).Value = uname.Text;
            command.Parameters.AddWithValue("@password", SqlDbType.VarChar).Value = password.Text;
            command.Parameters.AddWithValue("@email", SqlDbType.VarChar).Value = email.Text;
            command.Parameters.AddWithValue("@role", SqlDbType.VarChar).Value = role.Text;
            //command.Parameters.AddWithValue("@role", SqlDbType.VarChar).Value = role.Text;
            command.Parameters.AddWithValue("@position", SqlDbType.VarChar).Value = position.Text;
            command.Parameters.AddWithValue("@userid", SqlDbType.Int).Value = id.Text;

            command.ExecuteNonQuery();
            sqlConnection.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvsearchuser.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }
        protected void gvsearchuser_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvsearchuser.EditIndex = -1;
            ShowData();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddUser.aspx");
        }
    }
}