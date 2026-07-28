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
    public partial class WebForm2 : System.Web.UI.Page
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
            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Utensils", con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            // DELETE
            if (e.CommandName == "DeleteRow")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("DELETE FROM Utensils WHERE UtensilID=@id", con);
                cmd.Parameters.AddWithValue("@id", id);
                cmd.ExecuteNonQuery();
                con.Close();

                LoadData();
            }

            // EDIT → Redirect to Add Page with ID
            if (e.CommandName == "EditRow")
            {
                Response.Redirect("addutensils.aspx?id=" + id);
            }
        }
    }
}