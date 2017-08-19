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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];

            using (SqlConnection sqlConnection12 = new SqlConnection(WebConfigurationManager.ConnectionStrings["Registration"].ConnectionString))
            {
                SqlCommand cmd1 = new SqlCommand("Select FirstName, LastName from dbo.Users where User_id=" + id, sqlConnection12);
                cmd1.Parameters.Add("@User_id", SqlDbType.Int).Value = 1;
                sqlConnection12.Open();
                SqlDataReader reader = cmd1.ExecuteReader();
                if (reader.Read())
                    LblFirstName.Text = reader["FirstName"].ToString();
                    LblLastName.Text = reader["LastName"].ToString();
            }

            string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            SqlConnection sqlConnection1 = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            Object returnValue;

            cmd.CommandText = "Select Role from dbo.Users where User_id=" + id;
            cmd.CommandType = CommandType.Text;
            cmd.Connection = sqlConnection1;

            sqlConnection1.Open();

            returnValue = cmd.ExecuteScalar();
            
            sqlConnection1.Close();

            if ((returnValue as string) == "Admin")
                BtnMaintenance.Visible = true;
            else
                BtnMaintenance.Visible = false;
        }
        protected void BtnMaintenance_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Maintainance.aspx");
        }

        //protected void BtnSearch_Click(object sender, EventArgs e)
        //{
        //    //Label1.Text = "";
        //    string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
        //    SqlConnection sqlConnection = new SqlConnection(connectionString);
        //    //try
        //    //{
        //    //    if (!string.IsNullOrEmpty(txtSearch.Text))
        //    ////    {
        //    //        SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("Select Refinery_id, Name , Owner_Company "
        //    //                                + "from dbo.Refinery where Name like '%" + txtSearch.Text.Trim() + "%'", sqlConnection);
        //    SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("Select Refinery_id, Name , Owner_Company from dbo.Refinery", sqlConnection);
        //    DataSet dataSet = new DataSet();
        //            sqlDataAdapter.Fill(dataSet, "Refinery");

        //            if (dataSet != null)
        //            {
        //                if (dataSet.Tables[0].Rows.Count != 0)
        //                {
        //                    grdVwRefineryCollection.DataSource = dataSet;
        //                    grdVwRefineryCollection.DataBind();
        //                }
        //                else
        //                {
        //                    Label1.Text = "There is no such project in the system. Please ask your administrator to add a new refinery.";
        //                    grdVwRefineryCollection.DataSource = null;
        //                    grdVwRefineryCollection.DataBind();
        //                }
        //            }
        //        //}

        //        //grdVwRefineryCollection.DataSource = dataSet.Tables[0];
        //        //grdVwRefineryCollection.DataBind();
 
        //    //}
        //    //catch (Exception ex)
        //    //{
        //    //    //Label1.Text
        //    //}
        //    //finally
        //    //{
        //        sqlConnection.Close();
        //    //}
        //}

        //protected void grdVwRefineryCollection_Onrowcommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "View")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);
        //        GridViewRow row = grdVwRefineryCollection.Rows[index];
        //        Response.Redirect("~/ViewProcessUnits.aspx?Refinery_id=" + row.Cells[0].Text);
        //       //Response.Redirect("~/NewTest.aspx?Refinery_id=" + row.Cells[0].Text);
        //    }
        // }

        //protected void grdVwRefineryCollection_RowDataBound(object sender, GridViewCommandEventArgs e)
        //{
        //    this.grdVwRefineryCollection.Columns[0].Visible = false;
        //}

        protected void OilRefineriesBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListOfOilRefineries.aspx");
            //string connectionString = WebConfigurationManager.ConnectionStrings["Registration"].ToString();
            //SqlConnection sqlConnection = new SqlConnection(connectionString);
            //SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("Select Refinery_id, Name, Project_Type, Owner_Company from dbo.Refinery Where Project_Type='Oil Refinery'", sqlConnection);
            //DataSet dataSet = new DataSet();
            //sqlDataAdapter.Fill(dataSet, "Refinery");

            //if (dataSet != null)
            //{
            //    if (dataSet.Tables[0].Rows.Count != 0)
            //    {
            //        grdVwRefineryCollection.DataSource = dataSet;
            //        grdVwRefineryCollection.DataBind();
            //    }
            //    else
            //    {
            //        grdVwRefineryCollection.DataSource = null;
            //        grdVwRefineryCollection.DataBind();
            //    }
            //}
            //sqlConnection.Close();
        }

        protected void PetrochemicalComplexBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListOfPetrochemicalComplex.aspx");
        }

        protected void OffshorePlatformBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListOfOffshorePlatform.aspx");
        }

        protected void CPFacilitiesBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListOfCentralProcessingFacilities.aspx");
        }

        protected void GasFractionFacilitiesBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListOfGasFractionationFacilities.aspx");
        }

        protected void GasPipelineBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListOfGasPipeline.aspx");
        }

        protected void GasCompressionPlantsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListOfGasCompressionPlants.aspx");
        }

        protected void LNGTerminalsBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListOfLNGTerminals.aspx");
        }

        protected void UpgradersBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ListOfUpgraders.aspx");
        }
    }
    }
