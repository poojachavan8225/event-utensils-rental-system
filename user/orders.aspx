<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="UtensilsRentalSystem.user.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h3 class="mb-4">My Orders</h3>

<div class="card shadow">

<div class="card-body">

<table class="table table-bordered text-center">

<thead class="table-dark">

<tr>
<th>Order ID</th>
<th>Event Date</th>
<th>Return Date</th>
<th>Total Items</th>
<th>Total Price</th>
<th>Status</th>
</tr>

</thead>

<tbody>

<tr>

<td>#1001</td>

<td>10 May 2026</td>

<td>11 May 2026</td>

<td>75</td>

<td>₹800</td>

<td>
<span class="badge bg-success">
Confirmed
</span>
</td>

</tr>

<tr>

<td>#1002</td>

<td>18 June 2026</td>

<td>19 June 2026</td>

<td>120</td>

<td>₹1500</td>

<td>
<span class="badge bg-warning">
Pending
</span>
</td>

</tr>

</tbody>

</table>

</div>

</div>

</asp:Content>
