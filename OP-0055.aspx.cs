﻿using System;
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
    public partial class OP_0055 : System.Web.UI.Page
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
                command.CommandText = "Insert_OP0055";
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

                command.Parameters.AddWithValue("Chk_Nameplate_Details", RadioButtonList1.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Location_Elevation_Orientation", RadioButtonList2.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Holding_Arrangements", RadioButtonList3.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Installation_Damaged", RadioButtonList4.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Nozzles", RadioButtonList5.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Vessels_Approved_Drawings", RadioButtonList6.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Vessel_Cleanliness", RadioButtonList7.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Internal_Bolting", RadioButtonList8.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Preservation", RadioButtonList9.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Platforming_Ladders", RadioButtonList10.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Manways", RadioButtonList11.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Painting_Insulation_Internal_Linings", RadioButtonList12.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Earthing_Bonding", RadioButtonList13.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_VesselPipe_Support", RadioButtonList14.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Disconnected_PipeWork", RadioButtonList15.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Internal_Components", RadioButtonList16.SelectedItem.Text);
                command.Parameters.AddWithValue("Chk_Bolting", RadioButtonList17.SelectedItem.Text);
                command.Parameters.AddWithValue("Produce_Markedup_Drawings", RadioButtonList18.SelectedItem.Text);
                command.Parameters.AddWithValue("Produce_Defect_List", RadioButtonList19.SelectedItem.Text);
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