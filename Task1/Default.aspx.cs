using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Task1.Model;

namespace Task1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        readonly UserModelContext connection = new UserModelContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();
            var user = connection.Database.SqlQuery<UserModel>("Select * from UserModels where Email={0};", username).FirstOrDefault();

            FirstName.Text = user.FirstName;
            LastName.Text = user.LastName;
            Gender.Text = user.Gender;
            Email.Text = user.Email;
            Phone.Text = Convert.ToString(user.PhoneNumber);
            Dob.Text = Convert.ToString(user.Dob);
        }
    }
}