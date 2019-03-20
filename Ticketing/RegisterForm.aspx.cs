using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


namespace Ticketing
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["CS"].ConnectionString;
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSign_Click(object sender, EventArgs e)
        {

            try
            {
                
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                string query = "Insert into MemberTable (UserName, Password, Email, FullName, Address, Phone, Age) values (@username, @password, @email, @fullname, @address, @phone, @age);";

                SqlCommand cmd = new SqlCommand(query, con);
                
                cmd.Parameters.AddWithValue("@username", tbUserName.Text);
                cmd.Parameters.AddWithValue("@password", tbPassword.Text);
                cmd.Parameters.AddWithValue("@email", tbEmail.Text);
                cmd.Parameters.AddWithValue("@fullname", tbFullname.Text);
                cmd.Parameters.AddWithValue("@address", tbAddress.Text);
                cmd.Parameters.AddWithValue("@phone", tbPhone.Text);
                cmd.Parameters.AddWithValue("@age", tbAge.Text);

                cmd.ExecuteNonQuery();
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            
        }
    }
}
