using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data;


namespace Ticketing
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;

            string query = "Select * from MemberTable where Email = '" +
                 tbEmail.Text + "' and Password = '" + tbPassword.Text + "' ";

            SqlConnection con = new SqlConnection(cs);
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                string query2 = "update MemberTable set Email='" + tbEmail.Text + "' where UserName=('" + Request.QueryString["tbUsername"] + "')";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd2.ExecuteNonQuery();
                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMessage.Text = "login failed";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
        
    }
}

    
