using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UtensilsRentalSystem.Admin
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(
            ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString);

        int bookingID;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                bookingID = Convert.ToInt32(Request.QueryString["id"]);

                if (!IsPostBack)
                {
                    LoadBooking();
                    LoadItems();
                }
            }
        }

        void LoadBooking()
        {
            SqlCommand cmd = new SqlCommand("SELECT * FROM Bookings WHERE BookingID=@id", con);
            cmd.Parameters.AddWithValue("@id", bookingID);

            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr != null && dr.Read())
            {
                lblID.Text = dr["BookingID"]?.ToString() ?? "-";
                lblName.Text = dr["CustomerName"]?.ToString() ?? "-";
                lblMobile.Text = dr["Mobile"]?.ToString() ?? "-";
                lblAddress.Text = dr["Address"]?.ToString() ?? "-";

                DateTime start = dr["StartDate"] != DBNull.Value ? Convert.ToDateTime(dr["StartDate"]) : DateTime.Now;
                DateTime end = dr["EndDate"] != DBNull.Value ? Convert.ToDateTime(dr["EndDate"]) : DateTime.Now;

                lblStart.Text = start.ToString("dd MMM yyyy");
                lblEnd.Text = end.ToString("dd MMM yyyy");
                lblDays.Text = (end - start).Days.ToString();

                string status = dr["Status"]?.ToString() ?? "Pending";
                lblStatus.Text = status;

                if (status == "Pending")
                    lblStatus.CssClass = "badge bg-warning text-dark";
                else if (status == "Approved")
                    lblStatus.CssClass = "badge bg-success";
                else if (status == "Returned")
                    lblStatus.CssClass = "badge bg-primary";
                else
                    lblStatus.CssClass = "badge bg-danger";
            }
            else
            {
                lblID.Text = "Not Found";
                lblName.Text = "-";
                lblMobile.Text = "-";
                lblAddress.Text = "-";
            }

            con.Close();
        }

        void LoadItems()
        {
            DataTable dt = new DataTable();

            dt.Columns.Add("ItemName");
            dt.Columns.Add("Quantity");
            dt.Columns.Add("Price");
            dt.Columns.Add("Total");

            // 🔹 Temporary sample data
            dt.Rows.Add("Steel Plate", 200, 5, 1000);
            dt.Rows.Add("Water Glass", 100, 3, 300);
            dt.Rows.Add("Serving Bowl", 50, 8, 400);
            dt.Rows.Add("Big Cooking Vessel", 10, 50, 500);

            GridView1.DataSource = dt;
            GridView1.DataBind();

            // 🔹 Calculate total
            decimal total = 0;
            foreach (DataRow row in dt.Rows)
            {
                total += Convert.ToDecimal(row["Total"]);
            }

            lblTotal.Text = total.ToString();
        }

        void UpdateStatus(string status)
        {
            SqlCommand cmd = new SqlCommand("UPDATE Bookings SET Status=@s WHERE BookingID=@id", con);
            cmd.Parameters.AddWithValue("@s", status);
            cmd.Parameters.AddWithValue("@id", bookingID);

            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            LoadBooking();
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            UpdateStatus("Approved");
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            UpdateStatus("Returned");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            UpdateStatus("Cancelled");
        }
    }
}