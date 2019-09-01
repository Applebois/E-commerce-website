using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myWebsiteLab
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextEmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Insert();
            //SqlDataSourceFeedback.Insert();
            clearText();
            Response.Redirect("submit.aspx");
        }
        protected void clearText()
        {
            TextName.Text = "";
            TextEmail.Text = "";
            TextComment.Text = "";
        }

        protected void ButtonClear_Click(object sender, EventArgs e)
        {
            clearText();
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}