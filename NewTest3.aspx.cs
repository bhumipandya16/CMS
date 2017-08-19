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
    public partial class NewTest3 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString);
        int PUid = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            PUid = Convert.ToInt32(Request.QueryString["Process_Unit_id"].ToString());
            SqlCommand cmd1 = new SqlCommand("Select Process_Unit_Name from dbo.Process_Units where Process_Unit_id=" + PUid, conn);
            cmd1.Parameters.Add("@Process_Unit_id", SqlDbType.Int).Value = 1;
            conn.Open();
            SqlDataReader reader = cmd1.ExecuteReader();
            if (reader.Read())
                PULbl.Text = reader["Process_Unit_Name"].ToString();
            conn.Close();

            if (!IsPostBack)
            {
                BindListBox();
            }
        }

        public void BindListBox()
        {
            //SqlDataAdapter da = new SqlDataAdapter("Select * From PU_System Where Process_Unit_id=" + PUid, conn);
            SqlDataAdapter da = new SqlDataAdapter("Select * From Systems Where Process_Unit_Name LIKE (Select Process_Unit_Name From Process_Units Where Process_Unit_id LIKE '"+ PUid +"')", conn);
            DataSet ds = new DataSet();
            da.Fill(ds, "SystemTable");
            lstTech.DataSource = ds;
            lstTech.DataTextField = "System_Name";
            lstTech.DataValueField = "System_id";
            lstTech.DataBind();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            foreach (ListItem item in lstTech.Items)
            {
                if (item.Selected)
                {
                    Response.Redirect("~/NewTest4.aspx?System_id=" + lstTech.SelectedValue);
                }
            }
        }
    }
}