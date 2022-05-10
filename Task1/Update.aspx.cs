using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Task1.Model;

namespace Task1
{
    public partial class WebForm4 : System.Web.UI.Page
    {

        UserModelContext connection = new UserModelContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["user"] != null)
                {
                    string username = Request.QueryString["user"];
                    var user = connection.UserModel.FirstOrDefault(x => x.Email == username);

                    if (user != null)
                    {
                        FirstName.Text = user.FirstName;
                        LastName.Text = user.LastName;
                        Gender.SelectedValue = user.Gender;
                        Phone.Text = Convert.ToString(user.PhoneNumber);
                        Dob.Text = user.Dob.ToString("yyyy-MM-dd");
                    }


                }
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["user"] != null)
            {
                string username = Request.QueryString["user"];
                var user = connection.UserModel.FirstOrDefault(x => x.Email == username);


                if (user != null)
                {
                    user.FirstName = FirstName.Text; 
                    user.LastName = LastName.Text;
                    user.Gender = Gender.SelectedValue;
                    user.PhoneNumber = Convert.ToInt64(Phone.Text);
                    user.Dob = Convert.ToDateTime(Dob.Text);

                    connection.SaveChanges();
                    Response.Redirect("AdminDashboard.aspx");
                }
            }
        }

        //protected string LastName_TextChanged(object sender, EventArgs e)
        //{
        //    TextBox textBox = sender as TextBox;

        //}
    }
}