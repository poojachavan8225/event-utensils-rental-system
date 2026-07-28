<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="UtensilsRentalSystem.user.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

.cart-img{
width:60px;
height:60px;
object-fit:cover;
}

.qty-input{
width:60px;
text-align:center;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="card shadow">

<div class="card-body">

<table class="table table-bordered text-center align-middle">

<thead class="table-dark">

<tr>
<th>Image</th>
<th>Utensil Name</th>
<th>Price</th>
<th>Quantity</th>
<th>Total</th>
<th>Remove</th>
</tr>

</thead>

<tbody>

<tr>

<td>
<img src="../Images/bigplates.jfif" class="cart-img">
</td>

<td>Steel Plate</td>

<td>₹5</td>

<td>
<input type="number" value="50" class="form-control qty-input">
</td>

<td>₹250</td>

<td>
<button class="btn btn-danger btn-sm">Remove</button>
</td>

</tr>


<tr>

<td>
<img src="../Images/bowls.jfif" class="cart-img">
</td>

<td>bowls</td>

<td>₹20</td>

<td>
<input type="number" value="20" class="form-control qty-input">
</td>

<td>₹400</td>

<td>
<button class="btn btn-danger btn-sm">Remove</button>
</td>

</tr>


<tr>

<td>
<img src="../Images/glasss.jfif" class="cart-img">
</td>

<td>glasss</td>

<td>₹30</td>

<td>
<input type="number" value="5" class="form-control qty-input">
</td>

<td>₹150</td>

<td>
<button class="btn btn-danger btn-sm">Remove</button>
</td>

</tr>

</tbody>

</table>

</div>

</div>


<!-- Cart Summary -->

<div class="row mt-4">

<div class="col-md-4 offset-md-8">

<div class="card shadow">

<div class="card-body">

<h5>Cart Summary</h5>

<hr>

<p>Total Items: <b>3</b></p>

<p>Total Price: <b>₹800</b></p>

<a href="checkout.aspx" class="btn btn-success w-100">
Proceed To Checkout
</a>

</div>

</div>

</div>

</div>
</asp:Content>
