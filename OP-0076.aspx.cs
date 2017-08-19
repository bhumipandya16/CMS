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
    public partial class OP_0076 : System.Web.UI.Page
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
                command.CommandText = "Insert_OP0076";
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
                command.Parameters.AddWithValue("Manufacturer", ManufacturerTxtBox.Text);

                //Main details of form
                command.Parameters.AddWithValue("Is_FAT_Performed", RadioButtonList1.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Test_Done", RadioButtonList2.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Corrective_Actions_Considered", RadioButtonList3.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Procedures_Documented_Correctly", RadioButtonList4.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Acceptance_Test_Identified", RadioButtonList5.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Safety_Health_Environment_Requirements_Fulfilled", RadioButtonList6.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Safety_Instrument_Identified", RadioButtonList7.SelectedItem.Text);
                command.Parameters.AddWithValue("Have_Skills_Competence_Resources_Considered", RadioButtonList8.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Modes_Of_Operation_Identified", RadioButtonList9.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Safe_States_Identified", RadioButtonList10.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_TripPoints_OperatingRange_Identified", RadioButtonList11.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Equipments_Installed", RadioButtonList12.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Relationships_Input_Output_Tested", RadioButtonList13.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Computations_By_Safety_Instrument_Correct", RadioButtonList14.SelectedItem.Text);
                command.Parameters.AddWithValue("Is_Response_Time_Tested", RadioButtonList15.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Reset_Functions_Tested", RadioButtonList16.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Operator_Functions_Tested", RadioButtonList17.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Alarms_Tested", RadioButtonList18.SelectedItem.Text);
                command.Parameters.AddWithValue("Is_Degrade_Mode_Of_Operation_Tested", RadioButtonList19.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Bypass_Functions_Working_Properly", RadioButtonList20.SelectedItem.Text);
                command.Parameters.AddWithValue("Is_Manual_Shutdown_Working_Properly", RadioButtonList21.SelectedItem.Text);
                command.Parameters.AddWithValue("Are_Diagonostic_Alarm_Functions_Working_Properly", RadioButtonList22.SelectedItem.Text);
                command.Parameters.AddWithValue("Comments", CommentTxtBox.Text);

                //Reference list of instruments
                command.Parameters.AddWithValue("Instrument1", TextBox1.Text);
                command.Parameters.AddWithValue("Calibration_Certificate_No1", TextBox2.Text);
                command.Parameters.AddWithValue("Last_Calibration_Date1", TextBox3.Text);
                command.Parameters.AddWithValue("Calibration_Expire_Date1", TextBox4.Text);
                
                command.Parameters.AddWithValue("Instrument2", TextBox5.Text);
                command.Parameters.AddWithValue("Calibration_Certificate_No2", TextBox6.Text);
                command.Parameters.AddWithValue("Last_Calibration_Date2", TextBox7.Text);
                command.Parameters.AddWithValue("Calibration_Expire_Date2", TextBox8.Text);
                
                command.Parameters.AddWithValue("Instrument3", TextBox9.Text);
                command.Parameters.AddWithValue("Calibration_Certificate_No3", TextBox10.Text);
                command.Parameters.AddWithValue("Last_Calibration_Date3", TextBox11.Text);
                command.Parameters.AddWithValue("Calibration_Expire_Date3", TextBox12.Text);
                
                command.Parameters.AddWithValue("Instrument4", TextBox13.Text);
                command.Parameters.AddWithValue("Calibration_Certificate_No4", TextBox14.Text);
                command.Parameters.AddWithValue("Last_Calibration_Date4", TextBox15.Text);
                command.Parameters.AddWithValue("Calibration_Expire_Date4", TextBox16.Text);
                
                command.Parameters.AddWithValue("Instrument5", TextBox17.Text);
                command.Parameters.AddWithValue("Calibration_Certificate_No5", TextBox18.Text);
                command.Parameters.AddWithValue("Last_Calibration_Date5", TextBox19.Text);
                command.Parameters.AddWithValue("Calibration_Expire_Date5", TextBox20.Text);
               
                command.Parameters.AddWithValue("Instrument6", TextBox21.Text);
                command.Parameters.AddWithValue("Calibration_Certificate_No6", TextBox22.Text);
                command.Parameters.AddWithValue("Last_Calibration_Date6", TextBox23.Text);
                command.Parameters.AddWithValue("Calibration_Expire_Date6", TextBox24.Text);
                
                //Bottom part of form
                command.Parameters.AddWithValue("Client_Company", ClientCompanyTxtBox.Text);
                command.Parameters.AddWithValue("Manufacturer_Company", ManufacturerCompanyTxtBox.Text);
                command.Parameters.AddWithValue("Client_Name", ClientNameTxtBox.Text);
                command.Parameters.AddWithValue("Manufacturer_Name", ManufacturerNameTxtBox.Text);
                command.Parameters.AddWithValue("Client_Sign", ClientSignTxtBox.Text);
                command.Parameters.AddWithValue("Manufacturer_Sign", ManufacturerSignTxtBox.Text);
                command.Parameters.AddWithValue("Client_Date", ClientDateTxtBox.Text);
                command.Parameters.AddWithValue("Manufacturer_Date", ManufacturerDateTxtBox.Text);
                
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