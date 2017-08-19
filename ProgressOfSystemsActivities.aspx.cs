using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Drawing;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class ProgressOfSystemsActivities : System.Web.UI.Page
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
        
        protected void SystemActivity_Btn_Click(object sender, EventArgs e)
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
                    command.CommandText = "GetSystemActivities";
                    command.Parameters.AddWithValue("@Project_Name", DropDownList1.SelectedItem.Text);
                    command.Parameters.AddWithValue("@PU_Name", DropDownList2.SelectedItem.Text);
                    //command.Parameters.AddWithValue("@System_Name", SystemTxtBox.Text);
                    command.Parameters.AddWithValue("@System_Name", DropDownList3.SelectedItem.Text);
                    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(command);
                    DataSet dataSet = new DataSet();
                    sqlDataAdapter.Fill(dataSet, "System_Form_PreComm");
                    if (dataSet != null)
                    {
                        if (dataSet.Tables[0].Rows.Count != 0)
                        {
                            gvSystemActivities.DataSource = dataSet;
                            gvSystemActivities.DataBind();
                        }
                        else
                        {
                            //Label1.Text = "There is no area added to this refinery. Please add a new area.";
                            gvSystemActivities.DataSource = null;
                            gvSystemActivities.DataBind();
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

        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label lblSubmit = e.Row.FindControl("lbl_Submit") as Label;

                if (lblSubmit != null)
                {
                    if (lblSubmit.Text == "True")
                    {
                        e.Row.BackColor = System.Drawing.Color.Green;
                        e.Row.ForeColor = System.Drawing.Color.Silver;
                    }
                    else if (lblSubmit.Text == "False")
                    {
                        e.Row.BackColor = System.Drawing.Color.Red;
                        e.Row.ForeColor = System.Drawing.Color.Silver;
                    }

                }
            }
        }
    }
}
