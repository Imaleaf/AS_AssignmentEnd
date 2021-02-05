using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AS_Assignment_End
{
    public partial class CustomerFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("display.aspx?Comment=" + HttpUtility.UrlEncode(tbComments.Text));
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {

        }
    }
}