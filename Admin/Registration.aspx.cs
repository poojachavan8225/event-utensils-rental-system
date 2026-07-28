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
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            con.Open();

            string query = "INSERT INTO Users (Name, Email, Password, Phone, Role) VALUES (@Name,@Email,@Password,@Phone,'Customer')";

            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Password", txtPassword.Text);
            cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);

            try
            {
                cmd.ExecuteNonQuery();
                lblMsg.Text = "Registration Successful!";
            }
            catch
            {
                lblMsg.Text = "Email already exists!";
            }

            con.Close();
        }
    }
}