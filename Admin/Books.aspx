<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Books.aspx.cs" Inherits="UtensilsRentalSystem.Admin.Books" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Booking Details</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

.container-wrapper{
    padding:30px;
    background:#f4f6f9;
    min-height:100vh;
}

.booking-card{
    background:#ffffff;
    border-radius:15px;
    padding:30px;
    box-shadow:0 10px 30px rgba(0,0,0,0.08);
}

.page-title{
    font-weight:700;
    color:#1e3c72;
}

.info-card{
    background:#f8f9fa;
    padding:20px;
    border-radius:10px;
}

.info-card p{
    margin-bottom:8px;
}

.section-title{
    font-weight:600;
    margin-top:25px;
    margin-bottom:15px;
    color:#0d6efd;
    border-left:4px solid #0d6efd;
    padding-left:10px;
}

.table thead{
    background:#0d6efd;
    color:white;
}

.total-box{
    background:#eaf7ee;
    padding:15px;
    border-radius:10px;
    font-size:18px;
    font-weight:600;
    color:#28a745;
    text-align:right;
}

.btn-custom{
    min-width:150px;
    font-weight:500;
}

</style>

</head>

<body>

<div class="container-wrapper">

<div class="booking-card">

<div class="d-flex justify-content-between align-items-center mb-3">
    <h3 class="page-title">📋 Booking Details</h3>
    <a href="#" class="btn btn-outline-secondary btn-sm">← Back</a>
</div>

<!-- CUSTOMER INFO -->
<div class="row info-card">
    <div class="col-md-6">
        <p><strong>Booking ID:</strong> B101</p>
        <p><strong>Customer:</strong> Rahul Sharma</p>
        <p><strong>Mobile:</strong> 9876543210</p>
        <p><strong>Address:</strong> Pune, Maharashtra</p>
    </div>

    <div class="col-md-6">
        <p><strong>Event Date:</strong> 20 Feb 2026</p>
        <p><strong>Return Date:</strong> 22 Feb 2026</p>
        <p><strong>Total Days:</strong> 2</p>
        <p><strong>Status:</strong> 
            <span class="badge bg-warning text-dark">Pending</span>
        </p>
    </div>
</div>

<!-- BOOKED UTENSILS -->
<h5 class="section-title">Booked Utensils</h5>

<div class="table-responsive">

<table class="table table-bordered text-center align-middle">

<thead>
<tr>
<th>Item Name</th>
<th>Quantity</th>
<th>Rent / Day</th>
<th>Total</th>
</tr>
</thead>

<tbody>

<tr>
<td>Steel Plate</td>
<td>200</td>
<td>₹5</td>
<td>₹1000</td>
</tr>

<tr>
<td>Water Glass</td>
<td>100</td>
<td>₹3</td>
<td>₹300</td>
</tr>

<tr>
<td>Serving Bowl</td>
<td>50</td>
<td>₹8</td>
<td>₹400</td>
</tr>

<tr>
<td>Plastic Chair</td>
<td>150</td>
<td>₹10</td>
<td>₹1500</td>
</tr>

</tbody>

</table>

</div>

<div class="total-box mt-3">
    Grand Total: ₹3200
</div>

<!-- EXTRA CHARGES -->
<h5 class="section-title">Damage / Extra Charges</h5>

<div class="row mt-3">
    <div class="col-md-6">
        <label class="form-label">Damaged Items Charge</label>
        <input type="text" class="form-control" placeholder="Enter damage amount">
    </div>

    <div class="col-md-6">
        <label class="form-label">Late Return Fine</label>
        <input type="text" class="form-control" placeholder="Enter late fine">
    </div>
</div>

<!-- ACTION BUTTONS -->
<div class="text-end mt-4">
    <button class="btn btn-success btn-custom me-2">
        Approve & Dispatch
    </button>

    <button class="btn btn-primary btn-custom me-2">
        Mark as Returned
    </button>

    <button class="btn btn-danger btn-custom">
        Cancel Booking
    </button>
</div>

</div>

</div>

</body>
</html>
