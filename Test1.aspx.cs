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
    public partial class Test1 : System.Web.UI.Page
    {
        //SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString);
        //int Refid =0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.PopulateHobbies();
            }
        }

        private void PopulateHobbies()
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select * from Systems";
                    cmd.Connection = conn;
                    conn.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        while (sdr.Read())
                        {
                            ListItem item = new ListItem();
                            item.Text = sdr["System_Name"].ToString();
                            item.Value = sdr["System_id"].ToString();
                            item.Selected = Convert.ToBoolean(sdr["System_Inspected"]);
                            lstHobbies.Items.Add(item);
                        }
                    }
                    conn.Close();
                }
            }
        }

        protected void UpdateHobbies(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection())
            {
                conn.ConnectionString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "update Systems set System_Inspected = @IsSelected" +
                                        " where System_id=@HobbyId";
                    cmd.Connection = conn;
                    conn.Open();
                    foreach (ListItem item in lstHobbies.Items)
                    {
                        cmd.Parameters.Clear();
                        cmd.Parameters.AddWithValue("@IsSelected", item.Selected);
                        cmd.Parameters.AddWithValue("@HobbyId", item.Value);
                        cmd.ExecuteNonQuery();
                    }
                    conn.Close();
                }
            }
        }
        //        Refid = Convert.ToInt32(Request.QueryString["Refinery_id"].ToString());
        //        if (!IsPostBack)
        //        {
        //            PopulateTreeview();
        //    }
        //}

        //private void PopulateTreeview()
        //{
        //    try
        //    {
        //        DataSet ds = new DataSet();
        //        DataTable dtparent = new DataTable();
        //        DataTable dtchild = new DataTable();
        //        DataTable dtleaf = new DataTable();

        //        dtparent = FillParentTable();
        //        dtparent.TableName = "A";
        //        dtchild = FillChildTable();
        //        dtchild.TableName = "B";
        //        dtleaf = FillLeafTable();
        //        dtleaf.TableName = "C";

        //        ds.Tables.Add(dtparent);
        //        ds.Tables.Add(dtchild);
        //        ds.Tables.Add(dtleaf);

        //        ds.Relations.Add("children", dtparent.Columns["Refinery_id"],
        //                                      dtchild.Columns["Refinery_id"]);

        //        ds.Relations.Add("leaf", dtchild.Columns["Refinery_Area_id"],
        //                                      dtleaf.Columns["Refinery_Area_id"]);

        //        if (ds.Tables[0].Rows.Count > 0)
        //        {
        //            tvTables.Nodes.Clear();
        //            foreach (DataRow masterRow in ds.Tables[0].Rows)
        //            {
        //                TreeNode masterNode = new TreeNode((string)masterRow["Name"],
        //                                      Convert.ToString(masterRow["Refinery_id"]));
        //                tvTables.Nodes.Add(masterNode);
        //                tvTables.CollapseAll();
        //                foreach (DataRow childRow in masterRow.GetChildRows("Children"))
        //                {
        //                    TreeNode childNode = new TreeNode((string)childRow["Refinery_Area_Name"],
        //                                          Convert.ToString(childRow["Refinery_id"]));
        //                    masterNode.ChildNodes.Add(childNode);
        //                    childNode.Value = Convert.ToString(childRow["Refinery_Area_id"]);
        //                    tvTables.CollapseAll();

        //                    foreach (DataRow leafRow in childRow.GetChildRows("Leaf"))
        //                    {
        //                        TreeNode leafNode = new TreeNode((string)leafRow["Process_Unit_Name"],
        //                                          Convert.ToString(leafRow["Refinery_Area_id"]));
        //                        childNode.ChildNodes.Add(leafNode);
        //                        leafNode.Value = Convert.ToString(leafRow["Process_Unit_id"]);
        //                    }
        //                }

        //            }
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        throw new Exception("Unable to populate treeview" + ex.Message);
        //    }
        //}
        //private DataTable FillParentTable()
        //{
        //    DataTable dt = new DataTable();
        //    conn.Open();
        //    string cmdstr = "Select * from Refinery Where Refinery_id=" + Refid;
        //    SqlCommand cmd = new SqlCommand(cmdstr, conn);
        //    cmd.Parameters.Add("@Refinery_id", SqlDbType.Int).Value = 1;
        //    SqlDataAdapter adp = new SqlDataAdapter(cmd);
        //    adp.Fill(dt);
        //    conn.Close();
        //    return dt;
        //}
        //private DataTable FillChildTable()
        //{
        //    DataTable dt = new DataTable();
        //    conn.Open();
        //    string cmdstr = "Select * from Refinery_Area";
        //    SqlCommand cmd = new SqlCommand(cmdstr, conn);
        //    SqlDataAdapter adp = new SqlDataAdapter(cmd);
        //    adp.Fill(dt);
        //    conn.Close();
        //    return dt;
        //}

        //private DataTable FillLeafTable()
        //{
        //    DataTable dt = new DataTable();
        //    conn.Open();
        //    string cmdstr = "Select * from Process_Units";
        //    SqlCommand cmd = new SqlCommand(cmdstr, conn);
        //    SqlDataAdapter adp = new SqlDataAdapter(cmd);
        //    adp.Fill(dt);
        //    conn.Close();
        //    return dt;
        //}

    }
}
