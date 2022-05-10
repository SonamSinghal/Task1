using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Task1.Model;

namespace Task1
{

    public partial class WebForm3 : System.Web.UI.Page
    {

        UserModelContext connection = new UserModelContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Delete_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            String username = (item.FindControl("Email") as Label).Text ;
            //var user = connection.Database.SqlQuery<UserModel>("Select * from UserModels where Email={0};", username).FirstOrDefault();
            var user = connection.UserModel.FirstOrDefault(x => x.Email == username);
            
            Membership.DeleteUser(username);
            connection.UserModel.Remove(user);
            connection.SaveChanges();
            Response.Redirect("AdminDashboard.aspx");


        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as Button).NamingContainer as RepeaterItem;

            String username = (item.FindControl("Email") as Label).Text;
            Response.Redirect(String.Format("Update.aspx?user={0}", username)); ;
        }
    }
}