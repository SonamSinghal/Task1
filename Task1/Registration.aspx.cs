using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Task1.Model;

namespace Task1
{
    public partial class _Default : Page
    {

        UserModelContext connection = new UserModelContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            MembershipCreateStatus createStatus;
            
            MembershipUser user = Membership.CreateUser(Email.Text, Password.Text, Email.Text, SecurityQuestion.Text, SecurityAnswer.Text, true, out createStatus);

            switch (createStatus)
            {
                case MembershipCreateStatus.Success:
                    {
                        InvalidMsg.Text = String.Empty;
                        ValidMsg.Text = "The account was created Successfully";
                        Roles.AddUserToRole(Email.Text, "Member");

                        UserModel model = new UserModel()
                        {
                            FirstName = FirstName.Text,
                            LastName = LastName.Text,
                            Email = Email.Text,
                            PhoneNumber = Convert.ToInt64(Phone.Text),
                            Dob = Convert.ToDateTime(Dob.Text),
                            Gender = Gender.SelectedValue,
                            Role = "Member"
                        };

                        connection.UserModel.Add(model);
                        connection.SaveChanges();

                        FirstName.Text = String.Empty;
                        LastName.Text = String.Empty;
                        Email.Text = String.Empty;
                        Password.Text = String.Empty;
                        Phone.Text = String.Empty;
                        Dob.Text = String.Empty;
                        SecurityQuestion.Text = String.Empty;
                        SecurityAnswer.Text = String.Empty;

                        Response.Redirect("Login.aspx");

                        break;
                    }
                case MembershipCreateStatus.DuplicateUserName:
                    {
                        InvalidMsg.ForeColor = Color.Red;
                        InvalidMsg.Text = "The username already exists";
                        break;
                    }
                case MembershipCreateStatus.InvalidEmail:
                    {
                        InvalidMsg.ForeColor = Color.Red;
                        InvalidMsg.Text = "The email is invalid";
                        break;
                    }

                case MembershipCreateStatus.InvalidPassword:
                    {
                        InvalidMsg.ForeColor = Color.Red;
                        InvalidMsg.Text = "The password is invalid!";
                        break;
                    }

                default:
                    {
                        InvalidMsg.ForeColor = Color.Red;
                        InvalidMsg.Text = "There was an unknown error; the user account was NOT created.";
                        break;
                    }
            }

        }
    }
}