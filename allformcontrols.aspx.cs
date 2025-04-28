using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Allformcontrols1
{
    public partial class allformcontrols : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Retrieve form data
            string name = txtName.Text;
            string country = ddlCountry.SelectedValue;
            bool isSubscribed = chkSubscribe.Checked;

            // Store data in Session variables (you could also use Query Strings here)
            Session["Name"] = name;
            Session["Country"] = country;
            Session["Subscribe"] = isSubscribed;

            // Redirect to ResultPage.aspx
            Response.Redirect("Result.aspx");
        }
    }
}