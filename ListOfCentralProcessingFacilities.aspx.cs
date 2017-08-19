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
    public partial class ListOfCentralProcessingFacilities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
                SqlConnection sqlConnection = new SqlConnection(connectionString);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("Select Refinery_id, Name, Project_Type, Owner_Company from dbo.Refinery Where Project_Type='Central Processing Facility'", sqlConnection);
                DataSet dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet, "Refinery");

                if (dataSet != null)
                {
                    if (dataSet.Tables[0].Rows.Count != 0)
                    {
                        grdVwRefineryCollection.DataSource = dataSet;
                        grdVwRefineryCollection.DataBind();
                    }
                    else
                    {
                        Label1.Text = "There are no Central Processing Facilities in the system. Please ask your administrator to add a new central processing facility.";
                        grdVwRefineryCollection.DataSource = null;
                        grdVwRefineryCollection.DataBind();
                    }
                }
                sqlConnection.Close();
            }
        }

        protected void grdVwRefineryCollection_Onrowcommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "View")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = grdVwRefineryCollection.Rows[index];
                Response.Redirect("~/ViewProcessUnits.aspx?Refinery_id=" + row.Cells[0].Text);
                //Response.Redirect("~/NewTest.aspx?Refinery_id=" + row.Cells[0].Text);
            }
        }

        protected void grdVwRefineryCollection_RowDataBound(object sender, GridViewCommandEventArgs e)
        {
            this.grdVwRefineryCollection.Columns[0].Visible = false;
        }
    }
}