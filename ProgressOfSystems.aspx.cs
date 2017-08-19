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
    public partial class ProgressOfProcessUnits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    //GetPreCommissionedProcessUnits();
            //    //GetCommissionedProcessUnits();
            //    //GetStartedUpProcessUnits();
            //    Project_NameDdl.AppendDataBoundItems = true;
            //    Project_Name2Ddl.AppendDataBoundItems = true;
            //    String strConnString = WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString;
            //    String strQuery = "SELECT * FROM Refinery";
            //    //String strQuery2 = "SELECT * FROM Refinery";
            //    SqlConnection con = new SqlConnection(strConnString);
            //    SqlCommand cmd = new SqlCommand();
            //    cmd.CommandType = CommandType.Text;
            //    cmd.CommandText = strQuery;
            //    cmd.Connection = con;
            //    try
            //    {
            //        con.Open();
            //        Project_NameDdl.DataSource = cmd.ExecuteReader();
            //        Project_NameDdl.DataTextField = "Name";
            //        Project_NameDdl.DataValueField = "Refinery_id";
            //        Project_NameDdl.DataBind();

            //        Project_Name2Ddl.DataSource = cmd.ExecuteReader();
            //        Project_Name2Ddl.DataTextField = "Name";
            //        Project_Name2Ddl.DataValueField = "Refinery_id";
            //        Project_Name2Ddl.DataBind();
            //    }
            //    catch (Exception ex)
            //    {
            //        throw ex;
            //    }
            //    finally
            //    {
            //        con.Close();
            //        con.Dispose();
            //    }
            //}
        
        }

        protected void PreCommSystem_Btn_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                string str = "Select System_Name AS Name, (Count(Submit)* 100 / (Select Count(Forms_PreComm) From System_Form_PreComm Where System_Name='" + SystemTxtBox.Text + "' And Project_Name='" + Project_NameTxtBox.Text + "')) AS Total From Common_Details_PreComm WHERE Submit='true' and Project_Name='" + Project_NameTxtBox.Text + "'and Process_Unit_Name='" + PUTxtBox.Text + "'and System_Name='" + SystemTxtBox.Text + "' GROUP BY System_Name";

                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Close();
            }

            List<string> x = new List<string>();
            List<int> y = new List<int>();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x.Add(dt.Rows[i][0].ToString());
                y.Add(Convert.ToInt32(dt.Rows[i][1]));
            }

            PreCommSystem_Chart.Series[0].Points.DataBindXY(x, y);
            PreCommSystem_Chart.Series[0].ChartType = SeriesChartType.Column;
            PreCommSystem_Chart.Series["PreCommSystem_Series"].Color = System.Drawing.Color.Red;
            PreCommSystem_Chart.Series["PreCommSystem_Series"].IsValueShownAsLabel = true;
            PreCommSystem_Chart.ChartAreas["PreCommSystem_ChartArea"].AxisX.MajorGrid.Enabled = false;
            PreCommSystem_Chart.ChartAreas["PreCommSystem_ChartArea"].AxisY.MajorGrid.Enabled = false;
        }

        protected void ViewAllPreCommSystem_Btn_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                //string str = "Select System_Name AS Name, (Count(Submit)* 100 / 3) AS Total From Common_Details_PreComm WHERE Submit='true' and Plant='" + PlantTxtBox.Text + "'and Process_Unit_Name='" + PUTxtBox.Text + "'and System_Name='" + SystemTxtBox.Text + "' GROUP BY System_Name";
                string str = "Select Process_Units.Process_Unit_Name, Count(PU_System.System_Pre_Commissioned) AS Total, Count(PU_System.System_Name) AS T FROM(((Process_Units INNER JOIN PU_System ON Process_Units.Process_Unit_id = PU_System.Process_Unit_id) INNER JOIN Refinery_Area ON Refinery_Area.Refinery_Area_id = Process_Units.Refinery_Area_id)INNER JOIN Refinery ON Refinery_Area.Refinery_id = Refinery.Refinery_id) WHERE Refinery.Name='" + Project_Name1TxtBox.Text + "' GROUP BY Process_Units.Process_Unit_Name Having Count(PU_System.System_Pre_Commissioned)>0";

                SqlCommand cmd = new SqlCommand(str, con);

                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Close();
            }
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            int[] y1 = new int[dt.Rows.Count];

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
                x[i] = dt.Rows[i][0].ToString();
                y1[i] = Convert.ToInt32(dt.Rows[i][2]);
            }

            NoOfPreCommSystemsChart.Series[0].Points.DataBindXY(x, y);
            NoOfPreCommSystemsChart.Series[0].ChartType = SeriesChartType.Column;
            NoOfPreCommSystemsChart.Series[1].Points.DataBindXY(x, y1);
            NoOfPreCommSystemsChart.Series[1].ChartType = SeriesChartType.Column;
            NoOfPreCommSystemsChart.Series["Completed"].Color = System.Drawing.Color.Red;
            NoOfPreCommSystemsChart.Series["Completed"].IsValueShownAsLabel = true;
            NoOfPreCommSystemsChart.Series["Total"].Color = System.Drawing.Color.PaleTurquoise;
            NoOfPreCommSystemsChart.Series["Total"].IsValueShownAsLabel = true;
            NoOfPreCommSystemsChart.ChartAreas["NoOfPreCommSystemsChartArea"].AxisX.MajorGrid.Enabled = false;
            NoOfPreCommSystemsChart.ChartAreas["NoOfPreCommSystemsChartArea"].AxisY.MajorGrid.Enabled = false;
        }

        protected void CommSystem_Btn_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                //string str = "Select User_id, FirstName, LastName from Users where UserName='" + UserNameTxtbox.Text + "'and Password='" + PasswordTxtbox.Text + "'";
                string str = "Select System_Name AS Name, (Count(Submit)* 100 / (Select Count(Forms_Comm) From System_Form_Comm Where System_Name='" + System2TxtBox.Text + "')) AS Total From Common_Details_Comm WHERE Submit='true' and Project_Name='" + Project_Name2TxtBox.Text + "'and Process_Unit_Name='" + PU2_TxtBox.Text + "'and System_Name='" + System2TxtBox.Text + "' GROUP BY System_Name";

                SqlCommand cmd = new SqlCommand(str, con);
                con.Open();
                //SqlCommand cmd = new SqlCommand("SELECT Plant_No as Name, COUNT(*) AS Total  FROM Chart WHERE Submit='true' GROUP BY Plant_No", con);
                //SqlCommand cmd = new SqlCommand("SELECT Plant_No as Name, (Count(Submit)* 100 / 74) AS Total From Chart WHERE Submit='true' GROUP BY Plant_No", con);
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

            CommSystem_Chart.Series[0].Points.DataBindXY(x, y);
            CommSystem_Chart.Series[0].ChartType = SeriesChartType.Column;
            CommSystem_Chart.Series["CommSystem_Series"].Color = System.Drawing.Color.Red;
            CommSystem_Chart.Series["CommSystem_Series"].IsValueShownAsLabel = true;
            CommSystem_Chart.ChartAreas["CommSystem_ChartArea"].AxisX.MajorGrid.Enabled = false;
            CommSystem_Chart.ChartAreas["CommSystem_ChartArea"].AxisY.MajorGrid.Enabled = false;
        }

        protected void NoCommSystem_Btn_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                //string str = "Select System_Name AS Name, (Count(Submit)* 100 / 3) AS Total From Common_Details_PreComm WHERE Submit='true' and Plant='" + PlantTxtBox.Text + "'and Process_Unit_Name='" + PUTxtBox.Text + "'and System_Name='" + SystemTxtBox.Text + "' GROUP BY System_Name";
                string str = "Select Process_Units.Process_Unit_Name, Count(PU_System.System_Commissioned) AS Total, Count(PU_System.System_Name) AS T FROM(((Process_Units INNER JOIN PU_System ON Process_Units.Process_Unit_id = PU_System.Process_Unit_id)INNER JOIN Refinery_Area ON Refinery_Area.Refinery_Area_id = Process_Units.Refinery_Area_id)INNER JOIN Refinery ON Refinery_Area.Refinery_id = Refinery.Refinery_id) WHERE Process_Units.Process_Unit_Name='" + PU3_TxtBox.Text + "' AND Refinery.Name='" + Project_Name3TxtBox.Text + "' GROUP BY Process_Units.Process_Unit_Name Having Count(PU_System.System_Commissioned)>0";

                SqlCommand cmd = new SqlCommand(str, con);

                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Close();
            }
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            int[] y1 = new int[dt.Rows.Count];

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
                x[i] = dt.Rows[i][0].ToString();
                y1[i] = Convert.ToInt32(dt.Rows[i][2]);
            }

            NoOfCommSystemsChart.Series[0].Points.DataBindXY(x, y);
            NoOfCommSystemsChart.Series[0].ChartType = SeriesChartType.Column;
            NoOfCommSystemsChart.Series[1].Points.DataBindXY(x, y1);
            NoOfCommSystemsChart.Series[1].ChartType = SeriesChartType.Column;
            NoOfCommSystemsChart.Series["Completed"].Color = System.Drawing.Color.Red;
            NoOfCommSystemsChart.Series["Completed"].IsValueShownAsLabel = true;
            NoOfCommSystemsChart.Series["Total"].Color = System.Drawing.Color.PaleTurquoise;
            NoOfCommSystemsChart.Series["Total"].IsValueShownAsLabel = true;
            NoOfCommSystemsChart.ChartAreas["NoOfCommSystemsChartArea"].AxisX.MajorGrid.Enabled = false;
            NoOfCommSystemsChart.ChartAreas["NoOfCommSystemsChartArea"].AxisY.MajorGrid.Enabled = false;
        }

        protected void ViewAllCommSystem_Btn_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                //string str = "Select System_Name AS Name, (Count(Submit)* 100 / 3) AS Total From Common_Details_PreComm WHERE Submit='true' and Plant='" + PlantTxtBox.Text + "'and Process_Unit_Name='" + PUTxtBox.Text + "'and System_Name='" + SystemTxtBox.Text + "' GROUP BY System_Name";
                string str = "Select Process_Units.Process_Unit_Name, Count(PU_System.System_Commissioned) AS Total, Count(PU_System.System_Name) AS T FROM(((Process_Units INNER JOIN PU_System ON Process_Units.Process_Unit_id = PU_System.Process_Unit_id) INNER JOIN Refinery_Area ON Refinery_Area.Refinery_Area_id = Process_Units.Refinery_Area_id)INNER JOIN Refinery ON Refinery_Area.Refinery_id = Refinery.Refinery_id) WHERE Refinery.Name='" + Project_Name3TxtBox.Text + "' GROUP BY Process_Units.Process_Unit_Name Having Count(PU_System.System_Commissioned)>0";

                SqlCommand cmd = new SqlCommand(str, con);

                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Close();
            }
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            int[] y1 = new int[dt.Rows.Count];

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
                x[i] = dt.Rows[i][0].ToString();
                y1[i] = Convert.ToInt32(dt.Rows[i][2]);
            }

            NoOfCommSystemsChart.Series[0].Points.DataBindXY(x, y);
            NoOfCommSystemsChart.Series[0].ChartType = SeriesChartType.Column;
            NoOfCommSystemsChart.Series[1].Points.DataBindXY(x, y1);
            NoOfCommSystemsChart.Series[1].ChartType = SeriesChartType.Column;
            NoOfCommSystemsChart.Series["Completed"].Color = System.Drawing.Color.Red;
            NoOfCommSystemsChart.Series["Completed"].IsValueShownAsLabel = true;
            NoOfCommSystemsChart.Series["Total"].Color = System.Drawing.Color.PaleTurquoise;
            NoOfCommSystemsChart.Series["Total"].IsValueShownAsLabel = true;
            NoOfCommSystemsChart.ChartAreas["NoOfCommSystemsChartArea"].AxisX.MajorGrid.Enabled = false;
            NoOfCommSystemsChart.ChartAreas["NoOfCommSystemsChartArea"].AxisY.MajorGrid.Enabled = false;
        }

        protected void NoPreCommSystem_Btn_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                //string str = "Select System_Name AS Name, (Count(Submit)* 100 / 3) AS Total From Common_Details_PreComm WHERE Submit='true' and Plant='" + PlantTxtBox.Text + "'and Process_Unit_Name='" + PUTxtBox.Text + "'and System_Name='" + SystemTxtBox.Text + "' GROUP BY System_Name";
                string str = "Select Process_Units.Process_Unit_Name, Count(PU_System.System_Pre_Commissioned) AS Total, Count(PU_System.System_Name) AS T FROM(((Process_Units INNER JOIN PU_System ON Process_Units.Process_Unit_id = PU_System.Process_Unit_id)INNER JOIN Refinery_Area ON Refinery_Area.Refinery_Area_id = Process_Units.Refinery_Area_id)INNER JOIN Refinery ON Refinery_Area.Refinery_id = Refinery.Refinery_id) WHERE Process_Units.Process_Unit_Name='" + PU1_TxtBox.Text + "' AND Refinery.Name='" + Project_Name1TxtBox.Text + "' GROUP BY Process_Units.Process_Unit_Name Having Count(PU_System.System_Pre_Commissioned)>0";

                SqlCommand cmd = new SqlCommand(str, con);

                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                con.Close();
            }
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            int[] y1 = new int[dt.Rows.Count];

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
                x[i] = dt.Rows[i][0].ToString();
                y1[i] = Convert.ToInt32(dt.Rows[i][2]);
            }

            NoOfPreCommSystemsChart.Series[0].Points.DataBindXY(x, y);
            NoOfPreCommSystemsChart.Series[0].ChartType = SeriesChartType.Column;
            NoOfPreCommSystemsChart.Series[1].Points.DataBindXY(x, y1);
            NoOfPreCommSystemsChart.Series[1].ChartType = SeriesChartType.Column;
            NoOfPreCommSystemsChart.Series["Completed"].Color = System.Drawing.Color.Red;
            NoOfPreCommSystemsChart.Series["Completed"].IsValueShownAsLabel = true;
            NoOfPreCommSystemsChart.Series["Total"].Color = System.Drawing.Color.PaleTurquoise;
            NoOfPreCommSystemsChart.Series["Total"].IsValueShownAsLabel = true;
            NoOfPreCommSystemsChart.ChartAreas["NoOfPreCommSystemsChartArea"].AxisX.MajorGrid.Enabled = false;
            NoOfPreCommSystemsChart.ChartAreas["NoOfPreCommSystemsChartArea"].AxisY.MajorGrid.Enabled = false;
        }


        //protected void GetPreCommissionedProcessUnits()
        //{
        //    DataTable dt = new DataTable();
        //    using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
        //    {
        //        //string str = "Select System_Name AS Name, (Count(Submit)* 100 / 3) AS Total From Common_Details_PreComm WHERE Submit='true' and Plant='" + PlantTxtBox.Text + "'and Process_Unit_Name='" + PUTxtBox.Text + "'and System_Name='" + SystemTxtBox.Text + "' GROUP BY System_Name";
        //        string str = "SELECT Refinery.Name AS Name, COUNT(Process_Units.Process_Unit_Activity) AS Total FROM((Refinery INNER JOIN Refinery_Area ON Refinery.Refinery_id = Refinery_Area.Refinery_id) INNER JOIN Process_Units ON Refinery_Area.Refinery_Area_id = Process_Units.Refinery_Area_id) WHERE Process_Units.Process_Unit_Activity = 'Pre-Commissioned' GROUP BY Refinery.Name ";

        //        SqlCommand cmd = new SqlCommand(str, con);

        //        con.Open();
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        da.Fill(dt);
        //        con.Close();
        //    }
        //    string[] x = new string[dt.Rows.Count];
        //    int[] y = new int[dt.Rows.Count];
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        x[i] = dt.Rows[i][0].ToString();
        //        y[i] = Convert.ToInt32(dt.Rows[i][1]);
        //    }

        //    Chart3.Series[0].Points.DataBindXY(x, y);
        //    Chart3.Series[0].ChartType = SeriesChartType.Column;
        //    Chart3.Series["Default3"].Color = System.Drawing.Color.Green;
        //    Chart3.Series["Default3"].IsValueShownAsLabel = true;
        //    Chart3.ChartAreas["ChartArea3"].AxisX.MajorGrid.Enabled = false;
        //    Chart3.ChartAreas["ChartArea3"].AxisY.MajorGrid.Enabled = false;
        //}

        ////protected void Button4_Click(object sender, EventArgs e)
        //protected void GetCommissionedProcessUnits()
        //{
        //    DataTable dt = new DataTable();
        //    using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
        //    {
        //        //string str = "Select System_Name AS Name, (Count(Submit)* 100 / 3) AS Total From Common_Details_PreComm WHERE Submit='true' and Plant='" + PlantTxtBox.Text + "'and Process_Unit_Name='" + PUTxtBox.Text + "'and System_Name='" + SystemTxtBox.Text + "' GROUP BY System_Name";
        //        string str = "SELECT Refinery.Name AS Name, COUNT(Process_Units.Process_Unit_Activity) AS Total FROM((Refinery INNER JOIN Refinery_Area ON Refinery.Refinery_id = Refinery_Area.Refinery_id) INNER JOIN Process_Units ON Refinery_Area.Refinery_Area_id = Process_Units.Refinery_Area_id) WHERE Process_Units.Process_Unit_Activity = 'Commissioned' GROUP BY Refinery.Name ";

        //        SqlCommand cmd = new SqlCommand(str, con);

        //        con.Open();
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        da.Fill(dt);
        //        con.Close();
        //    }
        //    string[] x = new string[dt.Rows.Count];
        //    int[] y = new int[dt.Rows.Count];
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        x[i] = dt.Rows[i][0].ToString();
        //        y[i] = Convert.ToInt32(dt.Rows[i][1]);
        //    }

        //    Chart4.Series[0].Points.DataBindXY(x, y);
        //    Chart4.Series[0].ChartType = SeriesChartType.Column;
        //    Chart4.Series["Default4"].Color = System.Drawing.Color.Green;
        //    Chart4.Series["Default4"].IsValueShownAsLabel = true;
        //    Chart4.ChartAreas["ChartArea4"].AxisX.MajorGrid.Enabled = false;
        //    Chart4.ChartAreas["ChartArea4"].AxisY.MajorGrid.Enabled = false;
        //}

        //protected void GetStartedUpProcessUnits()
        //{
        //    DataTable dt = new DataTable();
        //    using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
        //    {
        //        //string str = "Select System_Name AS Name, (Count(Submit)* 100 / 3) AS Total From Common_Details_PreComm WHERE Submit='true' and Plant='" + PlantTxtBox.Text + "'and Process_Unit_Name='" + PUTxtBox.Text + "'and System_Name='" + SystemTxtBox.Text + "' GROUP BY System_Name";
        //        string str = "SELECT Refinery.Name AS Name, COUNT(Process_Units.Process_Unit_Activity) AS Total FROM((Refinery INNER JOIN Refinery_Area ON Refinery.Refinery_id = Refinery_Area.Refinery_id) INNER JOIN Process_Units ON Refinery_Area.Refinery_Area_id = Process_Units.Refinery_Area_id) WHERE Process_Units.Process_Unit_Activity = 'Started-Up' GROUP BY Refinery.Name ";

        //        SqlCommand cmd = new SqlCommand(str, con);

        //        con.Open();
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //        da.Fill(dt);
        //        con.Close();
        //    }
        //    string[] x = new string[dt.Rows.Count];
        //    int[] y = new int[dt.Rows.Count];
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        x[i] = dt.Rows[i][0].ToString();
        //        y[i] = Convert.ToInt32(dt.Rows[i][1]);
        //    }

        //    Chart5.Series[0].Points.DataBindXY(x, y);
        //    Chart5.Series[0].ChartType = SeriesChartType.Column;
        //    Chart5.Series["Default5"].Color = System.Drawing.Color.Green;
        //    Chart5.Series["Default5"].IsValueShownAsLabel = true;
        //    Chart5.ChartAreas["ChartArea5"].AxisX.MajorGrid.Enabled = false;
        //    Chart5.ChartAreas["ChartArea5"].AxisY.MajorGrid.Enabled = false;
        //}
    }
}