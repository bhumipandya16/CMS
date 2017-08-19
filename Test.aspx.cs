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
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AddBtn_Click1(object sender, EventArgs e)
        {
            //string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            //SqlConnection connection = new SqlConnection(connectionString);

            //try
            //{
            //    connection.Open();
            //    SqlCommand command = new SqlCommand();
            //    command.Connection = connection;
            //    command.CommandType = CommandType.StoredProcedure;
            //    command.CommandText = "SearchTest";
            //    command.Parameters.AddWithValue("@Description_id", Label4.Text);
            //    command.Parameters.AddWithValue("@Description_Unit", TextBox2.Text);
            //    command.Parameters.AddWithValue("@Description_Normal_Value", TextBox3.Text);
            //    command.Parameters.AddWithValue("@Description_TR1", TextBox4.Text) ;
            //    command.Parameters.AddWithValue("@Description_TR2", TextBox25.Text);
            //    command.Parameters.AddWithValue("@Description_TR3", TextBox26.Text);

            //    command.Parameters.AddWithValue("@Description_id", Label5.Text);
            //    command.Parameters.AddWithValue("@Description_Unit", TextBox6.Text);
            //    command.Parameters.AddWithValue("@Description_Normal_Value", TextBox7.Text);
            //    command.Parameters.AddWithValue("@Description_TR1", TextBox8.Text);
            //    command.Parameters.AddWithValue("@Description_TR2", TextBox9.Text);
            //    command.Parameters.AddWithValue("@Description_TR3", TextBox10.Text);

            //    command.Parameters.AddWithValue("@Description_id", Label6.Text);
            //    command.Parameters.AddWithValue("@Description_Unit", TextBox15.Text);
            //    command.Parameters.AddWithValue("@Description_Normal_Value", TextBox16.Text);
            //    command.Parameters.AddWithValue("@Description_TR1", TextBox17.Text);
            //    command.Parameters.AddWithValue("@Description_TR2", TextBox18.Text);
            //    command.Parameters.AddWithValue("@Description_TR3", TextBox19.Text);

            //    command.ExecuteNonQuery();
            //    connection.Close();
            //    Label7.Text = "Successfully Inserted !!";
            //}

            //catch (Exception ex)
            //{
            //    Label7.Text = "Error inserting data" + ex.ToString();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("insert into Form_OP_0031 (Chk_Nameplate_Data, Chk_Equipment_Mounted) values (@Chk_Nameplate_Data, @Chk_Equipment_Mounted)", con);
            cmd.Parameters.AddWithValue("Chk_Nameplate_Data", RadioButtonList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("Chk_Equipment_Mounted", RadioButtonList2.SelectedItem.Text);

            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (i != 0)
            {
                Label1.Text = "Your Answer Submitted Succesfully";
                //lbmsg.ForeColor = System.Drawing.Color.ForestGreen;
            }
            else
            {
                Label1.Text = "Some Problem Occured";
                //lbmsg.ForeColor = System.Drawing.Color.Red;

            }
        }
    }
}