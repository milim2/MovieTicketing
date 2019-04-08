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

        protected void LoginButton_Click1(object sender, EventArgs e)
        {
           
            using (SqlConnection con = new SqlConnection(@"Data Source=(local);Initial Catalog=ShoppingMall;Integrated Security=True"))
            {
                con.Open();
                string query = "Select Count(*) from MemberTable where UserName = " +
                " '" + tbUsername.Text + "' and Password = '" + tbPassword.Text + "' ";
                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@UserName", tbUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", tbPassword.Text.Trim());
                int count = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (count == 1)
                {
                    string cmd2 = " Select FullName from MemberTable where UserName ='" + tbUsername.Text + "'";

                    SqlCommand full = new SqlCommand(cmd2, con);
                    string fullname = full.ExecuteScalar().ToString();
                    con.Close();
                    if (tbUsername.Text == "admin" && tbPassword.Text == "admin")
                    {
                        Response.Redirect("AdminManagement.aspx");
                    }
                    else
                    {
                        string text = "Welcome Back, " + tbUsername.Text;
                        Session["MSG"] = text;
                        Session["User"] = tbUsername.Text;

                        Response.Redirect("Home.aspx");
                    }
                }
                else
                {
                    lblmsg.Visible = true;
                    lblmsg.Text = "Wrong password";
                }
                
            }
        }
    }
}

    
