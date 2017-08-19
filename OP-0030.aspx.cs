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
    public partial class PumpsAlignmentHot_OP0030 : System.Web.UI.Page
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
                command.CommandText = "Insert_OP0030";
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

                command.Parameters.AddWithValue("Suction_Pressure_Unit", TextBox1.Text);
                command.Parameters.AddWithValue("Suction_Pressure_Normal_Value", TextBox2.Text);
                command.Parameters.AddWithValue("Suction_Pressure_TR1", TextBox3.Text);
                command.Parameters.AddWithValue("Suction_Pressure_TR2", TextBox4.Text);
                command.Parameters.AddWithValue("Suction_Pressure_TR3", TextBox5.Text);
                command.Parameters.AddWithValue("Suction_Pressure_TR4", TextBox6.Text);
                command.Parameters.AddWithValue("Suction_Pressure_TR5", TextBox7.Text);
                command.Parameters.AddWithValue("Suction_Pressure_TR6", TextBox8.Text);
                command.Parameters.AddWithValue("Suction_Pressure_TR7", TextBox9.Text);

                command.Parameters.AddWithValue("Discharge_Pressure_Unit", TextBox10.Text);
                command.Parameters.AddWithValue("Discharge_Pressure_Normal_Value", TextBox11.Text);
                command.Parameters.AddWithValue("Discharge_Pressure_TR1", TextBox12.Text);
                command.Parameters.AddWithValue("Discharge_Pressure_TR2", TextBox13.Text);
                command.Parameters.AddWithValue("Discharge_Pressure_TR3", TextBox14.Text);
                command.Parameters.AddWithValue("Discharge_Pressure_TR4", TextBox15.Text);
                command.Parameters.AddWithValue("Discharge_Pressure_TR5", TextBox16.Text);
                command.Parameters.AddWithValue("Discharge_Pressure_TR6", TextBox17.Text);
                command.Parameters.AddWithValue("Discharge_Pressure_TR7", TextBox18.Text);

                command.Parameters.AddWithValue("Inlet_Temperature_Unit", TextBox19.Text);
                command.Parameters.AddWithValue("Inlet_Temperature_Normal_Value", TextBox20.Text);
                command.Parameters.AddWithValue("Inlet_Temperature_TR1", TextBox21.Text);
                command.Parameters.AddWithValue("Inlet_Temperature_TR2", TextBox22.Text);
                command.Parameters.AddWithValue("Inlet_Temperature_TR3", TextBox23.Text);
                command.Parameters.AddWithValue("Inlet_Temperature_TR4", TextBox24.Text);
                command.Parameters.AddWithValue("Inlet_Temperature_TR5", TextBox25.Text);
                command.Parameters.AddWithValue("Inlet_Temperature_TR6", TextBox26.Text);
                command.Parameters.AddWithValue("Inlet_Temperature_TR7", TextBox27.Text);

                command.Parameters.AddWithValue("Outlet_Temperature_Unit", TextBox28.Text);
                command.Parameters.AddWithValue("Outlet_Temperature_Normal_Value", TextBox29.Text);
                command.Parameters.AddWithValue("Outlet_Temperature_TR1", TextBox30.Text);
                command.Parameters.AddWithValue("Outlet_Temperature_TR2", TextBox31.Text);
                command.Parameters.AddWithValue("Outlet_Temperature_TR3", TextBox32.Text);
                command.Parameters.AddWithValue("Outlet_Temperature_TR4", TextBox33.Text);
                command.Parameters.AddWithValue("Outlet_Temperature_TR5", TextBox34.Text);
                command.Parameters.AddWithValue("Outlet_Temperature_TR6", TextBox35.Text);
                command.Parameters.AddWithValue("Outlet_Temperature_TR7", TextBox36.Text);

                command.Parameters.AddWithValue("Discharge_Flow_Unit", TextBox37.Text);
                command.Parameters.AddWithValue("Discharge_Flow_Normal_Value", TextBox38.Text);
                command.Parameters.AddWithValue("Discharge_Flow_TR1", TextBox39.Text);
                command.Parameters.AddWithValue("Discharge_Flow_TR2", TextBox40.Text);
                command.Parameters.AddWithValue("Discharge_Flow_TR3", TextBox41.Text);
                command.Parameters.AddWithValue("Discharge_Flow_TR4", TextBox42.Text);
                command.Parameters.AddWithValue("Discharge_Flow_TR5", TextBox43.Text);
                command.Parameters.AddWithValue("Discharge_Flow_TR6", TextBox44.Text);
                command.Parameters.AddWithValue("Discharge_Flow_TR7", TextBox45.Text);

                command.Parameters.AddWithValue("ShutIn_Discharge_Pressure_Unit", TextBox46.Text);
                command.Parameters.AddWithValue("ShutIn_Discharge_Pressure_Normal_Value", TextBox47.Text);
                command.Parameters.AddWithValue("ShutIn_Discharge_Pressure_TR1", TextBox48.Text);
                command.Parameters.AddWithValue("ShutIn_Discharge_Pressure_TR2", TextBox49.Text);
                command.Parameters.AddWithValue("ShutIn_Discharge_Pressure_TR3", TextBox50.Text);
                command.Parameters.AddWithValue("ShutIn_Discharge_Pressure_TR4", TextBox51.Text);
                command.Parameters.AddWithValue("ShutIn_Discharge_Pressure_TR5", TextBox52.Text);
                command.Parameters.AddWithValue("ShutIn_Discharge_Pressure_TR6", TextBox53.Text);
                command.Parameters.AddWithValue("ShutIn_Discharge_Pressure_TR7", TextBox54.Text);

                command.Parameters.AddWithValue("Thrust_Bearing_Temperature_Unit", TextBox55.Text);
                command.Parameters.AddWithValue("Thrust_Bearing_Temperature_Normal_Value", TextBox56.Text);
                command.Parameters.AddWithValue("Thrust_Bearing_Temperature_TR1", TextBox57.Text);
                command.Parameters.AddWithValue("Thrust_Bearing_Temperature_TR2", TextBox58.Text);
                command.Parameters.AddWithValue("Thrust_Bearing_Temperature_TR3", TextBox59.Text);
                command.Parameters.AddWithValue("Thrust_Bearing_Temperature_TR4", TextBox60.Text);
                command.Parameters.AddWithValue("Thrust_Bearing_Temperature_TR5", TextBox61.Text);
                command.Parameters.AddWithValue("Thrust_Bearing_Temperature_TR6", TextBox62.Text);
                command.Parameters.AddWithValue("Thrust_Bearing_Temperature_TR7", TextBox63.Text);

                command.Parameters.AddWithValue("Vibration_Unit", TextBox64.Text);
                command.Parameters.AddWithValue("Vibration_Normal_Value", TextBox65.Text);
                command.Parameters.AddWithValue("Vibration_TR1", TextBox66.Text);
                command.Parameters.AddWithValue("Vibration_TR2", TextBox67.Text);
                command.Parameters.AddWithValue("Vibration_TR3", TextBox68.Text);
                command.Parameters.AddWithValue("Vibration_TR4", TextBox69.Text);
                command.Parameters.AddWithValue("Vibration_TR5", TextBox70.Text);
                command.Parameters.AddWithValue("Vibration_TR6", TextBox71.Text);
                command.Parameters.AddWithValue("Vibration_TR7", TextBox72.Text);

                command.Parameters.AddWithValue("Motor_Speed_Unit", TextBox73.Text);
                command.Parameters.AddWithValue("Motor_Speed_Normal_Value", TextBox74.Text);
                command.Parameters.AddWithValue("Motor_Speed_TR1", TextBox75.Text);
                command.Parameters.AddWithValue("Motor_Speed_TR2", TextBox76.Text);
                command.Parameters.AddWithValue("Motor_Speed_TR3", TextBox77.Text);
                command.Parameters.AddWithValue("Motor_Speed_TR4", TextBox78.Text);
                command.Parameters.AddWithValue("Motor_Speed_TR5", TextBox79.Text);
                command.Parameters.AddWithValue("Motor_Speed_TR6", TextBox80.Text);
                command.Parameters.AddWithValue("Motor_Speed_TR7", TextBox81.Text);

                command.Parameters.AddWithValue("Motor_Voltage_Unit", TextBox82.Text);
                command.Parameters.AddWithValue("Motor_Voltage_Normal_Value", TextBox83.Text);
                command.Parameters.AddWithValue("Motor_Voltage_TR1", TextBox84.Text);
                command.Parameters.AddWithValue("Motor_Voltage_TR2", TextBox85.Text);
                command.Parameters.AddWithValue("Motor_Voltage_TR3", TextBox86.Text);
                command.Parameters.AddWithValue("Motor_Voltage_TR4", TextBox87.Text);
                command.Parameters.AddWithValue("Motor_Voltage_TR5", TextBox88.Text);
                command.Parameters.AddWithValue("Motor_Voltage_TR6", TextBox89.Text);
                command.Parameters.AddWithValue("Motor_Voltage_TR7", TextBox90.Text);

                command.Parameters.AddWithValue("Motor_Intensity_Unit", TextBox91.Text);
                command.Parameters.AddWithValue("Motor_Intensity_Normal_Value", TextBox92.Text);
                command.Parameters.AddWithValue("Motor_Intensity_TR1", TextBox93.Text);
                command.Parameters.AddWithValue("Motor_Intensity_TR2", TextBox94.Text);
                command.Parameters.AddWithValue("Motor_Intensity_TR3", TextBox95.Text);
                command.Parameters.AddWithValue("Motor_Intensity_TR4", TextBox96.Text);
                command.Parameters.AddWithValue("Motor_Intensity_TR5", TextBox97.Text);
                command.Parameters.AddWithValue("Motor_Intensity_TR6", TextBox98.Text);
                command.Parameters.AddWithValue("Motor_Intensity_TR7", TextBox99.Text);

                command.Parameters.AddWithValue("Electrical_Power_Unit", TextBox100.Text);
                command.Parameters.AddWithValue("Electrical_Power_Normal_Value", TextBox101.Text);
                command.Parameters.AddWithValue("Electrical_Power_TR1", TextBox102.Text);
                command.Parameters.AddWithValue("Electrical_Power_TR2", TextBox103.Text);
                command.Parameters.AddWithValue("Electrical_Power_TR3", TextBox104.Text);
                command.Parameters.AddWithValue("Electrical_Power_TR4", TextBox105.Text);
                command.Parameters.AddWithValue("Electrical_Power_TR5", TextBox106.Text);
                command.Parameters.AddWithValue("Electrical_Power_TR6", TextBox107.Text);
                command.Parameters.AddWithValue("Electrical_Power_TR7", TextBox108.Text);
                command.Parameters.AddWithValue("Comments", CommentTxtBox.Text);

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