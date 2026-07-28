<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="mb-4">Manage Categories</h3>

<div class="card shadow p-4 mb-4">

<h5 class="mb-3">Add New Category</h5>

<div class="row">

<div class="col-md-4">
<label class="form-label">Category Name</label>
<input type="text" class="form-control" placeholder="Enter Category Name">
</div>

<div class="col-md-4">
<label class="form-label">Category Type</label>

<select class="form-select">
<option>Select Type</option>
<option>Cooking Utensils</option>
<option>Serving Items</option>
<option>Seating Items</option>
<option>Decoration Items</option>
</select>

</div>

<div class="col-md-4">
<label class="form-label">Status</label>

<select class="form-select">
<option>Active</option>
<option>Inactive</option>
</select>

</div>

</div>

<div class="mt-3">

<button class="btn btn-success">Add Category</button>

</div>

</div>

<!-- Category List -->

<div class="card shadow p-4">

<h5 class="mb-3">Category List</h5>

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>
<th>ID</th>
<th>Category Name</th>
<th>Type</th>
<th>Status</th>
<th>Action</th>
</tr>

</thead>

<tbody>

<tr>
<td>1</td>
<td>Cooking Vessels</td>
<td>Cooking Utensils</td>
<td><span class="badge bg-success">Active</span></td>

<td>
<button class="btn btn-warning btn-sm">Edit</button>
<button class="btn btn-danger btn-sm">Delete</button>
</td>

</tr>

<tr>
<td>2</td>
<td>Plastic Chairs</td>
<td>Seating Items</td>
<td><span class="badge bg-success">Active</span></td>

<td>
<button class="btn btn-warning btn-sm">Edit</button>
<button class="btn btn-danger btn-sm">Delete</button>
</td>

</tr>

</tbody>

</table>

</div>
</asp:Content>
