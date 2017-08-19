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
    public partial class OPTest : System.Web.UI.Page
    {
        //SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString);

            //string str = "Select System_Name AS Name, (Count(Submit)* 100 / 3) AS Total From Common_Details_PreComm WHERE Submit='true' and Plant='" + PlantTxtBox.Text + "'and Process_Unit_Name='" + PUTxtBox.Text + "'and System_Name='" + SystemTxtBox.Text + "' GROUP BY System_Name";
            string str = "Select Process_Units.Process_Unit_Name, Count(PU_System.System_Pre_Commissioned) AS Total FROM(((Process_Units INNER JOIN PU_System ON Process_Units.Process_Unit_id = PU_System.Process_Unit_id) INNER JOIN Refinery_Area ON Refinery_Area.Refinery_Area_id = Process_Units.Refinery_Area_id)INNER JOIN Refinery ON Refinery_Area.Refinery_id = Refinery.Refinery_id) WHERE Refinery.Name='" + TextBox10.Text + "' GROUP BY Process_Units.Process_Unit_Name Having Count(PU_System.System_Pre_Commissioned)>0";

            SqlCommand cmd = new SqlCommand(str, con);

            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //da.Fill(dt);
            DataSet ds = new DataSet();
            da.Fill(ds);

            DataTable ChartData = ds.Tables[0];

            //storing total rows count to loop on each Record  
            string[] XPointMember = new string[ChartData.Rows.Count];
            int[] YPointMember = new int[ChartData.Rows.Count];

            for (int count = 0; count < ChartData.Rows.Count; count++)
            {
                //storing Values for X axis  
                XPointMember[count] = ChartData.Rows[count][0].ToString();
                //storing values for Y Axis  
                YPointMember[count] = Convert.ToInt32(ChartData.Rows[count][1]);


            }
            //binding chart control  
            Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);

            //Setting width of line  
            Chart1.Series[0].BorderWidth = 10;
            //setting Chart type   
            Chart1.Series[0].ChartType = SeriesChartType.Column;

            Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            con.Close();

        }

        protected void Button6_Click1(object sender, EventArgs e)
        {

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                //string str = "Select System_Name AS Name, (Count(Submit)* 100 / 3) AS Total From Common_Details_PreComm WHERE Submit='true' and Plant='" + PlantTxtBox.Text + "'and Process_Unit_Name='" + PUTxtBox.Text + "'and System_Name='" + SystemTxtBox.Text + "' GROUP BY System_Name";
                string str = "Select Process_Units.Process_Unit_Name, Count(PU_System.System_Pre_Commissioned) AS T, Count(PU_System.System_Name) AS Total FROM(((Process_Units INNER JOIN PU_System ON Process_Units.Process_Unit_id = PU_System.Process_Unit_id) INNER JOIN Refinery_Area ON Refinery_Area.Refinery_Area_id = Process_Units.Refinery_Area_id)INNER JOIN Refinery ON Refinery_Area.Refinery_id = Refinery.Refinery_id) WHERE Refinery.Name='" + TextBox1.Text + "' GROUP BY Process_Units.Process_Unit_Name Having Count(PU_System.System_Pre_Commissioned)>0";

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

            Chart6.Series[0].Points.DataBindXY(x, y);
            Chart6.Series[0].ChartType = SeriesChartType.Column;
            Chart6.Series[1].Points.DataBindXY(x, y1);
            Chart6.Series[1].ChartType = SeriesChartType.Column;
            Chart6.Series["Completed"].Color = System.Drawing.Color.Red;
            Chart6.Series["Completed"].IsValueShownAsLabel = true;
            Chart6.Series["Total"].Color = System.Drawing.Color.PaleTurquoise;
            Chart6.Series["Total"].IsValueShownAsLabel = true;
            Chart6.ChartAreas["ChartArea6"].AxisX.MajorGrid.Enabled = false;
            Chart6.ChartAreas["ChartArea6"].AxisY.MajorGrid.Enabled = false;
            Chart6.Legends[0].Enabled = true;
        }
    }
}