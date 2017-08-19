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
    public partial class OP_0050 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PreComm.aspx");
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
                command.CommandText = "Insert_OP0050";
                //Top part of form
                command.Parameters.AddWithValue("Form", Label49.Text);
                //command.Parameters.AddWithValue("Project_Number", ProjectNoTxtBox.Text);
                command.Parameters.AddWithValue("Project_Name", PlantTxtBox.Text);
                command.Parameters.AddWithValue("Process_Unit_Name", PUTxtBox.Text);
                command.Parameters.AddWithValue("System_Name", SystemTxtBox.Text);
                command.Parameters.AddWithValue("Sub_System", SubSystemTxtBox.Text);
                //command.Parameters.AddWithValue("Equipment", EquipmentTxtBox.Text);
                //command.Parameters.AddWithValue("Tag_Number", TagNumberTxtBox.Text);
                //command.Parameters.AddWithValue("Discipline", DisciplineTxtBox.Text);
                command.Parameters.AddWithValue("Form_Date", DateTxtBox.Text);
                //command.Parameters.AddWithValue("PID", PIDTxtBox.Text);

                command.Parameters.AddWithValue("Item1", TextBox1.Text);
                command.Parameters.AddWithValue("No_PID1", TextBox2.Text);
                command.Parameters.AddWithValue("Item_Description1", TextBox3.Text);
                command.Parameters.AddWithValue("Category1", TextBox4.Text);
                command.Parameters.AddWithValue("Action_On1", TextBox5.Text);
                command.Parameters.AddWithValue("Completed_By_EPC1", TextBox6.Text);
                command.Parameters.AddWithValue("Discipline_Lead1", TextBox7.Text);
                command.Parameters.AddWithValue("Item_Date1", TextBox8.Text);

                command.Parameters.AddWithValue("Item2", TextBox9.Text);
                command.Parameters.AddWithValue("No_PID2", TextBox10.Text);
                command.Parameters.AddWithValue("Item_Description2", TextBox11.Text);
                command.Parameters.AddWithValue("Category2", TextBox12.Text);
                command.Parameters.AddWithValue("Action_On2", TextBox13.Text);
                command.Parameters.AddWithValue("Completed_By_EPC2", TextBox14.Text);
                command.Parameters.AddWithValue("Discipline_Lead2", TextBox15.Text);
                command.Parameters.AddWithValue("Item_Date2", TextBox16.Text);

                command.Parameters.AddWithValue("Item3", TextBox17.Text);
                command.Parameters.AddWithValue("No_PID3", TextBox18.Text);
                command.Parameters.AddWithValue("Item_Description3", TextBox19.Text);
                command.Parameters.AddWithValue("Category3", TextBox20.Text);
                command.Parameters.AddWithValue("Action_On3", TextBox21.Text);
                command.Parameters.AddWithValue("Completed_By_EPC3", TextBox22.Text);
                command.Parameters.AddWithValue("Discipline_Lead3", TextBox23.Text);
                command.Parameters.AddWithValue("Item_Date3", TextBox24.Text);

                command.Parameters.AddWithValue("Item4", TextBox25.Text);
                command.Parameters.AddWithValue("No_PID4", TextBox26.Text);
                command.Parameters.AddWithValue("Item_Description4", TextBox27.Text);
                command.Parameters.AddWithValue("Category4", TextBox28.Text);
                command.Parameters.AddWithValue("Action_On4", TextBox29.Text);
                command.Parameters.AddWithValue("Completed_By_EPC4", TextBox30.Text);
                command.Parameters.AddWithValue("Discipline_Lead4", TextBox31.Text);
                command.Parameters.AddWithValue("Item_Date4", TextBox32.Text);

                command.Parameters.AddWithValue("Item5", TextBox33.Text);
                command.Parameters.AddWithValue("No_PID5", TextBox34.Text);
                command.Parameters.AddWithValue("Item_Description5", TextBox35.Text);
                command.Parameters.AddWithValue("Category5", TextBox36.Text);
                command.Parameters.AddWithValue("Action_On5", TextBox37.Text);
                command.Parameters.AddWithValue("Completed_By_EPC5", TextBox38.Text);
                command.Parameters.AddWithValue("Discipline_Lead5", TextBox39.Text);
                command.Parameters.AddWithValue("Item_Date5", TextBox40.Text);

                command.Parameters.AddWithValue("Item6", TextBox41.Text);
                command.Parameters.AddWithValue("No_PID6", TextBox42.Text);
                command.Parameters.AddWithValue("Item_Description6", TextBox43.Text);
                command.Parameters.AddWithValue("Category6", TextBox44.Text);
                command.Parameters.AddWithValue("Action_On6", TextBox45.Text);
                command.Parameters.AddWithValue("Completed_By_EPC6", TextBox46.Text);
                command.Parameters.AddWithValue("Discipline_Lead6", TextBox47.Text);
                command.Parameters.AddWithValue("Item_Date6", TextBox48.Text);

                command.Parameters.AddWithValue("Item7", TextBox49.Text);
                command.Parameters.AddWithValue("No_PID7", TextBox50.Text);
                command.Parameters.AddWithValue("Item_Description7", TextBox51.Text);
                command.Parameters.AddWithValue("Category7", TextBox52.Text);
                command.Parameters.AddWithValue("Action_On7", TextBox53.Text);
                command.Parameters.AddWithValue("Completed_By_EPC7", TextBox54.Text);
                command.Parameters.AddWithValue("Discipline_Lead7", TextBox55.Text);
                command.Parameters.AddWithValue("Item_Date7", TextBox56.Text);

                command.Parameters.AddWithValue("Item8", TextBox57.Text);
                command.Parameters.AddWithValue("No_PID8", TextBox58.Text);
                command.Parameters.AddWithValue("Item_Description8", TextBox59.Text);
                command.Parameters.AddWithValue("Category8", TextBox60.Text);
                command.Parameters.AddWithValue("Action_On8", TextBox61.Text);
                command.Parameters.AddWithValue("Completed_By_EPC8", TextBox62.Text);
                command.Parameters.AddWithValue("Discipline_Lead8", TextBox63.Text);
                command.Parameters.AddWithValue("Item_Date8", TextBox64.Text);

                command.Parameters.AddWithValue("Item9", TextBox65.Text);
                command.Parameters.AddWithValue("No_PID9", TextBox66.Text);
                command.Parameters.AddWithValue("Item_Description9", TextBox67.Text);
                command.Parameters.AddWithValue("Category9", TextBox68.Text);
                command.Parameters.AddWithValue("Action_On9", TextBox69.Text);
                command.Parameters.AddWithValue("Completed_By_EPC9", TextBox70.Text);
                command.Parameters.AddWithValue("Discipline_Lead9", TextBox71.Text);
                command.Parameters.AddWithValue("Item_Date9", TextBox72.Text);

                //Bottom part of form

                command.Parameters.AddWithValue("Lead_Company", LeadCompanyTxtBox.Text);
                command.Parameters.AddWithValue("TM1_Company", TM1CompanyTxtBox.Text);
                command.Parameters.AddWithValue("TM2_Company", TM2CompanyTxtBox.Text);
                command.Parameters.AddWithValue("TM3_Company", TM3CompanyTxtBox.Text);
                command.Parameters.AddWithValue("TM4_Company", TM4CompanyTxtBox.Text);
                command.Parameters.AddWithValue("Lead_Name", LeadNameTxtBox.Text);
                command.Parameters.AddWithValue("TM1_Name", TM1NameTxtBox.Text);
                command.Parameters.AddWithValue("TM2_Name", TM2NameTxtBox.Text);
                command.Parameters.AddWithValue("TM3_Name", TM3NameTxtBox.Text);
                command.Parameters.AddWithValue("TM4_Name", TM4NameTxtBox.Text);
                command.Parameters.AddWithValue("Lead_Sign", LeadSignTxtBox.Text);
                command.Parameters.AddWithValue("TM1_Sign", TM1SignTxtBox.Text);
                command.Parameters.AddWithValue("TM2_Sign", TM2SignTxtBox.Text);
                command.Parameters.AddWithValue("TM3_Sign", TM3SignTxtBox.Text);
                command.Parameters.AddWithValue("TM4_Sign", TM4SignTxtBox.Text);
                command.Parameters.AddWithValue("Lead_Date", LeadDateTxtBox.Text);
                command.Parameters.AddWithValue("TM1_Date", TM1DateTxtBox.Text);
                command.Parameters.AddWithValue("TM2_Date", TM2DateTxtBox.Text);
                command.Parameters.AddWithValue("TM3_Date", TM3DateTxtBox.Text);
                command.Parameters.AddWithValue("TM4_Date", TM4DateTxtBox.Text);
                command.Parameters.AddWithValue("Submit", RadioButtonList1.SelectedItem.Text);

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