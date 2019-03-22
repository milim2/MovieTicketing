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
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = (string)(Session["Title"]);
                movie_ddl.Items.Add(new ListItem("Movies"));
                movie_ddl.Items.Add(new ListItem("Alita"));
                movie_ddl.Items.Add(new ListItem("Captain Marvel")); 
                movie_ddl.Items.Add(new ListItem("Cruel Intentions")); 
                movie_ddl.Items.Add(new ListItem("Daragon 3")); 
                movie_ddl.Items.Add(new ListItem("Five Feet Apart")); 
                movie_ddl.Items.Add(new ListItem("Green Book"));
                
            }
        }
        
        protected void lb_submit_Click(object sender, EventArgs e)
        {
            Application["Title"] = movie_ddl.SelectedItem.Text;
            Application["Date"] = tbDate.Text;
            Application["Time"] = tbTime.Text;
            Server.Transfer("Option.aspx");
        }

        protected void btn_reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}