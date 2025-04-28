using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Allformcontrols1
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            {
                // Retrieve the data from Session variables
                string name = Session["Name"] as string;
                string country = Session["Country"] as string;
                bool isSubscribed = Session["Subscribe"] != null && (bool)Session["Subscribe"];

                // Display the data
                lblResult.Text = $"Name: {name}<br/>Country: {country}<br/>Subscribed: {isSubscribed}";
            }

        }
    }
}