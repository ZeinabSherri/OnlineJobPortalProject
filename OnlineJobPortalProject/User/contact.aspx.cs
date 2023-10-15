using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//import the library that allows the connection of database
using System.Data.SqlClient;
using System.Configuration; 

namespace OnlineJobPortalProject.User
{
    public partial class contact : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        string str = ConfigurationManager.ConnectionStrings["cs"].ConnectionString;

        //Configuration manager class provides a way to access and manage configuration settings from within your code.
        //In this case, it used to retreive a connection string from CS collection of the config file.
        //Storing the CS in a variable helps it to be managed separately form the code 
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection(str);
                string query = @"Insert into Contact values (@Name,@Email, @Subject, @Message)";
                cmd =  new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Name", name.Value.Trim());
                cmd.Parameters.AddWithValue("@Email", email.Value.Trim());
                cmd.Parameters.AddWithValue("@Subject", subject.Value.Trim());
                cmd.Parameters.AddWithValue("@Message", message.Value.Trim());
                con.Open();
               int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    LblMsg.Visible = true;
                    LblMsg.Text = "Thank you for reaching us out. We will look into your inquery!";
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
            catch(Exception ex)
            {
                Response.Write("<script>alert('" +ex.Message+ "');</script>");
            }
            finally
            {
                con.Close();
            }
        }
        private void clear()
        {
            name.Value = string.Empty;
            email.Value = String.Empty;
            subject.Value = string.Empty;
            message.Value = String.Empty;


        }
    }
}