<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="UtensilsRentalSystem.user.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="mb-4">Checkout</h3>

<div class="row">

<div class="col-md-8">

<div class="card shadow">

<div class="card-body">

<h5>Event Details</h5>

<div class="mb-3">
<label>Full Name</label>
<input type="text" class="form-control">
</div>

<div class="mb-3">
<label>Mobile Number</label>
<input type="text" class="form-control">
</div>

<div class="mb-3">
<label>Event Address</label>
<textarea class="form-control"></textarea>
</div>

<div class="mb-3">
<label>Event Date</label>
<input type="date" class="form-control">
</div>

<div class="mb-3">
<label>Return Date</label>
<input type="date" class="form-control">
</div>

<div class="mb-3">
<label>Payment Method</label>

<select class="form-control">
<option>Cash On Delivery</option>
<option>UPI</option>
<option>Online Payment</option>
</select>

</div>

<a href="ordersuccess.aspx" class="btn btn-success w-100">
Place Order
</a>

</div>

</div>

</div>

<!-- Order Summary -->

<div class="col-md-4">

<div class="card shadow">

<div class="card-body">

<h5>Order Summary</h5>

<hr>

<p>Steel Plates (50)</p>

<p>Plastic Chairs (20)</p>

<p>Floor Mats (5)</p>

<hr>

<h5>Total Price: ₹800</h5>

</div>

</div>

</div>

</div>
</asp:Content>
