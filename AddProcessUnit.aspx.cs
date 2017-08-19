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
    public partial class AddProcessUnit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string constr = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM PU_Name"))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        PUNameDdl.DataSource = cmd.ExecuteReader();
                        PUNameDdl.DataTextField = "PU_Name";
                        PUNameDdl.DataValueField = "PU_Name";
                        PUNameDdl.DataBind();
                        con.Close();
                    }
                }
                PUNameDdl.Items.Insert(0, new ListItem("--Select Process Unit--", "0"));

                //using (SqlConnection con = new SqlConnection(constr))
                //{
                //    using (SqlCommand cmd = new SqlCommand("SELECT Name FROM Refinery"))
                //    {
                //        cmd.CommandType = CommandType.Text;
                //        cmd.Connection = con;
                //        con.Open();
                //        ProjectNameDdl.DataSource = cmd.ExecuteReader();
                //        ProjectNameDdl.DataTextField = "Name";
                //        ProjectNameDdl.DataValueField = "Name";
                //        ProjectNameDdl.DataBind();
                //        con.Close();
                //    }
                //}
                //ProjectNameDdl.Items.Insert(0, new ListItem("--Select Project Name--", "0"));

                ProjectNameDdl.AppendDataBoundItems = true;
                String strConnString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                String strQuery = "SELECT * FROM Refinery";
                SqlConnection con1 = new SqlConnection(strConnString);
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = strQuery;
                cmd1.Connection = con1;
                try
                {
                    con1.Open();
                    ProjectNameDdl.DataSource = cmd1.ExecuteReader();
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
                    con1.Close();
                    con1.Dispose();
                }
            }
        }

        protected void ProjectNameDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            ProjectAreaNameDdl.Items.Clear();
            ProjectAreaNameDdl.Items.Add(new ListItem("--Select PU--", ""));
            //SystemDdl.Items.Clear();
            //SystemDdl.Items.Add(new ListItem("--Select System--", ""));

            ProjectAreaNameDdl.AppendDataBoundItems = true;
            String strConnString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            String strQuery = "SELECT * FROM (Refinery_Area RA INNER JOIN Refinery R ON R.Refinery_id=RA.Refinery_id) WHERE R.Refinery_id = @Refinery_id";
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Refinery_id", ProjectNameDdl.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                ProjectAreaNameDdl.DataSource = cmd.ExecuteReader();
                ProjectAreaNameDdl.DataTextField = "Refinery_Area_Name";
                ProjectAreaNameDdl.DataValueField = "Refinery_Area_id";
                ProjectAreaNameDdl.DataBind();
                if (ProjectAreaNameDdl.Items.Count > 1)
                {
                    ProjectAreaNameDdl.Enabled = true;
                }
                else
                {
                    ProjectAreaNameDdl.Enabled = false;
                    //SystemDdl.Enabled = false;
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

        protected void CodeTxtbx_TextChanged(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT * FROM Systems WHERE Code_id LIKE (SELECT Code_id FROM Code WHERE Code_Name = '" + CodeTxtbx.Text + "')";
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            ListItem item = new ListItem();
                            item.Text = sdr["System_Name"].ToString();
                            item.Value = sdr["System_id"].ToString();
                            item.Selected = Convert.ToBoolean(sdr["System_id"]);
                            ListBox1.Items.Add(item);
                        }
                    }
                    conn.Close();
                }
            }
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
                command.CommandText = "InsertProcessUnit";
                command.Parameters.AddWithValue("@ProcessUnitNumber", PUNumberTxtbox.Text);
                command.Parameters.AddWithValue("@ProcessUnitName", PUNameDdl.SelectedItem.Value);
                command.Parameters.AddWithValue("@ProcessUnitInspected", PUInspectedDdl.SelectedItem.Value);
                //command.Parameters.Add("@RefineryAreaName", SqlDbType.Text).Value = RefAreaNameTxtbox.Text;
                command.Parameters.Add("@RefineryAreaName", SqlDbType.Text).Value = ProjectAreaNameDdl.SelectedItem.Text;
                //command.Parameters.Add("@RefineryName", SqlDbType.Text).Value = ProjectNameTxtBox.Text;
                command.Parameters.AddWithValue("@RefineryName", ProjectNameDdl.SelectedItem.Value);

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

                command.Parameters.AddWithValue("@System_id", ListBox1.SelectedItem.Value);
                command.Parameters.AddWithValue("@System_Name", System_Name);
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

