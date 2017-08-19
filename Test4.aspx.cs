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
    public partial class Test4 : System.Web.UI.Page
    {
        string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
        SqlConnection sqlConnection;
        SqlDataAdapter sqlDataAdapter;
        DataSet dataSet;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowData();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Label1.Text = "";
            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection = new SqlConnection(connectionString);

            sqlDataAdapter = new SqlDataAdapter("SELECT * FROM Unit_1 INNER JOIN Refinery ON Unit_1.Refinery_id = Refinery.Refinery_id WHERE Refinery.Name='" + txtSearch.Text + "'", sqlConnection);
            dataSet = new DataSet();
            sqlDataAdapter.Fill(dataSet, "Unit_1");
            if (dataSet != null)
            {
                if (dataSet.Tables[0].Rows.Count != 0)
                {
                    gvsearchrefinery.DataSource = dataSet;
                    gvsearchrefinery.DataBind();
                }
                else
                {
                    Label1.Text = "There is no such refinery in the system. Please add a new refinery.";
                    gvsearchrefinery.DataSource = null;
                    gvsearchrefinery.DataBind();
                }
            }
        }

        protected void ShowData()
        {
            dt = new DataTable();
            sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            sqlDataAdapter = new SqlDataAdapter("SELECT Unit_id, Unit_Name FROM Unit_1 INNER JOIN Refinery ON Unit_1.Refinery_id = Refinery.Refinery_id WHERE Refinery.Name = '" + txtSearch.Text + "'", sqlConnection);
            sqlDataAdapter.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                gvsearchrefinery.DataSource = dt;
                gvsearchrefinery.DataBind();
            }
            sqlConnection.Close();
        }

        protected void gvsearchrefinery_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            gvsearchrefinery.EditIndex = e.NewEditIndex;
            ShowData();
        }

        protected void gvsearchrefinery_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            //Finding the controls from Gridview for the row which is going to update  
            Label Unit_id = gvsearchrefinery.Rows[e.RowIndex].FindControl("lblUnit_id") as Label;
            Label Refinery_id = gvsearchrefinery.Rows[e.RowIndex].FindControl("lblRefinery_id") as Label;
            TextBox name = gvsearchrefinery.Rows[e.RowIndex].FindControl("txtUnit_Name") as TextBox;

            sqlConnection = new SqlConnection(connectionString);
            sqlConnection.Open();
            //updating the record  
            SqlCommand cmd = new SqlCommand("Update Unit_1 set Unit_Name='" + name.Text + "', where Refinery_id=" + Convert.ToInt32(Refinery_id.Text), sqlConnection);
            cmd.ExecuteNonQuery();
            sqlConnection.Close();
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvsearchrefinery.EditIndex = -1;
            //Call ShowData method for displaying updated data  
            ShowData();
        }

        protected void gvsearchrefinery_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
            gvsearchrefinery.EditIndex = -1;
            ShowData();
        }
        
    }
}