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
    public partial class AddArea : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Name FROM Refinery"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        RefNameDdl.DataSource = cmd.ExecuteReader();
                        RefNameDdl.DataTextField = "Name";
                        RefNameDdl.DataValueField = "Name";
                        RefNameDdl.DataBind();
                        con.Close();
                    }
                }
                RefNameDdl.Items.Insert(0, new ListItem("--Select Project Name--", "0"));
            }
        }

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection connection = new SqlConnection(connectionString);
          
            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "InsertArea";
                command.Parameters.AddWithValue("@AreaNumber", RANumberTxtbox.Text);
                command.Parameters.AddWithValue("@AreaName", RANameTxtbox.Text);
                command.Parameters.AddWithValue("@AreaInspected", RAInspectedDdl.SelectedItem.Value);
                //command.Parameters.AddWithValue("@Refinery_Name", SqlDbType.Text).Value = RefNameTxtbox.Text;
                command.Parameters.AddWithValue("@Refinery_Name", RefNameDdl.SelectedItem.Value);
                command.ExecuteNonQuery();
                connection.Close();
                Label1.Text = "Successfully Inserted !!";     
            }

            catch (Exception ex)
            {
                Label1.Text = "Error inserting data" + ex.ToString();
            }

        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UpdateArea.aspx");
        }

    }
}