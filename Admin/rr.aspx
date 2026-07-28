<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rr.aspx.cs" Inherits="UtensilsRentalSystem.Admin.registration" %>

<!DOCTYPE html>
<html>
<head>
    <title>Registration Page</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #36b9cc, #4e73df);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .register-box {
            background: #ffffff;
            padding: 35px;
            width: 400px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        }

        .register-box h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .input-group {
            margin-bottom: 15px;
        }

        .input-group label {
            font-size: 14px;
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        .input-group input, 
        .input-group textarea {
            width: 100%;
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
            font-size: 14px;
            transition: 0.3s;
        }

        .input-group input:focus,
        .input-group textarea:focus {
            border-color: #4e73df;
            outline: none;
            box-shadow: 0 0 5px rgba(78, 115, 223, 0.5);
        }

        .register-btn {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 6px;
            background-color: #4e73df;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
            margin-top: 10px;
        }

        .register-btn:hover {
            background-color: #2e59d9;
        }

        .extra-links {
            text-align: center;
            margin-top: 15px;
            font-size: 13px;
        }

        .extra-links a {
            text-decoration: none;
            color: #4e73df;
        }

        .extra-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <div class="register-box">
        <h2>Create Account</h2>

        <form method="post" runat="server">
            <div class="input-group">
                <label>Full Name</label>
                <input type="text" placeholder="Enter your full name" required  id="txtFullName" runat="server">
            </div>

            <div class="input-group">
                <label>Email</label>
                <input type="email" placeholder="Enter your email" required id="txtEmail" runat="server">
            </div>

            <div class="input-group">
                <label>Phone Number</label>
                <input type="tel" placeholder="Enter your phone number" required id="txtphoneNumber" runat="server">
            </div>

            <div class="input-group">
                <label>Password</label>
                <input type="password" placeholder="Create password" required id="txtPassword" runat="server">
            </div>

            <div class="input-group">
                <label>Address</label>
                <textarea rows="3" placeholder="Enter your address" required id="txtAddress" runat="server"></textarea>
            </div>


            <asp:Button ID="Button1" runat="server" class="register-btn" Text="Register" OnClick="Button1_Click" />
           
        </form>

        <div class="extra-links">
            <p>Already have an account? <a href="login.aspx">Login</a></p>
        </div>
    </div>

</body>
</html>