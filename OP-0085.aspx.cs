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
    public partial class OP_0085 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBtn_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection connection = new SqlConnection(connectionString);

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "Insert_OP0085";
                //Top part of form
                command.Parameters.AddWithValue("Form", Label49.Text);
                command.Parameters.AddWithValue("Project_Number", ProjectNoTxtBox.Text);
                command.Parameters.AddWithValue("Plant", PlantTxtBox.Text);
                command.Parameters.AddWithValue("Process_Unit_Name", PUTxtBox.Text);
                command.Parameters.AddWithValue("System_Name", SystemTxtBox.Text);
                command.Parameters.AddWithValue("Sub_System", SubSystemTxtBox.Text);
                command.Parameters.AddWithValue("Equipment", EquipmentTxtBox.Text);
                command.Parameters.AddWithValue("Tag_Number", TagNumberTxtBox.Text);
                command.Parameters.AddWithValue("Discipline", DisciplineTxtBox.Text);
                command.Parameters.AddWithValue("Form_Date", DateTxtBox.Text);
                command.Parameters.AddWithValue("PID", PIDTxtBox.Text);
                command.Parameters.AddWithValue("Pipeline", PipelineTxtBox.Text);

                command.Parameters.AddWithValue("Location_No1", TextBox1.Text);
                command.Parameters.AddWithValue("Torque_Applied1", TextBox2.Text);
                command.Parameters.AddWithValue("Location_No7", TextBox3.Text);
                command.Parameters.AddWithValue("Torque_Applied7", TextBox4.Text);

                command.Parameters.AddWithValue("Location_No2", TextBox5.Text);
                command.Parameters.AddWithValue("Torque_Applied2", TextBox6.Text);
                command.Parameters.AddWithValue("Location_No8", TextBox7.Text);
                command.Parameters.AddWithValue("Torque_Applied8", TextBox8.Text);

                command.Parameters.AddWithValue("Location_No3", TextBox9.Text);
                command.Parameters.AddWithValue("Torque_Applied3", TextBox10.Text);
                command.Parameters.AddWithValue("Location_No9", TextBox11.Text);
                command.Parameters.AddWithValue("Torque_Applied9", TextBox12.Text);

                command.Parameters.AddWithValue("Location_No4", TextBox13.Text);
                command.Parameters.AddWithValue("Torque_Applied4", TextBox14.Text);
                command.Parameters.AddWithValue("Location_No10", TextBox15.Text);
                command.Parameters.AddWithValue("Torque_Applied10", TextBox16.Text);

                command.Parameters.AddWithValue("Location_No5", TextBox17.Text);
                command.Parameters.AddWithValue("Torque_Applied5", TextBox18.Text);
                command.Parameters.AddWithValue("Location_No11", TextBox19.Text);
                command.Parameters.AddWithValue("Torque_Applied11", TextBox20.Text);

                command.Parameters.AddWithValue("Location_No6", TextBox21.Text);
                command.Parameters.AddWithValue("Torque_Applied6", TextBox22.Text);
                command.Parameters.AddWithValue("Location_No12", TextBox23.Text);
                command.Parameters.AddWithValue("Torque_Applied12", TextBox24.Text);

                //Bottom part of form

                command.Parameters.AddWithValue("IPC_Company", IPCCompanyTxtBox.Text);
                command.Parameters.AddWithValue("Commissioning_Company", CommissioningCompanyTxtBox.Text);
                command.Parameters.AddWithValue("QA_QC_Company", QAQCCompanyTxtBox.Text);
                command.Parameters.AddWithValue("Lead_StartUp_Company", LeadStartUpCompanyTxtBox.Text);
                command.Parameters.AddWithValue("IPC_Name", IPCNameTxtBox.Text);
                command.Parameters.AddWithValue("Commissioning_Name", CommissioningNameTxtBox.Text);
                command.Parameters.AddWithValue("QA_QC_Name", QAQCNameTxtBox.Text);
                command.Parameters.AddWithValue("Lead_StartUp_Name", LeadStartUpNameTxtBox.Text);
                command.Parameters.AddWithValue("IPC_Sign", IPCSignTxtBox.Text);
                command.Parameters.AddWithValue("Commissioning_Sign", CommissioningSignTxtBox.Text);
                command.Parameters.AddWithValue("QA_QC_Sign", QAQCSignTxtBox.Text);
                command.Parameters.AddWithValue("Lead_StartUp_Sign", LeadStartUpSignTxtBox.Text);
                command.Parameters.AddWithValue("IPC_Date", IPCDateTxtBox.Text);
                command.Parameters.AddWithValue("Commissioning_Date", CommissioningDateTxtBox.Text);
                command.Parameters.AddWithValue("QA_QC_Date", QAQCDateTxtBox.Text);
                command.Parameters.AddWithValue("Lead_StartUp_Date", LeadStartUpDateTxtBox.Text);
                command.Parameters.AddWithValue("Submit", RadioButtonList1.SelectedItem.Text);

                command.ExecuteNonQuery();
                connection.Close();
                SuccessLbl.Text = "Successfully Inserted !!";
            }

            catch (Exception ex)
            {
                SuccessLbl.Text = "Error inserting data" + ex.ToString();
            }
        }
    }
}