using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.DataVisualization.Charting;

namespace WebApplication1
{
    public partial class ViewProcessUnits : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString);
        int Refid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Refid = Convert.ToInt32(Request.QueryString["Refinery_id"].ToString());

            using (SqlConnection sqlConnection12 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                SqlCommand cmd1 = new SqlCommand("Select Name from dbo.Refinery where Refinery_id=" + Refid, sqlConnection12);
                sqlConnection12.Open();
                SqlDataReader reader = cmd1.ExecuteReader();
                if (reader.Read())
                    ProjectNameLbl.Text = reader["Name"].ToString();
            }

            if (!IsPostBack)
            {
                NewChart();
                PopulateTreeview();  
            }
        }

        private void PopulateTreeview()
        {
            try
            {
                DataSet ds = new DataSet();
                DataTable dtparent = new DataTable();
                DataTable dtchild = new DataTable();
                DataTable dtleaf = new DataTable();
                DataTable dtsubleaf = new DataTable();

                dtparent = FillParentTable();
                dtparent.TableName = "A";
                dtchild = FillChildTable();
                dtchild.TableName = "B";
                dtleaf = FillLeafTable();
                dtleaf.TableName = "C";
                dtsubleaf = FillSubLeafTable();
                dtsubleaf.TableName = "D";

                ds.Tables.Add(dtparent);
                ds.Tables.Add(dtchild);
                ds.Tables.Add(dtleaf);
                ds.Tables.Add(dtsubleaf);

                ds.Relations.Add("children", dtparent.Columns["Refinery_id"],
                                              dtchild.Columns["Refinery_id"]);

                ds.Relations.Add("leaf", dtchild.Columns["Refinery_Area_id"],
                                              dtleaf.Columns["Refinery_Area_id"]);

                ds.Relations.Add("subleaf", dtleaf.Columns["Process_Unit_id"],
                                              dtsubleaf.Columns["Process_Unit_id"]);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    tvTables.Nodes.Clear();
                    foreach (DataRow masterRow in ds.Tables[0].Rows)
                    {
                        TreeNode masterNode = new TreeNode((string)masterRow["Name"],
                                              Convert.ToString(masterRow["Refinery_id"]));
                        masterNode.SelectAction = TreeNodeSelectAction.None;
                        tvTables.Nodes.Add(masterNode);
                        //tvTables.CollapseAll();

                        foreach (DataRow childRow in masterRow.GetChildRows("Children"))
                        {
                            TreeNode childNode = new TreeNode((string)childRow["Refinery_Area_Name"],
                                                  Convert.ToString(childRow["Refinery_id"]));
                            childNode.SelectAction = TreeNodeSelectAction.None;
                            masterNode.ChildNodes.Add(childNode);
                            childNode.Value = Convert.ToString(childRow["Refinery_Area_id"]);
                            //tvTables.CollapseAll();

                            foreach (DataRow leafRow in childRow.GetChildRows("Leaf"))
                            {
                                TreeNode leafNode = new TreeNode((string)leafRow["Process_Unit_Name"],
                                                  Convert.ToString(leafRow["Refinery_Area_id"]));
                                leafNode.SelectAction = TreeNodeSelectAction.None;
                                childNode.ChildNodes.Add(leafNode);
                                leafNode.Value = Convert.ToString(leafRow["Process_Unit_id"]);
                                //tvTables.CollapseAll();

                                foreach (DataRow subleafRow in leafRow.GetChildRows("SubLeaf"))
                                {
                                    TreeNode subleafNode = new TreeNode((string)subleafRow["System_Name"],
                                                      Convert.ToString(subleafRow["Process_Unit_id"]));
                                    leafNode.ChildNodes.Add(subleafNode);
                                    subleafNode.Value = Convert.ToString(subleafRow["PU_Systems_id"]);
                                }
                            }
                        }

                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception("Unable to populate treeview" + ex.Message);
            }
        }
        private DataTable FillParentTable()
        {
            DataTable dt = new DataTable();
            conn.Open();
            string cmdstr = "Select * from Refinery Where Refinery_id=" + Refid;
            SqlCommand cmd = new SqlCommand(cmdstr, conn);
            cmd.Parameters.Add("@Refinery_id", SqlDbType.Int).Value = 1;
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            conn.Close();
            return dt;
        }
        private DataTable FillChildTable()
        {
            DataTable dt = new DataTable();
            conn.Open();
            string cmdstr = "Select * from Refinery_Area Where Refinery_id=" + Refid;
            SqlCommand cmd = new SqlCommand(cmdstr, conn);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            conn.Close();
            return dt;
        }

        private DataTable FillLeafTable()
        {
            DataTable dt = new DataTable();
            conn.Open();
            string cmdstr = "Select * from Process_Units Where Refinery_Area_id IN (SELECT Refinery_Area_id FROM Refinery_Area WHERE Refinery_id= @Refinery_id)";
            SqlCommand cmd = new SqlCommand(cmdstr, conn);
            cmd.Parameters.AddWithValue("@Refinery_id", Refid);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            conn.Close();
            return dt;
        }

        private DataTable FillSubLeafTable()
        {
            DataTable dt = new DataTable();
            conn.Open();
            string cmdstr = "Select * from PU_System Where Process_Unit_id IN (Select Process_Unit_id From Process_Units P Inner Join Refinery_Area RA ON P.Refinery_Area_id=RA.Refinery_Area_id Where Refinery_id=@Refinery_id)";
            SqlCommand cmd = new SqlCommand(cmdstr, conn);
            cmd.Parameters.AddWithValue("@Refinery_id", Refid);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            conn.Close();
            return dt;
        }
        protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
        {
            if (ViewState["PrevSelectedNode"] != null)
                tvTables.FindNode(ViewState["PrevSelectedNode"].ToString()).Text = ViewState["PrevSelectedText"].ToString();

            TreeNode SelectedNode = tvTables.SelectedNode;
            Response.Redirect("~/SystemActivities.aspx?PU_System_id=" + tvTables.SelectedValue);
            ViewState["PrevSelectedNode"] = SelectedNode.ValuePath;
            ViewState["PrevSelectedText"] = SelectedNode.Text;
            this.tvTables.SelectedNode.Selected = false;
        }

        private void NewChart()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                string str = "SELECT Process_Units.Process_Unit_Activity AS Name, COUNT(Process_Units.Process_Unit_Activity) AS Total FROM((Refinery INNER JOIN Refinery_Area ON Refinery.Refinery_id = Refinery_Area.Refinery_id) INNER JOIN Process_Units ON Refinery_Area.Refinery_Area_id = Process_Units.Refinery_Area_id) WHERE Refinery.Refinery_id= @Refinery_id GROUP BY Process_Units.Process_Unit_Activity HAVING COUNT(Process_Units.Process_Unit_Activity)>0";
                SqlCommand cmd = new SqlCommand(str, con);
                cmd.Parameters.AddWithValue("@Refinery_id", Refid);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Close();
            }
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }

            PU_Chart.Series[0].Points.DataBindXY(x, y);
            PU_Chart.Series[0].ChartType = SeriesChartType.Column;
            //PU_Chart.Series["PU_Series"].Color = System.Drawing.Color.Green;
            PU_Chart.Series["PU_Series"].IsValueShownAsLabel = true;
            //PU_Chart.ChartAreas["PU_ChartArea"].AxisX.MajorGrid.Enabled = false;
            //PU_Chart.ChartAreas["PU_ChartArea"].AxisY.MajorGrid.Enabled = false;
        }

        protected void ProgressOfSystems_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ProgressOfSystems1.aspx");
        }

        protected void SystemActivities_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ProgressOfSystemsActivities.aspx");
        }
    }
}