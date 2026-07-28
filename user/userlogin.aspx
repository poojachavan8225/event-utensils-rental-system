<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="UtensilsRentalSystem.user.userlogin" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">

<style>
body{
    height:100vh;
    background: linear-gradient(135deg,#667eea,#764ba2);
    display:flex;
    justify-content:center;
    align-items:center;
    font-family:'Segoe UI',sans-serif;
}

.login-card{
    width:100%;
    max-width:400px;
    border:none;
    border-radius:20px;
    box-shadow:0 15px 35px rgba(0,0,0,0.2);
    padding:30px;
    background:white;
}

.form-control{
    border-radius:10px;
}

.btn-rounded{
    border-radius:30px;
}
</style>
</head>

<body>

<form runat="server">   <!-- 🔥 VERY IMPORTANT -->

<div class="login-card">

    <div class="text-center mb-4">
        <h4><i class="fa-solid fa-user"></i> User Login</h4>
        <p class="text-muted">Login to book utensils</p>
    </div>

    <div class="mb-3">
        <label>Email</label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" required=""></asp:TextBox>
    </div>

    <div class="mb-3">
        <label>Password</label>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" required=""></asp:TextBox>
    </div>

    <div class="d-grid mb-3">
        <asp:Button ID="Button1" runat="server" Text="Login"
            CssClass="btn btn-primary btn-rounded"
            OnClick="Button1_Click" />
    </div>

    <div class="text-center">
        <small>Don't have an account?
            <a href="registration.aspx">Register</a>
        </small>
    </div>

</div>

</form>

</body>
</html>