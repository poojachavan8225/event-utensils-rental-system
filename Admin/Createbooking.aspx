<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="Createbooking.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <!DOCTYPE html>

<title>Create Booking</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>

<style>
body{background:#f4f6f9;}
.card{border-radius:15px;}
.section-title{
    font-weight:600;
    margin-bottom:15px;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container mt-5">
<h3>Create New Booking</h3>

<div class="card p-4 shadow mt-3">

<div class="row mb-3">
<div class="col-md-4">
<label>Customer</label>
<select class="form-control">
<option>Select Customer</option>
<option>Rahul Patil</option>
</select>
</div>

<div class="col-md-4">
<label>Start Date</label>
<input type="date" class="form-control">
</div>

<div class="col-md-4">
<label>End Date</label>
<input type="date" class="form-control">
</div>
</div>

<hr>

<h5 class="section-title">Add Items</h5>

<div class="row mb-3">
<div class="col-md-4">
<select class="form-control">
<option>Select Item</option>
<option>Plates</option>
<option>Spoons</option>
<option>Chairs</option>
</select>
</div>

<div class="col-md-3">
<input type="number" class="form-control" placeholder="Quantity">
</div>

<div class="col-md-3">
<button class="btn btn-secondary w-100">Add Item</button>
</div>
</div>

<table class="table table-bordered mt-3">
<thead class="table-dark">
<tr>
<th>Item</th>
<th>Quantity</th>
<th>Rent/Day</th>
<th>Total</th>
</tr>
</thead>
<tbody>
<tr>
<td>Plates</td>
<td>100</td>
<td>₹5</td>
<td>₹1000</td>
</tr>
</tbody>
</table>

<h5 class="mt-3">Total Rent: ₹1000</h5>

<div class="row mt-3">
<div class="col-md-4">
<input type="number" class="form-control" placeholder="Advance Payment">
</div>
</div>

<button class="btn btn-success mt-3">Save Booking</button>

</div>
</div>
</asp:Content>
