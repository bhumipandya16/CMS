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
    public partial class OP_0064 : System.Web.UI.Page
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
                command.CommandText = "Insert_OP0064";
                //Top part of form
                //command.Parameters.AddWithValue("Project_No", ProjectNoTxtBox.Text);
                //command.Parameters.AddWithValue("Plant", PlantTxtBox.Text);
                //command.Parameters.AddWithValue("System", SystemTxtBox.Text);
                //command.Parameters.AddWithValue("SubSystem", SubSystemTxtBox.Text);
                //command.Parameters.AddWithValue("Equipment", EquipmentTxtBox.Text);
                //command.Parameters.AddWithValue("TagNumber", TagNumberTxtBox.Text);
                //command.Parameters.AddWithValue("Discipline", DisciplineTxtBox.Text);
                //command.Parameters.AddWithValue("Date", DateTxtBox.Text);
                //command.Parameters.AddWithValue("P_ID", PIDTxtBox.Text);

                command.Parameters.AddWithValue("Chk_Equipment", RadioButtonList1.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Transformer_Data_Conformity", RadioButtonList2.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_General_Mechanical_Arrangement", RadioButtonList3.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Transformer_Installation", RadioButtonList4.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Dielectric_Levels", RadioButtonList5.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Retention_Plan", RadioButtonList6.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Transformer_Access", RadioButtonList7.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Primary_Terminations", RadioButtonList8.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Secondary_Terminations", RadioButtonList9.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_All_Terminations_Enclosures", RadioButtonList10.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Accessories_Datasheet", RadioButtonList11.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Cables", RadioButtonList12.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Tap_Changer_Selector", RadioButtonList13.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_OnLoad_Tap_Changer_Control", RadioButtonList14.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Accessories_Installation", RadioButtonList15.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Relief_Valve", RadioButtonList16.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Mechanical_Interlock", RadioButtonList17.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Cable_Connections", RadioButtonList18.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Coating_Integrity", RadioButtonList19.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Earthing_Bonding", RadioButtonList20.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Supplier_Documentation", RadioButtonList21.SelectedItem.Text);
                command.Parameters.AddWithValue("Produce_Defect_List", RadioButtonList22.SelectedItem.Text);
                command.Parameters.AddWithValue("Comments", CommentTxtBox.Text);

                //Bottom part of form
                //command.Parameters.AddWithValue("IPC_Company", IPCCompanyTxtBox.Text);
                //command.Parameters.AddWithValue("Commissioning_Company", CommissioningCompanyTxtBox.Text);
                //command.Parameters.AddWithValue("QA_QC_Company", QAQCCompanyTxtBox.Text);
                //command.Parameters.AddWithValue("Lead_StartUp_Company", LeadStartUpCompanyTxtBox.Text);
                //command.Parameters.AddWithValue("IPC_Name", IPCNameTxtBox.Text);
                //command.Parameters.AddWithValue("Commissioning_Name", CommissioningNameTxtBox.Text);
                //command.Parameters.AddWithValue("QA_QC_Name", QAQCNameTxtBox.Text);
                //command.Parameters.AddWithValue("Lead_StartUp_Name", LeadStartUpNameTxtBox.Text);
                //command.Parameters.AddWithValue("IPC_Sign", IPCSignTxtBox.Text);
                //command.Parameters.AddWithValue("Commissioning_Sign", CommissioningSignTxtBox.Text);
                //command.Parameters.AddWithValue("QA_QC_Sign", QAQCSignTxtBox.Text);
                //command.Parameters.AddWithValue("Lead_StartUp_Sign", LeadStartUpSignTxtBox.Text);
                //command.Parameters.AddWithValue("IPC_Date", IPCDateTxtBox.Text);
                //command.Parameters.AddWithValue("Commissioning_Date", CommissioningDateTxtBox.Text);
                //command.Parameters.AddWithValue("QA_QC_Date", QAQCDateTxtBox.Text);
                //command.Parameters.AddWithValue("Lead_StartUp_Date", LeadStartUpDateTxtBox.Text);

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