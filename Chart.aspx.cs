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
    public partial class Chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetEmployeeChartInfo();
            }
        }

        private void GetEmployeeChartInfo()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                con.Open();
                //SqlCommand cmd = new SqlCommand("SELECT Plant_No as Name, COUNT(*) AS Total  FROM Chart WHERE Submit='true' GROUP BY Plant_No", con);
                SqlCommand cmd = new SqlCommand("SELECT Plant_No as Name, (Count(Submit)* 100 / 74) AS Total From Chart WHERE Submit='true' GROUP BY Plant_No", con);
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

            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].ChartType = SeriesChartType.Column;
            Chart1.Series["Default"].Color = System.Drawing.Color.Red;
            Chart1.Series["Default"].IsValueShownAsLabel = true;
            Chart1.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;
            Chart1.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = false;
            //Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        }
    }
}