<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="Utensils.aspx.cs" Inherits="UtensilsRentalSystem.user.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!DOCTYPE html>

  <meta charset="UTF-8">
  <title>Browse Utensils</title>

  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      background-color: #f5f5f5;
    }

    header {
      background-color: #2c3e50;
      color: white;
      padding: 15px;
      text-align: center;
    }

    .container {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 20px;
      padding: 20px;
    }

    .card {
      background: white;
      border-radius: 10px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.2);
      padding: 15px;
      text-align: center;
      transition: 0.3s;
    }

    .card:hover {
      transform: scale(1.05);
    }

    .card img {
      width: 100%;
      height: 150px;
      object-fit: cover;
      border-radius: 8px;
    }

    .card h3 {
      margin: 10px 0 5px;
    }

    .card p {
      color: #555;
      margin: 5px 0;
    }

    .btn {
      background-color: #e67e22;
      color: white;
      padding: 8px 12px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 8px;
    }

    .btn:hover {
      background-color: #cf711f;
    }

  </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <header>
  <h1>Browse Utensils</h1>
</header>

<div class="container">

  <!-- Plate Set -->
  <div class="card">
    <img src="../Images/bigplates.jfif" alt="Plate Set">
    <h3>Plate Set</h3>
    <p>Price: ₹5 per set</p>
    <button class="btn">Add to Cart</button>
  </div>

  <!-- Glass Set -->
  <div class="card">
    <img src="../Images/glasss.jfif" alt="Glass Set">
    <h3>Glass Set</h3>
    <p>Price: ₹3 per set</p>
    <button class="btn">Add to Cart</button>
  </div>

  <!-- Cooking Pots -->
  <div class="card">
    <img src="../Images/patela.jfif" alt="Cooking Pots">
    <h3>Cooking Pots</h3>
    <p>Price: ₹10 per set</p>
    <button class="btn">Add to Cart</button>
  </div>

  <!-- Serving Spoons -->
  <div class="card">
    <img src="../Images/spoon.jfif" alt="Serving Spoons">
    <h3>Serving Spoons</h3>
    <p>Price: ₹2 per set</p>
    <button class="btn">Add to Cart</button>
  </div>
    <!-- Serving Spoons -->
<div class="card">
  <img src="../Images/bowls.jfif" alt="Serving Spoons">
  <h3>bowls</h3>
  <p>Price: ₹2 per set</p>
  <button class="btn">Add to Cart</button>
</div>
<!-- Serving Spoons -->
<div class="card">
  <img src="../Images/big ultan.jpg" alt="Serving Spoons">
  <h3>Ultana</h3>
  <p>Price: ₹2 per set</p>
  <button class="btn">Add to Cart</button>
</div>
<!-- Serving Spoons -->
<div class="card">
  <img src="https://images.unsplash.com/photo-1600718374662-0483d2b9b7c0" alt="Serving Spoons">
  <h3>Serving Spoons</h3>
  <p>Price: ₹2 per set</p>
  <button class="btn">Add to Cart</button>
</div>


</div>
</asp:Content>
