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
    public partial class OP_0083 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                ProjectNameDdl.AppendDataBoundItems = true;
                String strConnString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                String strQuery = "SELECT * FROM Refinery";
                SqlConnection con = new SqlConnection(strConnString);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQuery;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    ProjectNameDdl.DataSource = cmd.ExecuteReader();
                    ProjectNameDdl.DataTextField = "Name";
                    ProjectNameDdl.DataValueField = "Refinery_id";
                    ProjectNameDdl.DataBind();
                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
        }

        protected void ProjectNameDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            PUNameDdl.Items.Clear();
            PUNameDdl.Items.Add(new ListItem("--Select PU--", ""));
            SystemDdl.Items.Clear();
            SystemDdl.Items.Add(new ListItem("--Select System--", ""));

            PUNameDdl.AppendDataBoundItems = true;
            String strConnString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            String strQuery = "SELECT * FROM ((Process_Units P INNER JOIN Refinery_Area RA ON RA.Refinery_Area_id=P.Refinery_Area_id)INNER JOIN Refinery R ON R.Refinery_id=RA.Refinery_id) WHERE R.Refinery_id = @Refinery_id";
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Refinery_id", ProjectNameDdl.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                PUNameDdl.DataSource = cmd.ExecuteReader();
                PUNameDdl.DataTextField = "Process_Unit_Name";
                PUNameDdl.DataValueField = "Process_Unit_id";
                PUNameDdl.DataBind();
                if (PUNameDdl.Items.Count > 1)
                {
                    PUNameDdl.Enabled = true;
                }
                else
                {
                    PUNameDdl.Enabled = false;
                    SystemDdl.Enabled = false;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        protected void PUNameDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            SystemDdl.Items.Clear();
            SystemDdl.Items.Add(new ListItem("--Select System--", ""));
            SystemDdl.AppendDataBoundItems = true;
            String strConnString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            String strQuery = "SELECT * FROM (((PU_System PU INNER JOIN Process_Units P ON P.Process_Unit_id=PU.Process_Unit_id) INNER JOIN Refinery_Area RA ON RA.Refinery_Area_id = P.Refinery_Area_id) INNER JOIN Refinery R ON R.Refinery_id = RA.Refinery_id) WHERE P.Process_Unit_id = @Process_Unit_id";
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Process_Unit_id", PUNameDdl.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SystemDdl.DataSource = cmd.ExecuteReader();
                SystemDdl.DataTextField = "System_Name";
                SystemDdl.DataValueField = "PU_Systems_id";
                SystemDdl.DataBind();
                if (SystemDdl.Items.Count > 1)
                {
                    SystemDdl.Enabled = true;
                }
                else
                {
                    SystemDdl.Enabled = false;
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
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
                command.CommandText = "Insert_OP0083";
                //Top part of form
                command.Parameters.AddWithValue("Form", FormLbl.Text);
                command.Parameters.AddWithValue("Project_Number", ProjectNoTxtBox.Text);
                command.Parameters.AddWithValue("Project_Name", ProjectNameDdl.SelectedItem.Text);
                command.Parameters.AddWithValue("Process_Unit_Name", PUNameDdl.SelectedItem.Text);
                command.Parameters.AddWithValue("System_Name", SystemDdl.SelectedItem.Text);
                command.Parameters.AddWithValue("Sub_System", SubSystemTxtBox.Text);
                command.Parameters.AddWithValue("Equipment", EquipmentTxtBox.Text);
                command.Parameters.AddWithValue("Tag_Number", TagNumberTxtBox.Text);
                command.Parameters.AddWithValue("Discipline", DisciplineTxtBox.Text);
                command.Parameters.AddWithValue("Form_Date", DateTxtBox.Text);
                command.Parameters.AddWithValue("PID", PIDTxtBox.Text);
                command.Parameters.AddWithValue("Purging_Fluid", PurgingFluidTxtBox.Text);
                command.Parameters.AddWithValue("Volume", VolumeTxtBox.Text);

                command.Parameters.AddWithValue("Location_No1", TextBox1.Text);
                command.Parameters.AddWithValue("N2_Content1", TextBox2.Text);
                command.Parameters.AddWithValue("Comments1", CommentTxtBox.Text);
                command.Parameters.AddWithValue("Location_No7", TextBox3.Text);
                command.Parameters.AddWithValue("N2_Content7", TextBox4.Text);
                command.Parameters.AddWithValue("Comments7", CommentTxtBox.Text);

                command.Parameters.AddWithValue("Location_No2", TextBox5.Text);
                command.Parameters.AddWithValue("N2_Content2", TextBox6.Text);
                command.Parameters.AddWithValue("Comments2", CommentTxtBox.Text);
                command.Parameters.AddWithValue("Location_No8", TextBox7.Text);
                command.Parameters.AddWithValue("N2_Content8", TextBox8.Text);
                command.Parameters.AddWithValue("Comments8", CommentTxtBox.Text);

                command.Parameters.AddWithValue("Location_No3", TextBox9.Text);
                command.Parameters.AddWithValue("N2_Content3", TextBox10.Text);
                command.Parameters.AddWithValue("Comments3", CommentTxtBox.Text);
                command.Parameters.AddWithValue("Location_No9", TextBox11.Text);
                command.Parameters.AddWithValue("N2_Content9", TextBox12.Text);
                command.Parameters.AddWithValue("Comments9", CommentTxtBox.Text);

                command.Parameters.AddWithValue("Location_No4", TextBox13.Text);
                command.Parameters.AddWithValue("N2_Content4", TextBox14.Text);
                command.Parameters.AddWithValue("Comments4", CommentTxtBox.Text);
                command.Parameters.AddWithValue("Location_No10", TextBox15.Text);
                command.Parameters.AddWithValue("N2_Content10", TextBox16.Text);
                command.Parameters.AddWithValue("Comments10", CommentTxtBox.Text);

                command.Parameters.AddWithValue("Location_No5", TextBox17.Text);
                command.Parameters.AddWithValue("N2_Content5", TextBox18.Text);
                command.Parameters.AddWithValue("Comments5", CommentTxtBox.Text);
                command.Parameters.AddWithValue("Location_No11", TextBox19.Text);
                command.Parameters.AddWithValue("N2_Content11", TextBox20.Text);
                command.Parameters.AddWithValue("Comments11", CommentTxtBox.Text);

                command.Parameters.AddWithValue("Location_No6", TextBox21.Text);
                command.Parameters.AddWithValue("N2_Content6", TextBox22.Text);
                command.Parameters.AddWithValue("Comments6", CommentTxtBox.Text);
                command.Parameters.AddWithValue("Location_No12", TextBox23.Text);
                command.Parameters.AddWithValue("N2_Content12", TextBox24.Text);
                command.Parameters.AddWithValue("Comments12", CommentTxtBox.Text);

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
                command.Parameters.AddWithValue("Submit", SubmitRadioButtonList.SelectedItem.Text);

                command.ExecuteNonQuery();
                connection.Close();
                SuccessLbl.Text = "Successfully Inserted !!";
            }

            catch (Exception ex)
            {
                SuccessLbl.Text = "Error inserting data" + ex.ToString();
            }
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Comm.aspx");
        }
    }
}