using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDemoEmpty2
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            string value = TextBox1.Text;
            string upperCaseValue = value.ToUpper();
            changed_text.InnerHtml = upperCaseValue;

            Response.Redirect("SecondPage.aspx?value="+ upperCaseValue);
        }

    }
}