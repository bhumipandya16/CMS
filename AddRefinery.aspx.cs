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
    public partial class AddRefinery : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = connection;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "InsertRefinery";
                cmd.Parameters.AddWithValue("@Name", NameTxtBox.Text);
                cmd.Parameters.AddWithValue("@Address", AddressTxtBox.Text);
                cmd.Parameters.AddWithValue("@City", CityTxtBox.Text);
                cmd.Parameters.AddWithValue("@State", StateTxtBox.Text);
                cmd.Parameters.AddWithValue("@Country", CountryDdl.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Zip_code", ZipcodeTxtBox.Text);
                cmd.Parameters.AddWithValue("@Active_Inactive", Act_InactDdl.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Project_Type", TypeDdl.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Owner_Company", OComTxtBox.Text);
                cmd.Parameters.AddWithValue("@Owner_Contact_Person", OCPTxtBox.Text);
                cmd.Parameters.AddWithValue("@IPC_Company", IPCComTxtBox.Text);
                cmd.Parameters.AddWithValue("@IPC_Contact_Person", IPCCPTxtBox.Text);
                cmd.Parameters.AddWithValue("@Capacity", CapacityTxtBox.Text);

                cmd.ExecuteNonQuery();
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
            Response.Redirect("~/UpdateProject.aspx");
        }
    }
}