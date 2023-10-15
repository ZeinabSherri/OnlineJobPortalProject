using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortalProject.User
{
    public partial class UserMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session[" User "] != null)
            {
                lbRegisterorProfile.Text = "Profile";
                lbLoginorLogout.Text = "Logout";
            }
            else
            {
                lbRegisterorProfile.Text = "Register";
                lbLoginorLogout.Text = "Login";
            }
        }

        protected void lbRegisterorProfile_Click(object sender, EventArgs e)
        {
            if(lbRegisterorProfile.Text == "Profile")
            {
                Response.Redirect("Profile.aspx");
            }
            else
            {
                Response.Redirect("Register.aspx");
            }
        }

        protected void lbLoginorLogout_Click(object sender, EventArgs e)
        {
            if (lbLoginorLogout.Text == "Login")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }
    }
}