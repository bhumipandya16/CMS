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
    public partial class OP_0075 : System.Web.UI.Page
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
                command.CommandText = "Insert_OP0075";
                //Top part of form
                command.Parameters.AddWithValue("Form", Label49.Text);
                command.Parameters.AddWithValue("Project_Number", ProjectNoTxtBox.Text);
                command.Parameters.AddWithValue("Plant", PlantTxtBox.Text);
                command.Parameters.AddWithValue("System_Name", SystemTxtBox.Text);
                command.Parameters.AddWithValue("Sub_System", SubSystemTxtBox.Text);
                command.Parameters.AddWithValue("Equipment", EquipmentTxtBox.Text);
                command.Parameters.AddWithValue("Tag_Number", TagNumberTxtBox.Text);
                command.Parameters.AddWithValue("Discipline", DisciplineTxtBox.Text);
                command.Parameters.AddWithValue("Form_Date", DateTxtBox.Text);
                command.Parameters.AddWithValue("PID", PIDTxtBox.Text);

                command.Parameters.AddWithValue("Time1", TextBox1.Text);
                command.Parameters.AddWithValue("Temperature1", TextBox2.Text);
                command.Parameters.AddWithValue("Holding_Time1", TextBox3.Text);
                command.Parameters.AddWithValue("Time13", TextBox4.Text);
                command.Parameters.AddWithValue("Temperature13", TextBox5.Text);
                command.Parameters.AddWithValue("Holding_Time13", TextBox6.Text);

                command.Parameters.AddWithValue("Time2", TextBox7.Text);
                command.Parameters.AddWithValue("Temperature2", TextBox8.Text);
                command.Parameters.AddWithValue("Holding_Time2", TextBox9.Text);
                command.Parameters.AddWithValue("Time14", TextBox10.Text);
                command.Parameters.AddWithValue("Temperature14", TextBox11.Text);
                command.Parameters.AddWithValue("Holding_Time14", TextBox12.Text);

                command.Parameters.AddWithValue("Time3", TextBox13.Text);
                command.Parameters.AddWithValue("Temperature3", TextBox14.Text);
                command.Parameters.AddWithValue("Holding_Time3", TextBox15.Text);
                command.Parameters.AddWithValue("Time15", TextBox16.Text);
                command.Parameters.AddWithValue("Temperature15", TextBox17.Text);
                command.Parameters.AddWithValue("Holding_Time15", TextBox18.Text);

                command.Parameters.AddWithValue("Time4", TextBox19.Text);
                command.Parameters.AddWithValue("Temperature4", TextBox20.Text);
                command.Parameters.AddWithValue("Holding_Time4", TextBox21.Text);
                command.Parameters.AddWithValue("Time16", TextBox22.Text);
                command.Parameters.AddWithValue("Temperature16", TextBox23.Text);
                command.Parameters.AddWithValue("Holding_Time16", TextBox24.Text);

                command.Parameters.AddWithValue("Time5", TextBox25.Text);
                command.Parameters.AddWithValue("Temperature5", TextBox26.Text);
                command.Parameters.AddWithValue("Holding_Time5", TextBox27.Text);
                command.Parameters.AddWithValue("Time17", TextBox28.Text);
                command.Parameters.AddWithValue("Temperature17", TextBox29.Text);
                command.Parameters.AddWithValue("Holding_Time17", TextBox30.Text);

                command.Parameters.AddWithValue("Time6", TextBox31.Text);
                command.Parameters.AddWithValue("Temperature6", TextBox32.Text);
                command.Parameters.AddWithValue("Holding_Time6", TextBox33.Text);
                command.Parameters.AddWithValue("Time18", TextBox34.Text);
                command.Parameters.AddWithValue("Temperature18", TextBox35.Text);
                command.Parameters.AddWithValue("Holding_Time18", TextBox36.Text);

                command.Parameters.AddWithValue("Time7", TextBox37.Text);
                command.Parameters.AddWithValue("Temperature7", TextBox38.Text);
                command.Parameters.AddWithValue("Holding_Time7", TextBox39.Text);
                command.Parameters.AddWithValue("Time19", TextBox40.Text);
                command.Parameters.AddWithValue("Temperature19", TextBox41.Text);
                command.Parameters.AddWithValue("Holding_Time19", TextBox42.Text);

                command.Parameters.AddWithValue("Time8", TextBox43.Text);
                command.Parameters.AddWithValue("Temperature8", TextBox44.Text);
                command.Parameters.AddWithValue("Holding_Time8", TextBox45.Text);
                command.Parameters.AddWithValue("Time20", TextBox46.Text);
                command.Parameters.AddWithValue("Temperature20", TextBox47.Text);
                command.Parameters.AddWithValue("Holding_Time20", TextBox48.Text);

                command.Parameters.AddWithValue("Time9", TextBox49.Text);
                command.Parameters.AddWithValue("Temperature9", TextBox50.Text);
                command.Parameters.AddWithValue("Holding_Time9", TextBox51.Text);
                command.Parameters.AddWithValue("Time21", TextBox52.Text);
                command.Parameters.AddWithValue("Temperature21", TextBox53.Text);
                command.Parameters.AddWithValue("Holding_Time21", TextBox54.Text);

                command.Parameters.AddWithValue("Time10", TextBox55.Text);
                command.Parameters.AddWithValue("Temperature10", TextBox56.Text);
                command.Parameters.AddWithValue("Holding_Time10", TextBox57.Text);
                command.Parameters.AddWithValue("Time22", TextBox58.Text);
                command.Parameters.AddWithValue("Temperature22", TextBox59.Text);
                command.Parameters.AddWithValue("Holding_Time22", TextBox60.Text);

                command.Parameters.AddWithValue("Time11", TextBox61.Text);
                command.Parameters.AddWithValue("Temperature11", TextBox62.Text);
                command.Parameters.AddWithValue("Holding_Time11", TextBox63.Text);
                command.Parameters.AddWithValue("Time23", TextBox64.Text);
                command.Parameters.AddWithValue("Temperature23", TextBox65.Text);
                command.Parameters.AddWithValue("Holding_Time23", TextBox66.Text);

                command.Parameters.AddWithValue("Time12", TextBox67.Text);
                command.Parameters.AddWithValue("Temperature12", TextBox68.Text);
                command.Parameters.AddWithValue("Holding_Time12", TextBox69.Text);
                command.Parameters.AddWithValue("Time24", TextBox70.Text);
                command.Parameters.AddWithValue("Temperature24", TextBox71.Text);
                command.Parameters.AddWithValue("Holding_Time24", TextBox72.Text);
                
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