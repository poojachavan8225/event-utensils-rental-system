<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Payment Management</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background:#f4f6f9;
    font-family:'Segoe UI',sans-serif;
}

.page-header{
    background: linear-gradient(135deg,#28a745,#20c997);
    color:white;
    padding:20px;
    border-radius:15px;
}

.card-box{
    border:none;
    border-radius:15px;
    box-shadow:0 5px 20px rgba(0,0,0,0.08);
}

.table th{
    background:#343a40;
    color:white;
    text-align:center;
}

.table td{
    text-align:center;
    vertical-align:middle;
}

.badge{
    font-size:13px;
    padding:6px 10px;
}

.btn-sm{
    padding:5px 10px;
    font-size:13px;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container p-4">

    <!-- HEADER -->
    <div class="page-header mb-4 d-flex justify-content-between align-items-center">
        <h4>💳 Payment Management</h4>
        <span>Total Revenue: ₹15,600</span>
    </div>

    <!-- TABLE -->
    <div class="card card-box p-3">

        <div class="table-responsive">

        <table class="table table-bordered table-hover align-middle">

            <thead>
                <tr>
                    <th>Payment ID</th>
                    <th>Customer</th>
                    <th>Amount</th>
                    <th>Date</th>
                    <th>Method</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>

            <tbody>

                <tr>
                    <td>P101</td>
                    <td>Rahul patil</td>
                    <td>₹2600</td>
                    <td>20 Feb 2026</td>
                    <td>UPI</td>
                    <td><span class="badge bg-warning text-dark">Pending</span></td>
                    <td>
                        <button class="btn btn-success btn-sm">Approve</button>
                        <button class="btn btn-danger btn-sm">Reject</button>
                    </td>
                </tr>

                <tr>
                    <td>P102</td>
                    <td>Aditya Chavan</td>
                    <td>₹1800</td>
                    <td>18 Feb 2026</td>
                    <td>Cash</td>
                    <td><span class="badge bg-success">Paid</span></td>
                    <td>
                        <button class="btn btn-secondary btn-sm">View</button>
                    </td>
                </tr>

                <tr>
                    <td>P103</td>
                    <td>Sakshi Chavan</td>
                    <td>₹3200</td>
                    <td>15 Feb 2026</td>
                    <td>Card</td>
                    <td><span class="badge bg-danger">Failed</span></td>
                    <td>
                        <button class="btn btn-success btn-sm">Retry</button>
                        <button class="btn btn-danger btn-sm">Delete</button>
                    </td>
                </tr>

                <tr>
                    <td>P104</td>
                    <td>Priya Chavan</td>
                    <td>₹4000</td>
                    <td>10 Feb 2026</td>
                    <td>UPI</td>
                    <td><span class="badge bg-success">Paid</span></td>
                    <td>
                        <button class="btn btn-secondary btn-sm">View</button>
                    </td>
                </tr>

            </tbody>

        </table>

        </div>

    </div>

</div>


</asp:Content>