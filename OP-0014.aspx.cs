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
    public partial class OP_0014 : System.Web.UI.Page
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
                command.CommandText = "Insert_OP0014";

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

                command.Parameters.AddWithValue("Bumping_Hazard_Found", RadioButtonList1.SelectedItem.Text);
                command.Parameters.AddWithValue("Equipment_Accessible", RadioButtonList2.SelectedItem.Text);
                command.Parameters.AddWithValue("Paving_Completed", RadioButtonList3.SelectedItem.Text);
                command.Parameters.AddWithValue("Cleanup_Completed", RadioButtonList4.SelectedItem.Text);
                command.Parameters.AddWithValue("Platforms_Completed", RadioButtonList5.SelectedItem.Text);
                command.Parameters.AddWithValue("Scaffold", RadioButtonList6.SelectedItem.Text);

                command.Parameters.AddWithValue("Steel_Structure_Completed", RadioButtonList7.SelectedItem.Text);
                command.Parameters.AddWithValue("Concrete_Structure_Completed", RadioButtonList8.SelectedItem.Text);
                command.Parameters.AddWithValue("Drainages_Completed", RadioButtonList9.SelectedItem.Text);
                command.Parameters.AddWithValue("Ladders_Completed", RadioButtonList10.SelectedItem.Text);
                command.Parameters.AddWithValue("Painting_Completed", RadioButtonList11.SelectedItem.Text);
                command.Parameters.AddWithValue("PM_Scheduled_Written", RadioButtonList12.SelectedItem.Text);

                command.Parameters.AddWithValue("Turbine_Trip_Test", RadioButtonList13.SelectedItem.Text);
                command.Parameters.AddWithValue("Guards_Installed", RadioButtonList14.SelectedItem.Text);
                command.Parameters.AddWithValue("Lubrication_Complete", RadioButtonList15.SelectedItem.Text);
                command.Parameters.AddWithValue("Equipment_History_Form", RadioButtonList16.SelectedItem.Text);
                command.Parameters.AddWithValue("Shutdown_Devices_Checkout_Completed", RadioButtonList17.SelectedItem.Text);
                command.Parameters.AddWithValue("Limit_Switches_Set", RadioButtonList18.SelectedItem.Text);
                command.Parameters.AddWithValue("Pressurized_Vessels_Inspected", RadioButtonList19.SelectedItem.Text);
                command.Parameters.AddWithValue("Explosion_Proof_Equipment", RadioButtonList20.SelectedItem.Text);
                command.Parameters.AddWithValue("Construction_Materials", RadioButtonList21.SelectedItem.Text);
                command.Parameters.AddWithValue("Safety_Valves_Calibrated", RadioButtonList22.SelectedItem.Text);
                command.Parameters.AddWithValue("Process_Valves_Sealed", RadioButtonList23.SelectedItem.Text);
                command.Parameters.AddWithValue("Insulation_Installed", RadioButtonList24.SelectedItem.Text);
                command.Parameters.AddWithValue("Relief_Safety_Valves_Obstruction_Free", RadioButtonList25.SelectedItem.Text);
                command.Parameters.AddWithValue("PSV_Safety_Valves_Tagged", RadioButtonList26.SelectedItem.Text);
                command.Parameters.AddWithValue("Blinds_Installed", RadioButtonList27.SelectedItem.Text);
                command.Parameters.AddWithValue("Hydrocarbon_Drainages_Connected", RadioButtonList28.SelectedItem.Text);
                command.Parameters.AddWithValue("Relief_Safety_Valves_Release_To_Atmosphere", RadioButtonList29.SelectedItem.Text);
                command.Parameters.AddWithValue("Relief_Safety_Valves_Duly_Supported", RadioButtonList30.SelectedItem.Text);
                command.Parameters.AddWithValue("Remote_Operated_Block_Valves", RadioButtonList31.SelectedItem.Text);
                command.Parameters.AddWithValue("Disks_And_Blinds_Off", RadioButtonList32.SelectedItem.Text);
                command.Parameters.AddWithValue("Nitrogen_Purge", RadioButtonList33.SelectedItem.Text);
                command.Parameters.AddWithValue("Adequate_Liquid", RadioButtonList34.SelectedItem.Text);
                command.Parameters.AddWithValue("Adequate_Access_For_Manual_Operated_Valves", RadioButtonList35.SelectedItem.Text);
                command.Parameters.AddWithValue("Valve_Position_Local_Indication", RadioButtonList36.SelectedItem.Text);
                command.Parameters.AddWithValue("Critical_Manual_Valves", RadioButtonList37.SelectedItem.Text);
                command.Parameters.AddWithValue("Relief_Safety_Valves_Release", RadioButtonList38.SelectedItem.Text);
                command.Parameters.AddWithValue("Bolts_Nuts_Flanges", RadioButtonList39.SelectedItem.Text);

                command.Parameters.AddWithValue("Rotating_Equipments_Design_Specifications", RadioButtonList40.SelectedItem.Text);
                command.Parameters.AddWithValue("Equipment_Tagged", RadioButtonList41.SelectedItem.Text);
                command.Parameters.AddWithValue("Warranty_Provided", RadioButtonList42.SelectedItem.Text);
                command.Parameters.AddWithValue("Equipment_Cleanup", RadioButtonList43.SelectedItem.Text);
                command.Parameters.AddWithValue("Rotating_Equipment_And_Motor_Duly_Coupled", RadioButtonList44.SelectedItem.Text);
                command.Parameters.AddWithValue("Equipment_Properly_Aligned", RadioButtonList45.SelectedItem.Text);
                command.Parameters.AddWithValue("Rotating_Equipments_Duly_Purged", RadioButtonList46.SelectedItem.Text);
                command.Parameters.AddWithValue("RE_Lubrication_Completed", RadioButtonList47.SelectedItem.Text);
                command.Parameters.AddWithValue("Spare_Parts_For_Startup", RadioButtonList48.SelectedItem.Text);
                command.Parameters.AddWithValue("Drainage_System_Installed", RadioButtonList49.SelectedItem.Text);
                command.Parameters.AddWithValue("Lubrication_System_Installed", RadioButtonList50.SelectedItem.Text);
                command.Parameters.AddWithValue("Filters_Installed", RadioButtonList51.SelectedItem.Text);
                command.Parameters.AddWithValue("Protector_Mesh", RadioButtonList52.SelectedItem.Text);

                command.Parameters.AddWithValue("Insulation_Complete", RadioButtonList53.SelectedItem.Text);
                command.Parameters.AddWithValue("Flange_Makeup", RadioButtonList54.SelectedItem.Text);
                command.Parameters.AddWithValue("Flange_Correct_Gasket_Bolts_Installed", RadioButtonList55.SelectedItem.Text);
                command.Parameters.AddWithValue("Flange_Nuts_Tightened", RadioButtonList56.SelectedItem.Text);
                command.Parameters.AddWithValue("Proper_Gaskets", RadioButtonList57.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Temporary_Gaskets_Removed", RadioButtonList58.SelectedItem.Text);
                command.Parameters.AddWithValue("Equipment_Blind_Capability", RadioButtonList59.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Test_Blind_Plates_Removed", RadioButtonList60.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Permanent_Spectacle_Blinds_Installed", RadioButtonList61.SelectedItem.Text);
                command.Parameters.AddWithValue("Valve_Accessibility", RadioButtonList62.SelectedItem.Text);
                command.Parameters.AddWithValue("Valve_Hand_Wheel", RadioButtonList63.SelectedItem.Text);
                command.Parameters.AddWithValue("Valve_Spindle_Cover", RadioButtonList64.SelectedItem.Text);
                command.Parameters.AddWithValue("Valve_Wrench_Handle", RadioButtonList65.SelectedItem.Text);
                command.Parameters.AddWithValue("Vlave_Flow_Direction", RadioButtonList66.SelectedItem.Text);
                command.Parameters.AddWithValue("Check_Valve_Flapper", RadioButtonList67.SelectedItem.Text);
                command.Parameters.AddWithValue("Proper_Metallurgy", RadioButtonList68.SelectedItem.Text);
                command.Parameters.AddWithValue("Purge_Vent_Provisions", RadioButtonList69.SelectedItem.Text);
                command.Parameters.AddWithValue("Bull_Plugs_Installed", RadioButtonList70.SelectedItem.Text);
                command.Parameters.AddWithValue("Proper_Pressure_Gauge_Installed", RadioButtonList71.SelectedItem.Text);
                command.Parameters.AddWithValue("Pipe_Supports_Complete", RadioButtonList72.SelectedItem.Text);
                command.Parameters.AddWithValue("Screwed_Piping_Appropriate", RadioButtonList73.SelectedItem.Text);
                command.Parameters.AddWithValue("Pipe_Thread_Engagement_Sufficient", RadioButtonList74.SelectedItem.Text);
                command.Parameters.AddWithValue("Sewers_Complete", RadioButtonList75.SelectedItem.Text);
                command.Parameters.AddWithValue("Stress_Relieving_Complete", RadioButtonList76.SelectedItem.Text);
                command.Parameters.AddWithValue("Tell_Tale_Hole_Complete", RadioButtonList77.SelectedItem.Text);
                command.Parameters.AddWithValue("Nondestructive_Testing_Complete", RadioButtonList78.SelectedItem.Text);
                command.Parameters.AddWithValue("Hydrotest_Complete", RadioButtonList79.SelectedItem.Text);
                command.Parameters.AddWithValue("Plug_blind_Flange_Installed", RadioButtonList80.SelectedItem.Text);

                command.Parameters.AddWithValue("Grounding_Complete", RadioButtonList81.SelectedItem.Text);
                command.Parameters.AddWithValue("Lighting_Complete", RadioButtonList82.SelectedItem.Text);
                command.Parameters.AddWithValue("S_D_Devices_Checkout_Complete", RadioButtonList83.SelectedItem.Text);
                command.Parameters.AddWithValue("Alarms_Checkout_Complete", RadioButtonList84.SelectedItem.Text);
                command.Parameters.AddWithValue("Electrical_Equipment_Properly_Labeled", RadioButtonList85.SelectedItem.Text);
                command.Parameters.AddWithValue("Seals_Poured", RadioButtonList86.SelectedItem.Text);
                command.Parameters.AddWithValue("Conduit_Tagged", RadioButtonList87.SelectedItem.Text);
                command.Parameters.AddWithValue("Cables_Tagged", RadioButtonList88.SelectedItem.Text);
                command.Parameters.AddWithValue("Wires_Labeled", RadioButtonList89.SelectedItem.Text);
                command.Parameters.AddWithValue("Conduit_Covers_Installed", RadioButtonList90.SelectedItem.Text);
                command.Parameters.AddWithValue("Vents_Drains_Installed", RadioButtonList91.SelectedItem.Text);
                command.Parameters.AddWithValue("Range_Change_Form_Submitted", RadioButtonList92.SelectedItem.Text);
                command.Parameters.AddWithValue("Instrumentation_Area_Classification", RadioButtonList93.SelectedItem.Text);
                command.Parameters.AddWithValue("Instrumentation_Design_Specifications", RadioButtonList94.SelectedItem.Text);
                command.Parameters.AddWithValue("Instrument_Calibration_Completed", RadioButtonList95.SelectedItem.Text);
                command.Parameters.AddWithValue("Loops_Check_Finished", RadioButtonList96.SelectedItem.Text);
                command.Parameters.AddWithValue("PLC_Verified_Tested", RadioButtonList97.SelectedItem.Text);
                command.Parameters.AddWithValue("Valve_Stem_Displacement_Checked", RadioButtonList98.SelectedItem.Text);
                command.Parameters.AddWithValue("Emergency_Alarms_Tested", RadioButtonList99.SelectedItem.Text);
                command.Parameters.AddWithValue("Flame_Detectors_Installed", RadioButtonList100.SelectedItem.Text);
                command.Parameters.AddWithValue("Gas_Detectors_Installed", RadioButtonList101.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Instrumentation_Properly_Installed", RadioButtonList102.SelectedItem.Text);
                command.Parameters.AddWithValue("Control_Valve_Installed", RadioButtonList103.SelectedItem.Text);
                command.Parameters.AddWithValue("Orifice_Plate_Installed", RadioButtonList104.SelectedItem.Text);
                command.Parameters.AddWithValue("Plug_Cap_Installed", RadioButtonList105.SelectedItem.Text);

                command.Parameters.AddWithValue("Polarity_Sense_Rotation_Checked", RadioButtonList106.SelectedItem.Text);
                command.Parameters.AddWithValue("Cables_Checked", RadioButtonList107.SelectedItem.Text);
                command.Parameters.AddWithValue("Area_Classification_Verified", RadioButtonList108.SelectedItem.Text);
                command.Parameters.AddWithValue("Motors_Installed", RadioButtonList109.SelectedItem.Text);
                command.Parameters.AddWithValue("Grounding_Installed", RadioButtonList110.SelectedItem.Text);
                command.Parameters.AddWithValue("Structures_Equipments_Fully_Rounded", RadioButtonList111.SelectedItem.Text);

                command.Parameters.AddWithValue("Electrical_Starters_Installed", RadioButtonList112.SelectedItem.Text);
                command.Parameters.AddWithValue("Motors_Properly_Lubricated", RadioButtonList113.SelectedItem.Text);
                command.Parameters.AddWithValue("Electrical_Equipment_Labeled", RadioButtonList114.SelectedItem.Text);
                command.Parameters.AddWithValue("Explosion_Proof_Equipments_Modified", RadioButtonList115.SelectedItem.Text);
                command.Parameters.AddWithValue("Communication_Systems_Adequate", RadioButtonList116.SelectedItem.Text);
                command.Parameters.AddWithValue("Transformers_Properly_Installed", RadioButtonList117.SelectedItem.Text);
                command.Parameters.AddWithValue("Panels_Properly_Installed", RadioButtonList118.SelectedItem.Text);
                command.Parameters.AddWithValue("Emergency_Generators_Verified", RadioButtonList119.SelectedItem.Text);
                command.Parameters.AddWithValue("Electrical_Equipment_AsPer_Design_Specifications", RadioButtonList120.SelectedItem.Text);
                command.Parameters.AddWithValue("Electrical_Lighting_Completed", RadioButtonList121.SelectedItem.Text);
                command.Parameters.AddWithValue("Electrical_Installation_Built", RadioButtonList122.SelectedItem.Text);
                command.Parameters.AddWithValue("Battery_Charged", RadioButtonList123.SelectedItem.Text);

                command.Parameters.AddWithValue("Safety_Signs_Codes", RadioButtonList124.SelectedItem.Text);
                command.Parameters.AddWithValue("Personnel_Protection_Equipment", RadioButtonList125.SelectedItem.Text);
                command.Parameters.AddWithValue("Safety_Showers_Eyewash_Complete", RadioButtonList126.SelectedItem.Text);
                command.Parameters.AddWithValue("Evacuation_Signs", RadioButtonList127.SelectedItem.Text);
                command.Parameters.AddWithValue("Fireproofing_Complete", RadioButtonList128.SelectedItem.Text);
                command.Parameters.AddWithValue("Fire_Gas_System", RadioButtonList129.SelectedItem.Text);
                command.Parameters.AddWithValue("Fire_Protection_System", RadioButtonList130.SelectedItem.Text);
                command.Parameters.AddWithValue("Emergency_Alarms_System", RadioButtonList131.SelectedItem.Text);
                command.Parameters.AddWithValue("Fire_Fighting_Portable_Equipment", RadioButtonList132.SelectedItem.Text);
                command.Parameters.AddWithValue("Clean_Agent_System", RadioButtonList133.SelectedItem.Text);
                command.Parameters.AddWithValue("CO2_System", RadioButtonList134.SelectedItem.Text);
                command.Parameters.AddWithValue("Self_Contained_Breathing_Apparatus", RadioButtonList135.SelectedItem.Text);
                command.Parameters.AddWithValue("YellowLine_Caustic_Acid_Areas", RadioButtonList136.SelectedItem.Text);
                command.Parameters.AddWithValue("Vents_Drains_Routed", RadioButtonList137.SelectedItem.Text);
                command.Parameters.AddWithValue("Hydrants_Monitors_Available", RadioButtonList138.SelectedItem.Text);

                command.Parameters.AddWithValue("Permits_Issued", RadioButtonList139.SelectedItem.Text);
                command.Parameters.AddWithValue("Emissions_Monitoring", RadioButtonList140.SelectedItem.Text);
                command.Parameters.AddWithValue("Audits_Completed", RadioButtonList141.SelectedItem.Text);
                command.Parameters.AddWithValue("Certifications_InPlace", RadioButtonList142.SelectedItem.Text);
                command.Parameters.AddWithValue("Fugitive_Emissions_Valve_Tagged", RadioButtonList143.SelectedItem.Text);
                command.Parameters.AddWithValue("Spillage_Leakage_Cleaning", RadioButtonList144.SelectedItem.Text);
                command.Parameters.AddWithValue("Environmental_Protection_Personnel", RadioButtonList145.SelectedItem.Text);
                command.Parameters.AddWithValue("Drainage_Filter_Cleaning", RadioButtonList146.SelectedItem.Text);
                command.Parameters.AddWithValue("Vessel_Drainage_Adequate", RadioButtonList147.SelectedItem.Text);
                command.Parameters.AddWithValue("Zero_Leaks_Valves_Flanges_Pump", RadioButtonList148.SelectedItem.Text);
                command.Parameters.AddWithValue("Drainage_System_Hydrotested", RadioButtonList149.SelectedItem.Text);
                command.Parameters.AddWithValue("Permits_Provided_MARNR", RadioButtonList150.SelectedItem.Text);
                command.Parameters.AddWithValue("Rain_Water_Drainage", RadioButtonList151.SelectedItem.Text);
                command.Parameters.AddWithValue("Waste_Production_Design", RadioButtonList152.SelectedItem.Text);
                command.Parameters.AddWithValue("Floating_Roof_Vapor_Recovery", RadioButtonList153.SelectedItem.Text);
                command.Parameters.AddWithValue("Noise_Smells_Contaminant_Controlled", RadioButtonList154.SelectedItem.Text);
                command.Parameters.AddWithValue("Others", RadioButtonList155.SelectedItem.Text);

                command.Parameters.AddWithValue("RVset_Pressure_Design_Specification", RadioButtonList156.SelectedItem.Text);
                command.Parameters.AddWithValue("Service_Schedule_Setup", RadioButtonList157.SelectedItem.Text);
                command.Parameters.AddWithValue("Block_Valve_Car_Sealed_Open", RadioButtonList158.SelectedItem.Text);
                command.Parameters.AddWithValue("Vacuum_System_Checkout_Complete", RadioButtonList159.SelectedItem.Text);
                command.Parameters.AddWithValue("Tank_Seals_Installed", RadioButtonList160.SelectedItem.Text);
                command.Parameters.AddWithValue("Rupture_Disks", RadioButtonList161.SelectedItem.Text);
                command.Parameters.AddWithValue("Gauge_Installed", RadioButtonList162.SelectedItem.Text);
                command.Parameters.AddWithValue("Leak_Off_Valve_Installed", RadioButtonList163.SelectedItem.Text);
                command.Parameters.AddWithValue("Stamped_Press", RadioButtonList164.SelectedItem.Text);
                command.Parameters.AddWithValue("Relief_Valve_Database_Updated", RadioButtonList165.SelectedItem.Text);

                command.Parameters.AddWithValue("All_Blinds_Removed", RadioButtonList166.SelectedItem.Text);
                command.Parameters.AddWithValue("Gaskets_Provided", RadioButtonList167.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Portable_Equipments_Lubricated", RadioButtonList168.SelectedItem.Text);
                command.Parameters.AddWithValue("Rotating_Equipment_Safety_Guards_InPlace", RadioButtonList169.SelectedItem.Text);
                command.Parameters.AddWithValue("Breakers_Revised_Identified", RadioButtonList170.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Equipment_Identified", RadioButtonList171.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Safety_Showers_Eye_Washers_Operative", RadioButtonList172.SelectedItem.Text);
                command.Parameters.AddWithValue("Fire_Extinguisher_Equipment_Operative", RadioButtonList173.SelectedItem.Text);
                command.Parameters.AddWithValue("Temporal_Scaffold_Platforms", RadioButtonList174.SelectedItem.Text);
                command.Parameters.AddWithValue("AllProcess_Superficial_Drainage_Revised", RadioButtonList175.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Utility_Services_Fully_Operative", RadioButtonList176.SelectedItem.Text);
                command.Parameters.AddWithValue("All_PPE_Required", RadioButtonList177.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Cleaning_Done", RadioButtonList178.SelectedItem.Text);
                command.Parameters.AddWithValue("Safety_Shields_Signs_Safety_Chains_InPlace", RadioButtonList179.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Tools_Equipments_Used", RadioButtonList180.SelectedItem.Text);
                command.Parameters.AddWithValue("Installation_Safety_Check_Revision", RadioButtonList181.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Flammable_Materials", RadioButtonList182.SelectedItem.Text);

                command.Parameters.AddWithValue("Operation_Procedures_UpToDate", RadioButtonList183.SelectedItem.Text);
                command.Parameters.AddWithValue("Start_Stop_Procedures", RadioButtonList184.SelectedItem.Text);
                command.Parameters.AddWithValue("Operation_Procedures_Indicates_Design", RadioButtonList185.SelectedItem.Text);
                command.Parameters.AddWithValue("All_PIDs_Available", RadioButtonList186.SelectedItem.Text);
                command.Parameters.AddWithValue("All_Work_Permits_Available", RadioButtonList187.SelectedItem.Text);
                command.Parameters.AddWithValue("Maintenance_Procedures_Available", RadioButtonList188.SelectedItem.Text);

                command.Parameters.AddWithValue("Risk_Analysis_Performed", RadioButtonList189.SelectedItem.Text);
                command.Parameters.AddWithValue("Risk_Analysis_Recommendations_Followed", RadioButtonList190.SelectedItem.Text);
                command.Parameters.AddWithValue("Inspections_Safety_Audits_Performed", RadioButtonList191.SelectedItem.Text);
                command.Parameters.AddWithValue("Inspections_Recommendations_Performed", RadioButtonList192.SelectedItem.Text);
                command.Parameters.AddWithValue("Any_Prior_Accident_Occurred", RadioButtonList193.SelectedItem.Text);
                command.Parameters.AddWithValue("Recommendations", RadioButtonList194.SelectedItem.Text);

                command.Parameters.AddWithValue("All_Operators_Trained", RadioButtonList195.SelectedItem.Text);
                command.Parameters.AddWithValue("Emergency_Plan_Known", RadioButtonList196.SelectedItem.Text);
                command.Parameters.AddWithValue("Fire_Practices_Performed", RadioButtonList197.SelectedItem.Text);
                command.Parameters.AddWithValue("Emergency_Stop_Well_Known", RadioButtonList198.SelectedItem.Text);
                command.Parameters.AddWithValue("Personnel_Training_Emergency_Procedures", RadioButtonList199.SelectedItem.Text);
                command.Parameters.AddWithValue("Personnel_Training_Startup_Procedures", RadioButtonList200.SelectedItem.Text);

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
    }
}