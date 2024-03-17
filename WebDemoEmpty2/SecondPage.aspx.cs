using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDemoEmpty2
{
    public partial class SecondPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string name = Request.QueryString["name"].ToString();
                string address = Request.QueryString["address"].ToString();
                string academic = Request.QueryString["academic"].ToString();
                string gender = Request.QueryString["gender"].ToString();
                string result = $"Name: {name}<br/> Address: {address}<br/> Academic: {academic}<br/> Gender: {gender}";

                Data_Label.Text = result;

            }
            catch { }

        }
    }
}