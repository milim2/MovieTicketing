using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ticketing
{
    public partial class Option : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            lb_user.Visible = true;
            lb_user.Text = (string)(Session["User"]);
            lb_movie.Text = (string)(Session["Title"]);
            lb_date.Text = (string)(Session["Date"]);
            lb_time.Text = (string)(Session["Time"]);

            double total = 0, subtotal = 0;
            float gen = 0, chd = 0, snr = 0, tue = 0;

            if (chkGeneral.Checked == true)
            {
                gen = 15 * Convert.ToInt32(qGeneral.Text);
                subGeneral.Text = gen.ToString();
            }
            if (chkChild.Checked == true)
            {
                chd = 5 * Convert.ToInt32(qChild.Text);
                subChild.Text = chd.ToString();
            }
            if (chkSenior.Checked == true)
            {
                snr = 5 * Convert.ToInt32(qSenior.Text);
                subSenior.Text = snr.ToString();
            }

            if (chkTuesday.Checked == true)
            {
                tue = 5 * Convert.ToInt32(qTuesday.Text);
                subTuesday.Text = tue.ToString();
            }
            subtotal = gen + chd + snr + tue;

            if (chkMember.Checked == true)
            { 
                subtotal = subtotal - (float)(0.2 *subtotal);              
               
            }
            tbSub.Text = subtotal.ToString();
            
            total = subtotal + (subtotal * 0.13);
            TextBox1.Text = total.ToString();

        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
          
            
        }

        protected void resetBtn_Click(object sender, EventArgs e)
        {
            chkGeneral.Checked = false;
            chkChild.Checked = false;
            chkSenior.Checked = false;
            chkTuesday.Checked = false;
            qGeneral.Text = "";
            qChild.Text = "";
            qSenior.Text = "";
            qTuesday.Text = "";
            subGeneral.Text = "";
            subChild.Text = "";
            subSenior.Text = "";
            subTuesday.Text = "";

            TextBox1.Text = "";

        }

        protected void checkout_Click(object sender, EventArgs e)
        {
            Session["TOT"] = TextBox1.Text;
            Server.Transfer("Checkout.aspx");
        }
    }
}