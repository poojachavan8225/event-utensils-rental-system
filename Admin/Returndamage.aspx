<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="Returndamage.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>

<title>Return & Damage</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>

<style>
body{background:#f4f6f9;}
.card{border-radius:15px;}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-5">
<h3>Return & Damage Entry</h3>

<div class="card p-4 shadow mt-3">

<div class="row mb-3">
<div class="col-md-4">
<label>Select Booking</label>
<select class="form-control">
<option>Booking #101 - Rahul Patil</option>
</select>
</div>
</div>

<table class="table table-bordered">
<thead class="table-dark">
<tr>
<th>Item</th>
<th>Rented Qty</th>
<th>Damaged Qty</th>
</tr>
</thead>

<tbody>
<tr>
<td>Plates</td>
<td>100</td>
<td><input type="number" class="form-control" placeholder="Enter damaged qty"></td>
</tr>
</tbody>

</table>

<h5 class="mt-3">Damage Amount: ₹250</h5>
<h5>Final Payable Amount: ₹1750</h5>

<button class="btn btn-danger mt-3">Complete Order</button>

</div>
</div>
</asp:Content>
