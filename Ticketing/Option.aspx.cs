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

            lb_movie.Text = (string)(Session["Title"]);
            lb_date.Text = (string)(Session["Date"]);
            lb_time.Text = (string)(Session["Time"]);

            double total = 0;
            int gen = 0, chd = 0, snr = 0, tue = 0;
             
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

            total = gen + chd + snr + tue ;
            total = total + (total * 0.13);
            TextBox1.Text = total.ToString();
        }
    }
}