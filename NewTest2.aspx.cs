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
    public partial class NewTest2 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString);
        int RefAreaid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            RefAreaid = Convert.ToInt32(Request.QueryString["Refinery_Area_id"].ToString());

            SqlCommand cmd1 = new SqlCommand("Select Refinery_Area_Name from dbo.Refinery_Area where Refinery_Area_id=" + RefAreaid, conn);
            cmd1.Parameters.Add("@Refinery_Area_id", SqlDbType.Int).Value = 1;
            conn.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            if (reader.Read())
                AreaLbl.Text = reader["Refinery_Area_Name"].ToString();
                conn.Close();

            if (!IsPostBack)
            {
                BindListBox();
            }
        }
        public void BindListBox()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * From Process_Units Where Refinery_Area_id=" + RefAreaid, conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "PUTable");
            lstPU.DataSource = ds;
            lstPU.DataTextField = "Process_Unit_Name";
            lstPU.DataValueField = "Process_Unit_id";
            lstPU.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in lstPU.Items)
            {
                if (item.Selected)
                {
                    //lblSelectedTech.Text += "<li><b>" + item.Text + "<b></li>";
                    Response.Redirect("~/NewTest3.aspx?Process_Unit_id=" + lstPU.SelectedValue);
                }
            }
        }
    
}
}