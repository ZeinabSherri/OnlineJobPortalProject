using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineJobPortalProject.User
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;
        SqlDataReader reader;

        string username, password = string.Empty;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try { 
            
                if (ddlLoginType.SelectedValue == " Admin ")
                {
                    username = ConfigurationManager.AppSettings["username"];
                    password = ConfigurationManager.AppSettings["password"];

                    if(username == txtUserName.Text.Trim() && password == txtPassword.Text.Trim())
                    {
                        Session[" Admin "] = username;
                        Response.Redirect("../Admin/Dashboard.aspx", false);
                    
                    }
                    else
                    {
                        ShowErrorMsg("Admin");
                    }
                }
                else
                {
                    con = new SqlConnection(str);
                    string query = @"Select * from [User] where Username=@Username and Password=@Password";
                    cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim());

                    con.Open();
                    reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        //assigns the value of the "Password" column from the data reader to a session variable named "User."
                        //It stores the password as a string in the user's session
                        Session[" User "] = reader["Username"].ToString();
                        Session[" User "] = reader["Password"].ToString();
                        Response.Redirect("Default.aspx", false);
                    }
                    else
                    {
                        ShowErrorMsg(" User ");
                    }
                    con.Close();
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                con.Close();
            }
        }
        private void ShowErrorMsg(string userType)
        {
            LblMsg.Visible = true;
            LblMsg.Text =  "<b>" + userType + "</b> credentials are incorrect";
            LblMsg.CssClass = "alert alert-warning";

        }
    }
}