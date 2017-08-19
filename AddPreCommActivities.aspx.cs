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
    public partial class Trial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //string constr = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                //using (SqlConnection con = new SqlConnection(constr))
                //{
                //    using (SqlCommand cmd = new SqlCommand("SELECT * FROM PU_Name"))
                //    {
                //        cmd.CommandType = CommandType.Text;
                //        cmd.Connection = con;
                //        con.Open();
                //        PUNameDdl.DataSource = cmd.ExecuteReader();
                //        PUNameDdl.DataTextField = "PU_Name";
                //        PUNameDdl.DataValueField = "PU_Name";
                //        PUNameDdl.DataBind();
                //        con.Close();
                //    }
                //}
                //PUNameDdl.Items.Insert(0, new ListItem("--Select Process Unit--", "0"));

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

                using (SqlConnection conn = new SqlConnection())
                {
                    conn.ConnectionString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                    using (SqlCommand cmd1 = new SqlCommand())
                    {
                        cmd1.CommandText = "SELECT * FROM Form_PreComm";
                        cmd1.Connection = conn;
                        conn.Open();
                        using (SqlDataReader sdr = cmd1.ExecuteReader())
                        {
                            while (sdr.Read())
                            {
                                ListItem item = new ListItem();
                                item.Text = sdr["Form"].ToString();
                                item.Value = sdr["Form_id"].ToString();
                                item.Selected = Convert.ToBoolean(sdr["Form_id"]);
                                ListBox1.Items.Add(item);
                            }
                        }
                        conn.Close();
                    }
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

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UpdateProcessUnits.aspx");
        }
        protected void AddButton_Click(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection connection = new SqlConnection(connectionString);

            try
            {
                connection.Open();
                SqlCommand command = new SqlCommand();
                command.Connection = connection;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "InsertFormPreComm";
                //command.Parameters.AddWithValue("@ProjectName", PlantTxtBox.Text);
                command.Parameters.AddWithValue("@ProjectName", ProjectNameDdl.SelectedItem.Text);
                command.Parameters.AddWithValue("@ProcessUnitName", PUNameDdl.SelectedItem.Text);
                //command.Parameters.AddWithValue("@SystemName", SystemNameTxtbox.Text);
                command.Parameters.AddWithValue("@SystemName", SystemDdl.SelectedItem.Text);

                //string System_ids = string.Empty;
                string System_Name = string.Empty;
                foreach (ListItem item in ListBox1.Items)
                {
                    if (item.Selected)
                    {
                        System_Name += item.Text + ",";
                        //System_ids += item.Value + ",";
                    }
                    ////System_ids += item.Value + ",";
                    ////System_Name += item.Text + ",";
                    ////command.Parameters.AddWithValue("@System_id", System_ids);
                    ////command.Parameters.AddWithValue("@System_Name", System_Name);
                    ////command.ExecuteNonQuery();
                }
                
                    //command.Parameters.AddWithValue("@System_id", ListBox1.SelectedItem.Value);
                    command.Parameters.AddWithValue("@Forms_PreComm", System_Name);
                    command.ExecuteNonQuery();

                connection.Close();
                Label1.Text = "Successfully Inserted !!";
            }

            catch (Exception ex)
            {
                Label1.Text = "Error inserting data" + ex.ToString();
            }
        }
    }
}