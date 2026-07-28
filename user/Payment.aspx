<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="UtensilsRentalSystem.user.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
body{
    background:linear-gradient(135deg,#667eea,#764ba2);
}

.payment-card{
    background:white;
    border-radius:20px;
    padding:30px;
    box-shadow:0 10px 30px rgba(0,0,0,0.2);
}

.section-title{
    font-weight:600;
    color:#333;
    margin-bottom:15px;
}

.form-control{
    border-radius:10px;
}

.payment-method{
    border:1px solid #ddd;
    border-radius:10px;
    padding:10px;
    cursor:pointer;
    transition:0.3s;
}

.payment-method:hover{
    background:#f1f1f1;
}

.total-box{
    background:#eaf7ee;
    padding:15px;
    border-radius:10px;
    font-weight:600;
    font-size:18px;
    color:#28a745;
    text-align:right;
}

.btn-pay{
    border-radius:30px;
    padding:10px;
    font-size:18px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <div class="container py-5">

<div class="row justify-content-center">

<div class="col-md-8">

<div class="payment-card">

<h3 class="text-center mb-4">💳 Payment</h3>

<!-- BILL SUMMARY -->
<h5 class="section-title">Order Summary</h5>

<table class="table table-bordered text-center">
<thead class="table-dark">
<tr>
<th>Item</th>
<th>Qty</th>
<th>Price</th>
<th>Total</th>
</tr>
</thead>

<tbody>
<tr>
<td>Steel Plate</td>
<td>100</td>
<td>₹5</td>
<td>₹500</td>
</tr>

<tr>
<td>Glass</td>
<td>50</td>
<td>₹3</td>
<td>₹150</td>
</tr>
</tbody>
</table>

<div class="total-box mb-4">
Total Amount: ₹650
</div>

<!-- PAYMENT METHOD -->
<h5 class="section-title">Select Payment Method</h5>

<div class="mb-3">
<div class="payment-method mb-2">
<input type="radio" name="payment" checked> Cash on Delivery
</div>

<div class="payment-method mb-2">
<input type="radio" name="payment"> UPI
</div>

<div class="payment-method mb-2">
<input type="radio" name="payment"> Credit / Debit Card
</div>
</div>

<!-- CARD DETAILS -->
<h5 class="section-title">Card Details</h5>

<div class="row">
<div class="col-md-6 mb-3">
<input type="text" class="form-control" placeholder="Card Number">
</div>

<div class="col-md-3 mb-3">
<input type="text" class="form-control" placeholder="MM/YY">
</div>

<div class="col-md-3 mb-3">
<input type="text" class="form-control" placeholder="CVV">
</div>
</div>

<div class="mb-3">
<input type="text" class="form-control" placeholder="Card Holder Name">
</div>

<!-- PAY BUTTON -->
<div class="d-grid">
<button class="btn btn-success btn-pay">
    Pay Now ₹650
</button>
</div>

</div>

</div>

</div>

</div>
</asp:Content>
