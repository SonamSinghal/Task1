using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (Membership.ValidateUser(Username.Text, Password.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(Username.Text, true);
                Session["Username"] = Username.Text;
                 if (Roles.IsUserInRole(Username.Text, "Administrator"))
                {
                    Response.Redirect("AdminDashboard.aspx");
                }
                else if (Roles.IsUserInRole(Username.Text, "Member"))
                {
                    Response.Redirect("Default.aspx");
                }
               
                
            }
            else
            {
                InvalidMsg.Text = "Invalid Username or Password";
            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}