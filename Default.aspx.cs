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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            string UserName = UserNameTxtbox.Text.Trim();

            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            string str = "Select User_id, FirstName, LastName from Users where UserName='" + UserNameTxtbox.Text + "'and Password='" + PasswordTxtbox.Text + "'";
            SqlCommand cmd = new SqlCommand(str, sqlConnection);
            //SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("Select * From TableName", sqlConnection);
            //DataSet dataSet = new DataSet();
            //GridView1.DataSource = dataSet;
            //GridView1.DataBind();

            try
            {
                cmd.Connection.Open();
                object id = cmd.ExecuteScalar();
                if (id != null)
                {
                    Session["UserName"] = UserName;
                    Response.Redirect("~/Home.aspx?id=" + id);
                }
                else
                    Label2.Text = "Invalid User Name or Password! Please try again!";
            }
            catch(Exception ex)
            {
                //Label2.Text
            }
            finally
            {
                sqlConnection.Close();
            }
        }
    }
}