using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UtensilsRentalSystem.Admin
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

        string imagePath = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // EDIT MODE
                if (Request.QueryString["id"] != null)
                {
                    hiddenID.Value = Request.QueryString["id"];
                    LoadData();
                }
            }
        }

        // 🔍 LOAD DATA FOR EDIT
        void LoadData()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Utensils WHERE UtensilID=@id", con);
            cmd.Parameters.AddWithValue("@id", hiddenID.Value);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                ddlName.SelectedValue = dr["Name"].ToString();
                ddlCategory.SelectedValue = dr["Category"].ToString();
                ddlMaterial.SelectedValue = dr["Material"].ToString();
                txtPrice.Text = dr["Price"].ToString();
                txtQty.Text = dr["Quantity"].ToString();
                imagePath = dr["ImagePath"].ToString();
            }

            con.Close();
        }

        // 💾 SAVE (INSERT + UPDATE)
        protected void btnSave_Click(object sender, EventArgs e)
        {
            // IMAGE UPLOAD
            if (fileImage.HasFile)
            {
                string folder = Server.MapPath("~/Images/");
                string filename = Guid.NewGuid().ToString() + Path.GetExtension(fileImage.FileName);
                fileImage.SaveAs(folder + filename);
                imagePath = "Images/" + filename;
            }

            con.Open();

            if (hiddenID.Value != "")
            {
                // UPDATE
                SqlCommand cmd = new SqlCommand("UPDATE Utensils SET Name=@n, Category=@c, Material=@m, Price=@p, Quantity=@q, Status=@s, ImagePath=@img WHERE UtensilID=@id", con);

                cmd.Parameters.AddWithValue("@id", hiddenID.Value);
                cmd.Parameters.AddWithValue("@n", ddlName.SelectedValue);
                cmd.Parameters.AddWithValue("@c", ddlCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@m", ddlMaterial.SelectedValue);
                cmd.Parameters.AddWithValue("@p", txtPrice.Text);
                cmd.Parameters.AddWithValue("@q", txtQty.Text);
                cmd.Parameters.AddWithValue("@s", Convert.ToInt32(txtQty.Text) > 0 ? "Available" : "Out of Stock");
                cmd.Parameters.AddWithValue("@img", imagePath);

                cmd.ExecuteNonQuery();
            }
            else
            {
                // INSERT
                SqlCommand cmd = new SqlCommand("INSERT INTO Utensils(Name,Category,Material,Price,Quantity,Status,ImagePath) VALUES(@n,@c,@m,@p,@q,@s,@img)", con);

                cmd.Parameters.AddWithValue("@n", ddlName.SelectedValue);
                cmd.Parameters.AddWithValue("@c", ddlCategory.SelectedValue);
                cmd.Parameters.AddWithValue("@m", ddlMaterial.SelectedValue);
                cmd.Parameters.AddWithValue("@p", txtPrice.Text);
                cmd.Parameters.AddWithValue("@q", txtQty.Text);
                cmd.Parameters.AddWithValue("@s", Convert.ToInt32(txtQty.Text) > 0 ? "Available" : "Out of Stock");
                cmd.Parameters.AddWithValue("@img", imagePath);

                cmd.ExecuteNonQuery();
            }

            con.Close();

            Response.Redirect("Items.aspx");
        }
    }
}