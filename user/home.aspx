<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="UtensilsRentalSystem.user.home" %>

<!DOCTYPE html>
<html>
<head>
<title>Utensils Rental</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:url('https://images.unsplash.com/photo-1556911220-e15b29be8c8f');
background-size:cover;
}

.hero{
background:rgba(0,0,0,0.6);
color:white;
padding:120px;
text-align:center;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark bg-dark navbar-expand-lg">

<div class="container">

<a class="navbar-brand">Utensils Rental</a>

<div>

<a href="userlogin.aspx" class="btn btn-light">Login</a>
<a href="registration.aspx" class="btn btn-warning">Register</a>

</div>

</div>
</nav>

<div class="hero">

<h1>Event Utensils Rental System</h1>
<p>Book utensils for your events easily</p>

<a href="registration.aspx" class="btn btn-warning btn-lg">Start Booking</a>

</div>

</body>
</html>
