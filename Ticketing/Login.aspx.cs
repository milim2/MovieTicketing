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
using System.Data.SqlClient;


namespace Ticketing
{
    public partial class Login : System.Web.UI.Page
    {
        string msg;   
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string uname = tbUsername.Text;
            string pass = tbPassword.Text;

            string cs = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) from MemberTable where UserName = '"+ uname + "' and Password = '"+ pass +"' ", con);

            DataTable dt = new DataTable();
            
            if (dt.Rows[0][0].ToString() == "0")
            {
                lblMessage.Text = "login failed";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            /*
            SqlCommand cmd = new SqlCommand(query, con);
           
            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                string query2 = "update MemberTable set Email='" + tbUsername.Text + "' where UserName=('" + Request.QueryString["tbUsername"] + "')";
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd2.ExecuteNonQuery();
                Response.Redirect("Home.aspx");
            }
            */
            else
            {
                if (dt.Rows.ToString() == "admin")
                    Response.Redirect("AdminManagement");
                else
                {
                    Session["fullname"] = dt.Rows[0]["FullName"];
                    Session["msg"] = String.Format("Welcome back!! ");

                }               
            }
            dt.Dispose();

        }
        
    }
}

    
