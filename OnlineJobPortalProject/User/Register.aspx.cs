using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices;
using System.Linq;
using System.Web;
using System.Web.Management;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace OnlineJobPortalProject.User
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
         


            try
            {
                con = new SqlConnection(str);
                string query = @"Insert into [User] (Username, Password, Name,Address, Mobile, Email, Country) values (@Username, @Password, @Name, @Address, @Mobile, @Email, @Country)";
                cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@Password", txtConfirmPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@Name", txtFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@Mobile", txtMobileNumber.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@Country", ddlCountry.SelectedValue);
                con.Open();
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    LblMsg.Visible = true;
                    LblMsg.Text = "Registered Successfull";
                    LblMsg.CssClass = "alert alert-success";
                    clear();

                }
                else
                {
                    LblMsg.Visible = true;
                    LblMsg.Text = "Sorry, cannot save record right now, please try again later!";
                    LblMsg.CssClass = "alert alert-warning";

                }
            }
            catch (SqlException ex)
            { //this exception or validation is done for the username unique key inorder
               //prevent the user from entering a username already stored in database to prevent duplication
                if (ex.Message.Contains("Violation of unique KEY constraint"))
                {
                    LblMsg.Visible = true;
                    LblMsg.Text = "Sorry, the user " + "<b>" + txtUserName.Text.Trim() + "</b> already exists, try another one.";
                    LblMsg.CssClass = "alert alert-warning";
                }
                else
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }
  
          private  void clear()
            {
                txtUserName.Text = String.Empty;
                txtAddress.Text = String.Empty;
                txtEmail.Text = String.Empty;
                txtMobileNumber.Text = String.Empty;
                txtFullName.Text = String.Empty;
                txtPassword.Text = String.Empty;
            txtConfirmPassword.Text = String.Empty;
            ddlCountry.ClearSelection();
        }

       
    }
}