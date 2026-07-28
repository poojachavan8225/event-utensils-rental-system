<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="UtensilsRentalSystem.user.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3>Dashboard</h3>

<div class="row mt-4">

<div class="col-md-4">
<div class="card bg-primary text-white">
<div class="card-body">
<h4>Available Utensils</h4>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card bg-success text-white">
<div class="card-body">
<h4>My Cart</h4>
</div>
</div>
</div>

<div class="col-md-4">
<div class="card bg-warning text-dark">
<div class="card-body">
<h4>My Orders</h4>
</div>
</div>
</div>

</div>
</asp:Content>
