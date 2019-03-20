using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Ticketing
{
    public partial class AdminManagement : System.Web.UI.Page
    {
        private SqlConnection con = new SqlConnection();
        private string conString = "Data Source=(local);Initial Catalog=ShoppingMall;Integrated Security=True";
        SqlCommand cmd;


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int uid = Convert.ToInt32(UID.Text); ;
            con.ConnectionString = conString;
            cmd = con.CreateCommand();

            try
            {
                string query = "Delete from flightInfo where UserID= " + uid;
                cmd.CommandText = query;
                con.Open();
                cmd.ExecuteScalar();// ***
                // if this works, a row should have been deleted
                lblMessage.Text = "Delete successful";

            }
            catch (Exception ex)
            {
                handlerException(ex);
            }
            finally
            {
                cmd.Dispose();
                con.Close();
                RefreshData();
            }

        }

        private void RefreshData()
        {
            con.ConnectionString = conString;
            cmd = con.CreateCommand();

            try
            {
                string query = "Select * from MemberTable;";
                cmd.CommandText = query;
                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();

                DataTable dt = new DataTable();
                dt.Load(reader);

                GridView1.DataSource = dt;

               

                reader.Close();
            }
            catch
            {

            }

        }


        protected void add_btn_Click(object sender, EventArgs e)
        {
            string username = tbUserName.Text;
            string password = tbPassword.Text;
            string email = tbEmail.Text;
            string fullname = tbFullname.Text;
            string address = tbAddress.Text;
            string phone = tbPhone.Text;
            string age = tbAge.Text;


            if (username == "" || password == "" || email == "" || address == "" || postalcode == "" || phone == "")
            {

                lblMessage.Text = " Please fill out all fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                con.ConnectionString = conString;
                cmd = con.CreateCommand();

                try
                {
                    string query = "Insert into MemberTable(UserName, Password, Email, Address, PostalCode, Phone)" +
                        " values( '" + "', '" + username + "', " +
                        "'" + password + "','" + email + "','" + address + "'," +
                        "'" + postalcode + "','" + phone + "' );" ;

                    cmd.CommandText = query;
                    con.Open();
                    cmd.ExecuteScalar();

                    lblMessage.Text = " Successfully Added !!!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;

                }
                catch (Exception ex)
                {
                    lblMessage.Text = ex.Message.ToString();
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                finally
                {
                    cmd.Dispose();
                    con.Close();
                    RefreshData();
                }

            }
        }


            protected void refresh_btn_Click(object sender, EventArgs e)
            {
                RefreshData();
            }

        protected void edit_btn_Click(object sender, EventArgs e)
        {
            //int flID = Convert.ToInt32(cmbAirplaneType.SelectedValue);
            string username = tbUserName.Text;
            string password = tbPassword.Text;
            string email = tbEmail.Text;
            string address = tbAddress.Text;
            string postalcode = taAge.Text;
            string phone = tbPhone.Text;

            // what if string airplane = cmbAirplaneType.SelectedValue;
            if (username == "" || password == "" || email == "" || address == "" || postalcode == "" || phone == "")
            {

                lblMessage.Text = " Please fill out all fields.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                string query = "Update MemberTable Set "  + username + 
                    "', '" + password + "', '" + email + "', '" + 
                    address + "', '" + postalcode + "', '" + phone + "';" ;


                con.ConnectionString = conString;
                cmd = con.CreateCommand();

                try
                {
                    cmd.CommandText = query;
                    con.Open();
                    cmd.ExecuteScalar();
                }
                catch (Exception ex)
                {
                    handlerException(ex);
                }
                finally
                {
                    cmd.Dispose();
                    con.Close();
                    RefreshData();
                }
            }
        }

        private void handlerException(Exception ex)
        {
            lblMessage.Text = ex.Message.ToString();
            lblMessage.ForeColor = System.Drawing.Color.Red;
        }

    }
    }