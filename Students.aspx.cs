using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.BLL;

namespace WebApplication1
{
    public partial class Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)   
            {
                Student S = new Student();
                gvStudents.DataSource = S.Getallrecords();
                gvStudents.DataBind();
            }           
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Student S = new Student();
            S.FirstName = txtFirstName.Text;
            S.LastName = txtLastName.Text;
            S.Email = txtEmail.Text;
            S.Add();                 //Data Added to Database


            gvStudents.DataSource = S.Getallrecords();          // Now Display data from database because it has new record now
            gvStudents.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Student S = new Student();
            S.Email = txtSearch.Text;
            S.Search();

            gvStudents.DataSource = S.Search();          
            gvStudents.DataBind();

            //Enter Student`s Firstname or last name or Email and than 
            //Create Store procedure in database for Search which take 1 search parameter and return record 
            // bind that record to griedview
            // select * from tblStudent whre firstname = @Search or lastname = @search or email = @search
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            Student S = new Student();
            //S.studebtID = txtstudentID.Text;
            S.FirstName = txtFirstName.Text;
            S.LastName = txtLastName.Text;
            S.Email = txtEmail.Text;
            S.Edit();                 //Data Added to Database


            gvStudents.DataSource = S.Getallrecords();          // Now Display data from database because it has new record now
            gvStudents.DataBind();
        }
    }
}