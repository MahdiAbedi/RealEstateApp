using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gharana_Real_Estate_Application
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox usernameTextBox = (TextBox)Login1.FindControl("UserName");
            this.Title = "RealEstate : Login";
        }
        protected void Login1_LoggedIn(object sender, EventArgs e)
        {
            TextBox usernameTextBox = (TextBox)Login1.FindControl("UserName");

            if (usernameTextBox != null)
            {
                Session["username"] = usernameTextBox.Text;

            }
        }
    }
}