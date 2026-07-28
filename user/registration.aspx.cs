using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UtensilsRentalSystem.user
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
            ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text != txtConfirm.Text)
            {
                Response.Write("<script>alert('Password not match')</script>");
                return;
            }

            SqlCommand cmd = new SqlCommand(
                "INSERT INTO Customer (Name, Mobile, Email, Address, Password) VALUES (@n,@m,@e,@a,@p)", con);

            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@m", txtMobile.Text);
            cmd.Parameters.AddWithValue("@e", txtEmail.Text);
            cmd.Parameters.AddWithValue("@a", txtAddress.Text);
            cmd.Parameters.AddWithValue("@p", txtPassword.Text);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            Response.Write("<script>alert('Registration Successful'); window.location='userlogin.aspx';</script>");
        }
    }
}