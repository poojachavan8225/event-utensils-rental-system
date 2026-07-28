<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="UtensilsRentalSystem.user.registration" %>
<!DOCTYPE html>
<html>
<head>
<title>User Registration</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background: linear-gradient(to right,#eef2f3,#dfe9f3);
    font-family:'Segoe UI',sans-serif;
}
.register-card{
    border:none;
    border-radius:20px;
    box-shadow:0 10px 30px rgba(0,0,0,0.1);
}
.form-control{ border-radius:10px; }
.btn-rounded{ border-radius:30px; }
</style>
</head>

<body>

<form runat="server">   <!-- IMPORTANT -->

<div class="container d-flex justify-content-center align-items-center min-vh-100">

<div class="card register-card p-4 col-md-6">

<div class="text-center mb-4">
<h4>Create Account</h4>
</div>

<div class="row">
<div class="col-md-6 mb-3">
<label>Full Name</label>
<asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
</div>

<div class="col-md-6 mb-3">
<label>Mobile</label>
<asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
</div>
</div>

<div class="mb-3">
<label>Email</label>
<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
</div>

<div class="mb-3">
<label>Address</label>
<asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
</div>

<div class="row">
<div class="col-md-6 mb-3">
<label>Password</label>
<asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
</div>

<div class="col-md-6 mb-3">
<label>Confirm Password</label>
<asp:TextBox ID="txtConfirm" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
</div>
</div>

<div class="d-grid mb-3">
<asp:Button ID="btnRegister" runat="server" Text="Register"
    CssClass="btn btn-success btn-rounded"
    OnClick="btnRegister_Click" />
</div>

</div>
</div>

</form>

</body>
</html>