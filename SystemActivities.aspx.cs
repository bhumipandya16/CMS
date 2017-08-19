using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class NewTest4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PreCommBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PreComm.aspx");
        }

        protected void CommBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Comm.aspx");
        }

        protected void StartUpBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/StartUp.aspx");
        }

        protected void PunchListBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/PunchList.aspx");
        }
    }
}