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
    public partial class NewTest : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString);
        int Refid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            Refid = Convert.ToInt32(Request.QueryString["Refinery_id"].ToString());
            SqlCommand cmd1 = new SqlCommand("Select Name from dbo.Refinery where Refinery_id=" + Refid, conn);
            cmd1.Parameters.Add("@Refinery_id", SqlDbType.Int).Value = 1;
            conn.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            if (reader.Read())
                ProjectLbl.Text = reader["Name"].ToString();
            conn.Close();

            if (!IsPostBack)
            {
                BindListBox();
            }
        }
        /// <summary>   
        /// To load data into ListBox control   
        /// </summary>   
        public void BindListBox()
        {
            SqlDataAdapter da = new SqlDataAdapter("Select * From Refinery_Area Where Refinery_id=" + Refid, conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "TechTable");
            lstTech.DataSource = ds;
            lstTech.DataTextField = "Refinery_Area_Name";
            lstTech.DataValueField = "Refinery_Area_id";
            lstTech.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in lstTech.Items)
            {
                if (item.Selected)
                {
                    //lblSelectedTech.Text += "<li><b>" + item.Text + "<b></li>";
                    Response.Redirect("~/NewTest2.aspx?Refinery_Area_id=" + lstTech.SelectedValue);
                }
            }
        }
    }
}