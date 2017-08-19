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
    public partial class OP_0072 : System.Web.UI.Page
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
                command.CommandText = "Insert_OP0072";
                //Top part of form
                command.Parameters.AddWithValue("Project_Number", ProjectNoTxtBox.Text);
                command.Parameters.AddWithValue("Plant", PlantTxtBox.Text);
                command.Parameters.AddWithValue("System_Name", SystemTxtBox.Text);
                command.Parameters.AddWithValue("Sub_System", SubSystemTxtBox.Text);
                command.Parameters.AddWithValue("Equipment", EquipmentTxtBox.Text);
                command.Parameters.AddWithValue("Tag_Number", TagNumberTxtBox.Text);
                command.Parameters.AddWithValue("Discipline", DisciplineTxtBox.Text);
                command.Parameters.AddWithValue("Form_Date", DateTxtBox.Text);
                command.Parameters.AddWithValue("PID", PIDTxtBox.Text);
                command.Parameters.AddWithValue("Line", LinesTxtBox.Text);
                command.Parameters.AddWithValue("Line_From", FromTxtBox.Text);
                command.Parameters.AddWithValue("Line_To", ToTxtBox.Text);
                command.Parameters.AddWithValue("Diameter", DiameterTxtBox.Text);
                command.Parameters.AddWithValue("Wall_Thickness", WallThickTxtbox.Text);
                command.Parameters.AddWithValue("Operation_Pressure", OpPressureTxtBox.Text);
                command.Parameters.AddWithValue("Test_Pressure", TestPressureTxtBox.Text);
                command.Parameters.AddWithValue("Fluid_Temperature", FluidTempTxtBox.Text);
                command.Parameters.AddWithValue("Section_Temperature", SectionTempTxtBox.Text);

                command.Parameters.AddWithValue("Pressure1", TextBox1.Text);
                command.Parameters.AddWithValue("Temperature1", TextBox2.Text);
                command.Parameters.AddWithValue("Pressure13", TextBox3.Text);
                command.Parameters.AddWithValue("Temperature13", TextBox4.Text);

                command.Parameters.AddWithValue("Pressure2", TextBox5.Text);
                command.Parameters.AddWithValue("Temperature2", TextBox6.Text);
                command.Parameters.AddWithValue("Pressure14", TextBox7.Text);
                command.Parameters.AddWithValue("Temperature14", TextBox8.Text);

                command.Parameters.AddWithValue("Pressure3", TextBox9.Text);
                command.Parameters.AddWithValue("Temperature3", TextBox10.Text);
                command.Parameters.AddWithValue("Pressure15", TextBox11.Text);
                command.Parameters.AddWithValue("Temperature15", TextBox12.Text);

                command.Parameters.AddWithValue("Pressure4", TextBox13.Text);
                command.Parameters.AddWithValue("Temperature4", TextBox14.Text);
                command.Parameters.AddWithValue("Pressure16", TextBox15.Text);
                command.Parameters.AddWithValue("Temperature16", TextBox16.Text);

                command.Parameters.AddWithValue("Pressure5", TextBox17.Text);
                command.Parameters.AddWithValue("Temperature5", TextBox18.Text);
                command.Parameters.AddWithValue("Pressure17", TextBox19.Text);
                command.Parameters.AddWithValue("Temperature17", TextBox20.Text);

                command.Parameters.AddWithValue("Pressure6", TextBox21.Text);
                command.Parameters.AddWithValue("Temperature6", TextBox22.Text);
                command.Parameters.AddWithValue("Pressure18", TextBox23.Text);
                command.Parameters.AddWithValue("Temperature18", TextBox24.Text);

                command.Parameters.AddWithValue("Pressure7", TextBox25.Text);
                command.Parameters.AddWithValue("Temperature7", TextBox26.Text);
                command.Parameters.AddWithValue("Pressure19", TextBox27.Text);
                command.Parameters.AddWithValue("Temperature19", TextBox28.Text);

                command.Parameters.AddWithValue("Pressure8", TextBox29.Text);
                command.Parameters.AddWithValue("Temperature8", TextBox30.Text);
                command.Parameters.AddWithValue("Pressure20", TextBox31.Text);
                command.Parameters.AddWithValue("Temperature20", TextBox32.Text);

                command.Parameters.AddWithValue("Pressure9", TextBox33.Text);
                command.Parameters.AddWithValue("Temperature9", TextBox34.Text);
                command.Parameters.AddWithValue("Pressure21", TextBox35.Text);
                command.Parameters.AddWithValue("Temperature21", TextBox36.Text);

                command.Parameters.AddWithValue("Pressure10", TextBox37.Text);
                command.Parameters.AddWithValue("Temperature10", TextBox38.Text);
                command.Parameters.AddWithValue("Pressure22", TextBox39.Text);
                command.Parameters.AddWithValue("Temperature22", TextBox40.Text);

                command.Parameters.AddWithValue("Pressure11", TextBox41.Text);
                command.Parameters.AddWithValue("Temperature11", TextBox42.Text);
                command.Parameters.AddWithValue("Pressure23", TextBox43.Text);
                command.Parameters.AddWithValue("Temperature23", TextBox44.Text);

                command.Parameters.AddWithValue("Pressure12", TextBox45.Text);
                command.Parameters.AddWithValue("Temperature12", TextBox46.Text);
                command.Parameters.AddWithValue("Pressure24", TextBox47.Text);
                command.Parameters.AddWithValue("Temperature24", TextBox48.Text);

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