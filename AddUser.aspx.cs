using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using WebApplication1.BLL;

namespace WebApplication1
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection connection = new SqlConnection(connectionString);

            try
            {
                connection.Open();
                bool exists = false;

                // create a command to check if the username exists
                SqlCommand cmd = new SqlCommand("select count(*) from Users where UserName = @UserName", connection);
                {
                    cmd.Parameters.AddWithValue("UserName", UserNameTxtbox.Text);
                    exists = (int)cmd.ExecuteScalar() > 0;
                }

                // if exists, show a message error
                if (exists)
                    Label1.Text = "This username has been used by another user.";
                else
                {
                    // does not exists, so, persist the user
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.Connection = connection;
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.CommandText = "InsertUser";
                    //("INSERT INTO Users(FirstName, LastName, UserName, Password, Email, Position, Role) VALUES (@FirstName, @LastName, @UserName, @Password, @Email, @Position, @Role)", connection);
                    cmd1.Parameters.AddWithValue("@FirstName", FirstNameTxtbox.Text);
                    cmd1.Parameters.AddWithValue("@LastName", LastNameTxtbox.Text);
                    cmd1.Parameters.AddWithValue("@UserName", UserNameTxtbox.Text);
                    cmd1.Parameters.AddWithValue("@Password", PasswordTxtbox.Text);
                    cmd1.Parameters.AddWithValue("@Email", EmailTxtbox.Text);
                    cmd1.Parameters.AddWithValue("@Position", PositionTxtBox.Text);
                    cmd1.Parameters.AddWithValue("@Role", RoleDdl.SelectedItem.Value);

                    cmd1.ExecuteNonQuery();
                    connection.Close();
                    Label1.Text = "Successfully Inserted !!";
                }
            }

            catch(Exception ex)
            {
                Label1.Text = "Error inserting data" + ex.ToString();
            }

          }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UpdateUser.aspx");
        }

        
    }
    }
