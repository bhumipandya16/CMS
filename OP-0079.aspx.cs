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
    public partial class OP_0079 : System.Web.UI.Page
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
                command.CommandText = "Insert_OP0079";
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
                command.Parameters.AddWithValue("Flame_Detector", CheckBoxList1.SelectedValue);

                command.Parameters.AddWithValue("Burner_No1", TextBox1.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering1", TextBox2.Text);
                command.Parameters.AddWithValue("Inspection_Result1", TextBox3.Text);
                command.Parameters.AddWithValue("Burner_No13", TextBox4.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering13", TextBox5.Text);
                command.Parameters.AddWithValue("Inspection_Result13", TextBox6.Text);

                command.Parameters.AddWithValue("Burner_No2", TextBox7.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering2", TextBox8.Text);
                command.Parameters.AddWithValue("Inspection_Result2", TextBox9.Text);
                command.Parameters.AddWithValue("Burner_No14", TextBox10.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering14", TextBox11.Text);
                command.Parameters.AddWithValue("Inspection_Result14", TextBox12.Text);

                command.Parameters.AddWithValue("Burner_No3", TextBox13.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering3", TextBox14.Text);
                command.Parameters.AddWithValue("Inspection_Result3", TextBox15.Text);
                command.Parameters.AddWithValue("Burner_No15", TextBox16.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering15", TextBox17.Text);
                command.Parameters.AddWithValue("Inspection_Result15", TextBox18.Text);

                command.Parameters.AddWithValue("Burner_No4", TextBox19.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering4", TextBox20.Text);
                command.Parameters.AddWithValue("Inspection_Result4", TextBox21.Text);
                command.Parameters.AddWithValue("Burner_No16", TextBox22.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering16", TextBox23.Text);
                command.Parameters.AddWithValue("Inspection_Result16", TextBox24.Text);

                command.Parameters.AddWithValue("Burner_No5", TextBox25.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering5", TextBox26.Text);
                command.Parameters.AddWithValue("Inspection_Result5", TextBox27.Text);
                command.Parameters.AddWithValue("Burner_No17", TextBox28.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering17", TextBox29.Text);
                command.Parameters.AddWithValue("Inspection_Result17", TextBox30.Text);

                command.Parameters.AddWithValue("Burner_No6", TextBox31.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering6", TextBox32.Text);
                command.Parameters.AddWithValue("Inspection_Result6", TextBox33.Text);
                command.Parameters.AddWithValue("Burner_No18", TextBox34.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering18", TextBox35.Text);
                command.Parameters.AddWithValue("Inspection_Result18", TextBox36.Text);

                command.Parameters.AddWithValue("Burner_No7", TextBox37.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering7", TextBox38.Text);
                command.Parameters.AddWithValue("Inspection_Result7", TextBox39.Text);
                command.Parameters.AddWithValue("Burner_No19", TextBox40.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering19", TextBox41.Text);
                command.Parameters.AddWithValue("Inspection_Result19", TextBox42.Text);

                command.Parameters.AddWithValue("Burner_No8", TextBox43.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering8", TextBox44.Text);
                command.Parameters.AddWithValue("Inspection_Result8", TextBox45.Text);
                command.Parameters.AddWithValue("Burner_No20", TextBox46.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering20", TextBox47.Text);
                command.Parameters.AddWithValue("Inspection_Result20", TextBox48.Text);

                command.Parameters.AddWithValue("Burner_No9", TextBox49.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering9", TextBox50.Text);
                command.Parameters.AddWithValue("Inspection_Result9", TextBox51.Text);
                command.Parameters.AddWithValue("Burner_No21", TextBox52.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering21", TextBox53.Text);
                command.Parameters.AddWithValue("Inspection_Result21", TextBox54.Text);

                command.Parameters.AddWithValue("Burner_No10", TextBox55.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering10", TextBox56.Text);
                command.Parameters.AddWithValue("Inspection_Result10", TextBox57.Text);
                command.Parameters.AddWithValue("Burner_No22", TextBox58.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering22", TextBox59.Text);
                command.Parameters.AddWithValue("Inspection_Result22", TextBox60.Text);

                command.Parameters.AddWithValue("Burner_No11", TextBox61.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering11", TextBox62.Text);
                command.Parameters.AddWithValue("Inspection_Result11", TextBox63.Text);
                command.Parameters.AddWithValue("Burner_No23", TextBox64.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering23", TextBox65.Text);
                command.Parameters.AddWithValue("Inspection_Result23", TextBox66.Text);

                command.Parameters.AddWithValue("Burner_No12", TextBox67.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering12", TextBox68.Text);
                command.Parameters.AddWithValue("Inspection_Result12", TextBox69.Text);
                command.Parameters.AddWithValue("Burner_No24", TextBox70.Text);
                command.Parameters.AddWithValue("Run_Time_Monitering24", TextBox71.Text);
                command.Parameters.AddWithValue("Inspection_Result24", TextBox72.Text);

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