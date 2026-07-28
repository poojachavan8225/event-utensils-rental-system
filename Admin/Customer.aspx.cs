using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UtensilsRentalSystem.Admin
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        void LoadData()
        {
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Customers", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        void ClearFields()
        {
            txtID.Text = "";
            txtName.Text = "";
            txtMobile.Text = "";
            txtAddress.Text = "";
        }

        // 🔍 AUTO FETCH BY ID
        protected void txtID_TextChanged(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Customers WHERE CustomerID=@id", con);
            cmd.Parameters.AddWithValue("@id", txtID.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                txtName.Text = dr["Name"].ToString();
                txtMobile.Text = dr["Mobile"].ToString();
                txtAddress.Text = dr["Address"].ToString();
            }
            else
            {
                txtName.Text = "";
                txtMobile.Text = "";
                txtAddress.Text = "";
            }

            con.Close();
        }

        // INSERT
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Customers(Name,Mobile,Address) VALUES(@n,@m,@a)", con);
            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@m", txtMobile.Text);
            cmd.Parameters.AddWithValue("@a", txtAddress.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            LoadData();
            ClearFields();
        }

        // UPDATE BY ID
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE Customers SET Name=@n, Mobile=@m, Address=@a WHERE CustomerID=@id", con);
            cmd.Parameters.AddWithValue("@id", txtID.Text);
            cmd.Parameters.AddWithValue("@n", txtName.Text);
            cmd.Parameters.AddWithValue("@m", txtMobile.Text);
            cmd.Parameters.AddWithValue("@a", txtAddress.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            LoadData();
            ClearFields();
        }

        // DELETE BY ID OR SELECT
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Customers WHERE CustomerID=@id", con);
            cmd.Parameters.AddWithValue("@id", txtID.Text);
            cmd.ExecuteNonQuery();
            con.Close();

            LoadData();
            ClearFields();
        }

        // GRID SELECT
        
        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearFields();
        }
    }
}