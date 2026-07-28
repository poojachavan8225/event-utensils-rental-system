<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="dash1.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  <head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Admin Dashboard - Event Rental System</title>

<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">

<style>

body{
background:#f4f6f9;
font-family: 'Segoe UI', sans-serif;
}

/* Sidebar */

.sidebar{
height:100vh;
background:#1e293b;
color:white;
position:fixed;
width:250px;
padding-top:20px;
}

.sidebar h3{
text-align:center;
margin-bottom:30px;
}

.sidebar a{
display:block;
color:white;
padding:12px 20px;
text-decoration:none;
transition:0.3s;
}

.sidebar a:hover{
background:#334155;
padding-left:25px;
}

.sidebar i{
margin-right:10px;
}

/* Main content */

.main{
margin-left:250px;
padding:20px;
}

/* Navbar */

.topbar{
background:white;
padding:10px 20px;
border-radius:10px;
box-shadow:0 2px 10px rgba(0,0,0,0.1);
}

/* Cards */
.dashboard-card{
    border:none;
    border-radius:15px;
    color:white;
    padding:20px;
    transition:0.3s;
    box-shadow:0 5px 15px rgba(0,0,0,0.2);
}

/* Hover Effect */
.dashboard-card:hover{
    transform: translateY(-5px);
    box-shadow:0 10px 25px rgba(0,0,0,0.3);
}

/* Gradient Colors */

.card-users{
    background: linear-gradient(135deg, #4facfe, #00f2fe);
}

.card-orders{
    background: linear-gradient(135deg, #43e97b, #38f9d7);
}

.card-items{
    background: linear-gradient(135deg, #f7971e, #ffd200);
}

.card-revenue{
    background: linear-gradient(135deg, #ff416c, #ff4b2b);
}

/* Icon styling */
.card i{
    font-size:30px;
    opacity:0.8;
}

/* Table */

.table-box{
background:white;
padding:20px;
border-radius:10px;
box-shadow:0 2px 10px rgba(0,0,0,0.1);
}

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Dashboard Cards -->

<div class="row g-4 mb-4">

<div class="col-md-3">

<div class="card dashboard-card card-users">

<div class="d-flex justify-content-between">

<div>
<h5>Total Users</h5>
<h2>120</h2>
</div>

<i class="fa fa-users"></i>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card dashboard-card card-orders">

<div class="d-flex justify-content-between">

<div>
<h5>Total Orders</h5>
<h2>75</h2>
</div>

<i class="fa fa-shopping-cart"></i>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card dashboard-card card-items">

<div class="d-flex justify-content-between">

<div>
<h5>Total Utensils</h5>
<h2>45</h2>
</div>

<i class="fa fa-box"></i>

</div>

</div>

</div>

<div class="col-md-3">

<div class="card dashboard-card card-revenue">

<div class="d-flex justify-content-between">

<div>
<h5>Total Revenue</h5>
<h2>₹45,000</h2>
</div>

<i class="fa fa-money-bill"></i>

</div>

</div>

</div>

</div>

<!-- Recent Orders Table -->

<div class="table-box">

<h5 class="mb-3">Recent Orders</h5>

<table class="table table-hover">

<thead class="table-dark">

<tr>
<th>Order ID</th>
<th>Customer</th>
<th>Item</th>
<th>Date</th>
<th>Status</th>
<th>Action</th>
</tr>

</thead>

<tbody>

<tr>
<td>#101</td>
<td>Rahul Patil</td>
<td>Plastic Chairs</td>
<td>10 Mar 2026</td>
<td><span class="badge bg-success">Completed</span></td>
<td><button class="btn btn-sm btn-primary">View</button></td>
</tr>

<tr>
<td>#102</td>
<td>Sneha More</td>
<td>Cooking Vessels</td>
<td>11 Mar 2026</td>
<td><span class="badge bg-warning">Pending</span></td>
<td><button class="btn btn-sm btn-primary">View</button></td>
</tr>

<tr>
<td>#103</td>
<td>Rohan Kale</td>
<td>Dinner Plates</td>
<td>12 Mar 2026</td>
<td><span class="badge bg-danger">Cancelled</span></td>
<td><button class="btn btn-sm btn-primary">View</button></td>
</tr>

<tr>
<td>#104</td>
<td>Priya Deshmukh</td>
<td>Stage Chairs</td>
<td>13 Mar 2026</td>
<td><span class="badge bg-success">Completed</span></td>
<td><button class="btn btn-sm btn-primary">View</button></td>
</tr>

</tbody>

</table>

</div>






</asp:Content>
