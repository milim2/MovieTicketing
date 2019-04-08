using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticketing
{
    public partial class Invoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lbAmount.Visible = true;
                lbAmount.Text = (string)(Session["TOT"]);

            }
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            Server.Transfer("Home.aspx");
        }
    }
}