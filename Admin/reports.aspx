<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="reports.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="mb-4">Reports & Analytics</h3>

<!-- Filters -->

<div class="card shadow p-4 mb-4">

<h5 class="mb-3">Filter Reports</h5>

<div class="row">

<div class="col-md-3">

<label class="form-label">From Date</label>

<input type="date" class="form-control">

</div>

<div class="col-md-3">

<label class="form-label">To Date</label>

<input type="date" class="form-control">

</div>

<div class="col-md-3">

<label class="form-label">Category</label>

<select class="form-select">

<option>All Categories</option>
<option>Cooking Utensils</option>
<option>Serving Items</option>
<option>Seating Items</option>

</select>

</div>

<div class="col-md-3 d-flex align-items-end">

<button class="btn btn-primary me-2">Generate Report</button>

<button class="btn btn-success">Export</button>

</div>

</div>

</div>

<!-- Report Table -->

<div class="card shadow p-4">

<h5 class="mb-3">Report Results</h5>

<table class="table table-bordered table-striped">

<thead class="table-dark">

<tr>

<th>Order ID</th>
<th>Customer</th>
<th>Item</th>
<th>Category</th>
<th>Date</th>
<th>Amount</th>

</tr>

</thead>

<tbody>

<tr>

<td>101</td>
<td>Rahul Patil</td>
<td>Plastic Chairs</td>
<td>Seating Items</td>
<td>10 Mar 2026</td>
<td>₹500</td>

</tr>

<tr>

<td>102</td>
<td>Sneha More</td>
<td>Cooking Vessel</td>
<td>Cooking Utensils</td>
<td>11 Mar 2026</td>
<td>₹1200</td>

</tr>

</tbody>

</table>

<hr>

<div class="text-end">

<h5>Total Revenue : <span class="text-success">₹1700</span></h5>

</div>

</div>
</asp:Content>
