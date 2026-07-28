<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newdash.aspx.cs" Inherits="UtensilsRentalSystem.Admin.newdash" %>

<!DOCTYPE html>
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
}

.card-users{background:#3b82f6;}
.card-orders{background:#10b981;}
.card-items{background:#f59e0b;}
.card-revenue{background:#ef4444;}

.card i{
font-size:30px;
}

/* Table */

.table-box{
background:white;
padding:20px;
border-radius:10px;
box-shadow:0 2px 10px rgba(0,0,0,0.1);
}

</style>

</head>

<body>

<!-- Sidebar -->

<div class="sidebar">

<h3>Admin Panel</h3>

<a href="#"><i class="fa fa-home"></i> Dashboard</a>
<a href="#"><i class="fa fa-users"></i> Manage Users</a>
<a href="#"><i class="fa fa-box"></i> Manage Utensils</a>
<a href="#"><i class="fa fa-list"></i> Categories</a>
<a href="#"><i class="fa fa-shopping-cart"></i> Orders</a>
<a href="#"><i class="fa fa-credit-card"></i> Payments</a>
<a href="#"><i class="fa fa-chart-bar"></i> Reports</a>
<a href="#"><i class="fa fa-cog"></i> Settings</a>
<a href="#"><i class="fa fa-sign-out-alt"></i> Logout</a>

</div>

<!-- Main Content -->

<div class="main">

<!-- Top Navbar -->

<div class="topbar d-flex justify-content-between align-items-center mb-4">

<h4>Event Rental Admin Dashboard</h4>

<div>
<i class="fa fa-bell me-3"></i>
<i class="fa fa-user-circle"></i> Admin
</div>

</div>

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

</div>