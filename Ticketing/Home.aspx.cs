using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticketing
{
    public partial class Home : System.Web.UI.Page
    {
        public static DateTime tm;
        protected void Page_Load(object sender, EventArgs e)
        {
            tm = DateTime.Today;
        }

        protected void date_ddl_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}