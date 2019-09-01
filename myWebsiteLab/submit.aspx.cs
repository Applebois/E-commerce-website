using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myWebsiteLab
{
    public partial class submit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Backtomain_Click(object sender, EventArgs e)
        {
            Response.Redirect("default.aspx");
        }
    }
}