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
    public partial class OP_0029 : System.Web.UI.Page
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
                command.CommandText = "Insert_OP0029";
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

                //Main details of form
                command.Parameters.AddWithValue("Ctrl_Loop_Installed", RadioButtonList1.SelectedItem.Text);
                command.Parameters.AddWithValue("Ctrl_Loop_Functionality", RadioButtonList2.SelectedItem.Text);
                command.Parameters.AddWithValue("Tag_Labeling", RadioButtonList3.SelectedItem.Text);
                command.Parameters.AddWithValue("Transmitter_Installed", RadioButtonList4.SelectedItem.Text);
                command.Parameters.AddWithValue("Transmitter_Isolating_Valves", RadioButtonList5.SelectedItem.Text);
                command.Parameters.AddWithValue("Transmitter_Location_Accessibility", RadioButtonList6.SelectedItem.Text);
                command.Parameters.AddWithValue("Transmitter_Thermowell_Depth", RadioButtonList7.SelectedItem.Text);
                command.Parameters.AddWithValue("Transmitter_Orifice_Taps_Orientation", RadioButtonList8.SelectedItem.Text);
                command.Parameters.AddWithValue("Transmitter_Materials_Correct", RadioButtonList9.SelectedItem.Text);
                command.Parameters.AddWithValue("Transmitter_Orifice_Diameter", RadioButtonList10.SelectedItem.Text);
                command.Parameters.AddWithValue("Transmitter_Orifice_Inspection", RadioButtonList11.SelectedItem.Text);
                command.Parameters.AddWithValue("Impulse_Connections_Installation", RadioButtonList12.SelectedItem.Text);
                command.Parameters.AddWithValue("Impulse_Connections_Electrical_Steam_Tracing", RadioButtonList13.SelectedItem.Text);
                command.Parameters.AddWithValue("Impulse_Connections_Insulation_Installed", RadioButtonList14.SelectedItem.Text);
                command.Parameters.AddWithValue("Impulse_Connections_Fittings", RadioButtonList15.SelectedItem.Text);
                command.Parameters.AddWithValue("Air_Supplies_Visually_Inspected", RadioButtonList16.SelectedItem.Text);
                command.Parameters.AddWithValue("Air_Supplies_Correctly_Connected", RadioButtonList17.SelectedItem.Text);
                command.Parameters.AddWithValue("Pneumatic_Visually_Inspect", RadioButtonList18.SelectedItem.Text);
                command.Parameters.AddWithValue("Electronic_Polarity_Checked", RadioButtonList19.SelectedItem.Text);
                command.Parameters.AddWithValue("Electronic_Continuity_Checked", RadioButtonList20.SelectedItem.Text);
                command.Parameters.AddWithValue("Electronic_Wires_Cables_Labelled", RadioButtonList21.SelectedItem.Text);
                command.Parameters.AddWithValue("Electronic_Network_Communications", RadioButtonList22.SelectedItem.Text);
                command.Parameters.AddWithValue("Field_Instruments_Installation", RadioButtonList23.SelectedItem.Text);
                command.Parameters.AddWithValue("Field_Instruments_Electrical_Steam_Tracing", RadioButtonList24.SelectedItem.Text);
                command.Parameters.AddWithValue("Field_Instruments_Location_Accessibility", RadioButtonList25.SelectedItem.Text);
                command.Parameters.AddWithValue("Field_Instruments_Remote_Indicator_Viewable_From_Control_Valve", RadioButtonList26.SelectedItem.Text);
                command.Parameters.AddWithValue("Field_Instruments_Weather_Protected", RadioButtonList27.SelectedItem.Text);
                command.Parameters.AddWithValue("Field_Instruments_Air_Supply_Correct", RadioButtonList28.SelectedItem.Text);
                command.Parameters.AddWithValue("Field_Instruments_Hazardous_Area_Classification", RadioButtonList29.SelectedItem.Text);
                command.Parameters.AddWithValue("Panel_Name_Plates", RadioButtonList30.SelectedItem.Text);
                command.Parameters.AddWithValue("Panel_Power_Supply", RadioButtonList31.SelectedItem.Text);
                command.Parameters.AddWithValue("Panel_Regulator_Relief_PressureSet", RadioButtonList32.SelectedItem.Text);
                command.Parameters.AddWithValue("Panel_Scales_Charts_Factors_Correct", RadioButtonList33.SelectedItem.Text);
                command.Parameters.AddWithValue("Panel_Analyzer_Sample_System_Correct", RadioButtonList34.SelectedItem.Text);
                command.Parameters.AddWithValue("Panel_Air_Supply_Correct", RadioButtonList35.SelectedItem.Text);
                command.Parameters.AddWithValue("Automated_Control_Valves_Installation", RadioButtonList36.SelectedItem.Text);
                command.Parameters.AddWithValue("Automated_Control_Valves_Location_Accessibility", RadioButtonList37.SelectedItem.Text);
                command.Parameters.AddWithValue("Automated_Control_Valves_Solenoid_Operation", RadioButtonList38.SelectedItem.Text);
                command.Parameters.AddWithValue("Automated_Control_Valves_Type_Size", RadioButtonList39.SelectedItem.Text);
                command.Parameters.AddWithValue("Automated_Control_Valves_Hand_Wheel_Bypass", RadioButtonList40.SelectedItem.Text);
                command.Parameters.AddWithValue("General_Pneumatic_Visually_Inspect", RadioButtonList41.SelectedItem.Text);
                command.Parameters.AddWithValue("General_Electronic_Polarity", RadioButtonList42.SelectedItem.Text);
                command.Parameters.AddWithValue("General_Continuity_Checked", RadioButtonList43.SelectedItem.Text);
                command.Parameters.AddWithValue("General_Electronic_Wires_Cables_Labelled", RadioButtonList44.SelectedItem.Text);
                command.Parameters.AddWithValue("General_Network_Communications", RadioButtonList45.SelectedItem.Text);
                command.Parameters.AddWithValue("Calibration_Transmitter_Check", RadioButtonList46.SelectedItem.Text);
                command.Parameters.AddWithValue("Calibration_Control_Output", RadioButtonList47.SelectedItem.Text);
                command.Parameters.AddWithValue("Calibration_Valve_Failure", RadioButtonList48.SelectedItem.Text);
                command.Parameters.AddWithValue("Comments", CommentTxtBox.Text);
                command.Parameters.AddWithValue("Submit", SubmitRadioButtonList.SelectedItem.Text);

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

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/NewTest4.aspx");
        }
    }
}