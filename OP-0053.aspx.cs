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
    public partial class OP_0053 : System.Web.UI.Page
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
                command.CommandText = "Insert_OP0053";
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
                command.Parameters.AddWithValue("Lines", LinesTxtBox.Text);
                command.Parameters.AddWithValue("Cleaning_Agent", CheckBoxList1.SelectedValue);

                command.Parameters.AddWithValue("PID1", TextBox1.Text);
                command.Parameters.AddWithValue("Line_Number1", TextBox2.Text);
                command.Parameters.AddWithValue("Line_From1", TextBox3.Text);
                command.Parameters.AddWithValue("Line_To1", TextBox4.Text);
                command.Parameters.AddWithValue("Inspection_Result1", TextBox5.Text);
                command.Parameters.AddWithValue("Sign_Date1", TextBox6.Text);

                command.Parameters.AddWithValue("PID2", TextBox7.Text);
                command.Parameters.AddWithValue("Line_Number2", TextBox8.Text);
                command.Parameters.AddWithValue("Line_From2", TextBox9.Text);
                command.Parameters.AddWithValue("Line_To2", TextBox10.Text);
                command.Parameters.AddWithValue("Inspection_Result2", TextBox11.Text);
                command.Parameters.AddWithValue("Sign_Date2", TextBox12.Text);

                command.Parameters.AddWithValue("PID3", TextBox13.Text);
                command.Parameters.AddWithValue("Line_Number3", TextBox14.Text);
                command.Parameters.AddWithValue("Line_From3", TextBox15.Text);
                command.Parameters.AddWithValue("Line_To3", TextBox16.Text);
                command.Parameters.AddWithValue("Inspection_Result3", TextBox17.Text);
                command.Parameters.AddWithValue("Sign_Date3", TextBox18.Text);

                command.Parameters.AddWithValue("PID4", TextBox19.Text);
                command.Parameters.AddWithValue("Line_Number4", TextBox20.Text);
                command.Parameters.AddWithValue("Line_From4", TextBox21.Text);
                command.Parameters.AddWithValue("Line_To4", TextBox22.Text);
                command.Parameters.AddWithValue("Inspection_Result4", TextBox23.Text);
                command.Parameters.AddWithValue("Sign_Date4", TextBox24.Text);

                command.Parameters.AddWithValue("PID5", TextBox25.Text);
                command.Parameters.AddWithValue("Line_Number5", TextBox26.Text);
                command.Parameters.AddWithValue("Line_From5", TextBox27.Text);
                command.Parameters.AddWithValue("Line_To5", TextBox28.Text);
                command.Parameters.AddWithValue("Inspection_Result5", TextBox29.Text);
                command.Parameters.AddWithValue("Sign_Date5", TextBox30.Text);

                command.Parameters.AddWithValue("PID6", TextBox31.Text);
                command.Parameters.AddWithValue("Line_Number6", TextBox32.Text);
                command.Parameters.AddWithValue("Line_From6", TextBox33.Text);
                command.Parameters.AddWithValue("Line_To6", TextBox34.Text);
                command.Parameters.AddWithValue("Inspection_Result6", TextBox35.Text);
                command.Parameters.AddWithValue("Sign_Date6", TextBox36.Text);

                command.Parameters.AddWithValue("PID7", TextBox37.Text);
                command.Parameters.AddWithValue("Line_Number7", TextBox38.Text);
                command.Parameters.AddWithValue("Line_From7", TextBox39.Text);
                command.Parameters.AddWithValue("Line_To7", TextBox40.Text);
                command.Parameters.AddWithValue("Inspection_Result7", TextBox41.Text);
                command.Parameters.AddWithValue("Sign_Date7", TextBox42.Text);

                command.Parameters.AddWithValue("PID8", TextBox43.Text);
                command.Parameters.AddWithValue("Line_Number8", TextBox44.Text);
                command.Parameters.AddWithValue("Line_From8", TextBox45.Text);
                command.Parameters.AddWithValue("Line_To8", TextBox46.Text);
                command.Parameters.AddWithValue("Inspection_Result8", TextBox47.Text);
                command.Parameters.AddWithValue("Sign_Date8", TextBox48.Text);

                command.Parameters.AddWithValue("PID9", TextBox49.Text);
                command.Parameters.AddWithValue("Line_Number9", TextBox50.Text);
                command.Parameters.AddWithValue("Line_From9", TextBox51.Text);
                command.Parameters.AddWithValue("Line_To9", TextBox52.Text);
                command.Parameters.AddWithValue("Inspection_Result9", TextBox53.Text);
                command.Parameters.AddWithValue("Sign_Date9", TextBox54.Text);

                command.Parameters.AddWithValue("PID10", TextBox55.Text);
                command.Parameters.AddWithValue("Line_Number10", TextBox56.Text);
                command.Parameters.AddWithValue("Line_From10", TextBox57.Text);
                command.Parameters.AddWithValue("Line_To10", TextBox58.Text);
                command.Parameters.AddWithValue("Inspection_Result10", TextBox59.Text);
                command.Parameters.AddWithValue("Sign_Date10", TextBox60.Text);

                command.Parameters.AddWithValue("PID11", TextBox61.Text);
                command.Parameters.AddWithValue("Line_Number11", TextBox62.Text);
                command.Parameters.AddWithValue("Line_From11", TextBox63.Text);
                command.Parameters.AddWithValue("Line_To11", TextBox64.Text);
                command.Parameters.AddWithValue("Inspection_Result11", TextBox65.Text);
                command.Parameters.AddWithValue("Sign_Date11", TextBox66.Text);

                command.Parameters.AddWithValue("PID12", TextBox67.Text);
                command.Parameters.AddWithValue("Line_Number12", TextBox68.Text);
                command.Parameters.AddWithValue("Line_From12", TextBox69.Text);
                command.Parameters.AddWithValue("Line_To12", TextBox70.Text);
                command.Parameters.AddWithValue("Inspection_Result12", TextBox71.Text);
                command.Parameters.AddWithValue("Sign_Date12", TextBox72.Text);

                command.Parameters.AddWithValue("PID13", TextBox73.Text);
                command.Parameters.AddWithValue("Line_Number13", TextBox74.Text);
                command.Parameters.AddWithValue("Line_From13", TextBox75.Text);
                command.Parameters.AddWithValue("Line_To13", TextBox76.Text);
                command.Parameters.AddWithValue("Inspection_Result13", TextBox77.Text);
                command.Parameters.AddWithValue("Sign_Date13", TextBox78.Text);

                command.Parameters.AddWithValue("PID14", TextBox79.Text);
                command.Parameters.AddWithValue("Line_Number14", TextBox80.Text);
                command.Parameters.AddWithValue("Line_From14", TextBox81.Text);
                command.Parameters.AddWithValue("Line_To14", TextBox82.Text);
                command.Parameters.AddWithValue("Inspection_Result14", TextBox83.Text);
                command.Parameters.AddWithValue("Sign_Date14", TextBox84.Text);

                //Bottom part of form
                command.Parameters.AddWithValue("Visual", VisualTxtBox.Text);
                command.Parameters.AddWithValue("Plate", PlateTxtBox.Text);
                command.Parameters.AddWithValue("QC_Lab_Result", LabResultTxtBox.Text);

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