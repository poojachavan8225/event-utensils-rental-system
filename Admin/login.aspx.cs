using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UtensilsRentalSystem.Admin
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con.Open();

            string query = "SELECT * FROM Users WHERE Email=@Email AND Password=@Password";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.HasRows)
            {
                lblMsg.Text = "Login Successful!";
                Response.Redirect("dash1.aspx"); // create this page
            }
            else
            {
                lblMsg.Text = "Invalid Email or Password!";
            }

            con.Close();
        }
    }
}
    