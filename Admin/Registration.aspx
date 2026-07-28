<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="UtensilsRentalSystem.Admin.Registration" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI';
            background: linear-gradient(135deg, #667eea, #764ba2);
            height: 100vh;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background: white;
            padding: 30px;
            width: 350px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            text-align: center;
        }

        h2 {
            margin-bottom: 20px;
            color: #333;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ccc;
            outline: none;
            transition: 0.3s;
        }

        input:focus {
            border-color: #667eea;
            box-shadow: 0 0 5px #667eea;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(45deg, #667eea, #764ba2);
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            transform: scale(1.05);
            opacity: 0.9;
        }

        .link {
            margin-top: 10px;
            display: block;
            color: #667eea;
            text-decoration: none;
        }

        .link:hover {
            text-decoration: underline;
        }

        .msg {
            margin-top: 10px;
            color: green;
        }
    </style>
</head>

<body>
<form runat="server">
    <div class="container">
        <div class="card">
            <h2>Create Account</h2>

            <asp:TextBox ID="txtName" runat="server" placeholder="Full Name"></asp:TextBox>
            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email"></asp:TextBox>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
            <asp:TextBox ID="txtPhone" runat="server" placeholder="Phone Number"></asp:TextBox>

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click" />

            <asp:Label ID="lblMsg" runat="server" CssClass="msg"></asp:Label>

            <a href="Login.aspx" class="link">Already have an account? Login</a>
        </div>
    </div>
</form>
</body>
</html>
