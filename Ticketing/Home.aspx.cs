using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Ticketing
{
    public partial class Home : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {                
                Label3.Visible = true;                
                Label3.Text = (string)(Session["MSG"]);                
                Label4.Text = (string)(Session["User"]);                
            }
        }
        
        protected void btn_reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void lbSubmit_Click(object sender, EventArgs e)
        {
            Session["User"] = Label3.Text;
            Session["Title"] = movie_ddl.SelectedItem.Text;
            Session["Date"] = tbDate.Text;
            Session["Time"] = ddl_time.Text;
            Response.Redirect("Option.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://youtu.be/ee1172yeqyE");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
           
            Response.Redirect("Home.aspx");
        }
    }
}