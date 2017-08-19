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
    public partial class PunchList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DropDownList1.AppendDataBoundItems = true;
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
                    DropDownList1.DataSource = cmd.ExecuteReader();
                    DropDownList1.DataTextField = "Name";
                    DropDownList1.DataValueField = "Refinery_id";
                    DropDownList1.DataBind();
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

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList2.Items.Clear();
            DropDownList2.Items.Add(new ListItem("--Select PU--", ""));
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add(new ListItem("--Select System--", ""));

            DropDownList2.AppendDataBoundItems = true;
            String strConnString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            String strQuery = "SELECT * FROM ((Process_Units P INNER JOIN Refinery_Area RA ON RA.Refinery_Area_id=P.Refinery_Area_id)INNER JOIN Refinery R ON R.Refinery_id=RA.Refinery_id) WHERE R.Refinery_id = @Refinery_id";
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Refinery_id", DropDownList1.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList2.DataTextField = "Process_Unit_Name";
                DropDownList2.DataValueField = "Process_Unit_id";
                DropDownList2.DataBind();
                if (DropDownList2.Items.Count > 1)
                {
                    DropDownList2.Enabled = true;
                }
                else
                {
                    DropDownList2.Enabled = false;
                    DropDownList3.Enabled = false;
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

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.Items.Clear();
            DropDownList3.Items.Add(new ListItem("--Select System--", ""));
            DropDownList3.AppendDataBoundItems = true;
            String strConnString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            String strQuery = "SELECT * FROM (((PU_System PU INNER JOIN Process_Units P ON P.Process_Unit_id=PU.Process_Unit_id) INNER JOIN Refinery_Area RA ON RA.Refinery_Area_id = P.Refinery_Area_id) INNER JOIN Refinery R ON R.Refinery_id = RA.Refinery_id) WHERE P.Process_Unit_id = @Process_Unit_id";
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Process_Unit_id", DropDownList2.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                DropDownList3.DataSource = cmd.ExecuteReader();
                DropDownList3.DataTextField = "System_Name";
                DropDownList3.DataValueField = "PU_Systems_id";
                DropDownList3.DataBind();
                if (DropDownList3.Items.Count > 1)
                {
                    DropDownList3.Enabled = true;
                }
                else
                {
                    DropDownList3.Enabled = false;
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
    

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            try
            {
                if (!string.IsNullOrEmpty(DropDownList1.Text))
                {
                    DataTable dt = new DataTable();
                    SqlCommand command = new SqlCommand();
                    command.Connection = sqlConnection;
                    command.CommandType = CommandType.StoredProcedure;
                    command.CommandText = "GetPunchListDetails";
                    command.Parameters.AddWithValue("@Project_Name", DropDownList1.SelectedItem.Text);
                    command.Parameters.AddWithValue("@PU_Name", DropDownList2.SelectedItem.Text);
                    command.Parameters.AddWithValue("@System_Name", DropDownList3.SelectedItem.Text);
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
                    DataSet dataSet = new DataSet();
                    sqlDataAdapter.Fill(dataSet, "System_Form_PreComm");
                    if (dataSet != null)
                    {
                        if (dataSet.Tables[0].Rows.Count != 0)
                        {
                            gvPunchList.DataSource = dataSet;
                            gvPunchList.DataBind();
                        }
                        else
                        {
                            //Label1.Text = "There is no area added to this refinery. Please add a new area.";
                            gvPunchList.DataSource = null;
                            gvPunchList.DataBind();
                        }
                    }
                }
                //gvRefinery_Area.DataSource = dataSet.Tables[0];
                //gvRefinery_Area.DataBind();
            }
            catch (Exception ex)
            {
                //Label1.Text
            }
            finally
            {
                sqlConnection.Close();
            }
        }

        protected void ShowData()
        {
            DataTable dt = new DataTable();
            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand();
            SqlDataAdapter sqlDataAdapter = new SqlDataAdapter();
            sqlConnection.Open();
            command.Connection = sqlConnection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "GetPunchListDetails";
            command.Parameters.AddWithValue("@Project_Name", DropDownList1.SelectedItem.Text);
            command.Parameters.AddWithValue("@PU_Name", DropDownList2.SelectedItem.Text);
            command.Parameters.AddWithValue("@System_Name", DropDownList3.SelectedItem.Text);
            sqlDataAdapter = new SqlDataAdapter(command);
            sqlDataAdapter.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvPunchList.DataSource = dt;
                gvPunchList.DataBind();
            }
            sqlConnection.Close();
        }

        protected void gvPunchList_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            gvPunchList.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void gvPunchList_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update 
            Label name = gvPunchList.Rows[e.RowIndex].FindControl("lbl_Project_Name") as Label;
            //Label Tag_Number = gvPunchList.Rows[e.RowIndex].FindControl("lbl_Tag_Number") as Label;
            Label id = gvPunchList.Rows[e.RowIndex].FindControl("lbl_Form_id") as Label;
            TextBox Item = gvPunchList.Rows[e.RowIndex].FindControl("txt_Item") as TextBox;
            TextBox No_PID = gvPunchList.Rows[e.RowIndex].FindControl("txt_No_PID") as TextBox;
            TextBox Item_Description = gvPunchList.Rows[e.RowIndex].FindControl("txt_Item_Description") as TextBox;
            TextBox Category = gvPunchList.Rows[e.RowIndex].FindControl("txt_Category") as TextBox;
            TextBox Action_On = gvPunchList.Rows[e.RowIndex].FindControl("txt_Action_On") as TextBox;
            TextBox Completed_By_EPC = gvPunchList.Rows[e.RowIndex].FindControl("txt_Completed_By_EPC") as TextBox;
            TextBox Discipline_Lead = gvPunchList.Rows[e.RowIndex].FindControl("txt_Discipline_Lead") as TextBox;
            TextBox Item_Date = gvPunchList.Rows[e.RowIndex].FindControl("txt_Item_Date") as TextBox;
            TextBox Item_Status = gvPunchList.Rows[e.RowIndex].FindControl("txt_Status") as TextBox;

            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            SqlCommand command = new SqlCommand();
            command.Connection = sqlConnection;
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "UpdatePunchList";
            //updating the record  
            //SqlCommand cmd = new SqlCommand("Update Refinery_Area set Refinery_Area_Name='" + RA_Name.Text + "',Refinery_Area_Number='" + RA_Number.Text + "',Refinery_Area_Inspected='" + RA_Inspected.Text + "' where Refinery_Area_id=" + Convert.ToInt32(id.Text), sqlConnection);
            command.Parameters.AddWithValue("@Item", SqlDbType.VarChar).Value = Item.Text;
            command.Parameters.AddWithValue("@No_PID", SqlDbType.VarChar).Value = No_PID.Text;
            command.Parameters.AddWithValue("@Item_Description", SqlDbType.VarChar).Value = Item_Description.Text;
            command.Parameters.AddWithValue("@Category", SqlDbType.VarChar).Value = Category.Text;
            command.Parameters.AddWithValue("@Action_On", SqlDbType.VarChar).Value = Action_On.Text;
            command.Parameters.AddWithValue("@Completed_By_EPC", SqlDbType.VarChar).Value = Completed_By_EPC.Text;
            command.Parameters.AddWithValue("@Discipline_Lead", SqlDbType.VarChar).Value = Discipline_Lead.Text;
            command.Parameters.AddWithValue("@Item_Date", SqlDbType.VarChar).Value = Item_Date.Text;
            command.Parameters.AddWithValue("@Item_Status", SqlDbType.VarChar).Value = Item_Status.Text;
            command.Parameters.AddWithValue("@FormOP0050id", SqlDbType.Int).Value = id.Text;

            command.ExecuteNonQuery();
            sqlConnection.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvPunchList.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }

        protected void gvPunchList_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvPunchList.EditIndex = -1;
            ShowData();
        }
        
    }
}
