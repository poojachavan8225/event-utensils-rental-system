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
    public partial class userlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            using (SqlConnection con = new SqlConnection(
                ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString))
            {
                SqlCommand cmd = new SqlCommand(
                    "SELECT * FROM Customer WHERE Email=@e AND Password=@p", con);

                cmd.Parameters.AddWithValue("@e", txtEmail.Text);
                cmd.Parameters.AddWithValue("@p", txtPassword.Text);

                con.Open();

                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Session["UserID"] = dr["CustomerID"].ToString();
                    Session["UserName"] = dr["Name"].ToString();

                    dr.Close(); // IMPORTANT

                    Response.Write("<script>alert('Login Successful'); window.location='dashboard.aspx';</script>");
                }
                else
                {
                    dr.Close(); // ALSO CLOSE HERE
                    Response.Write("<script>alert('Invalid Email or Password')</script>");
                }
            } // connection auto closed here ✅
        }
    }
}

