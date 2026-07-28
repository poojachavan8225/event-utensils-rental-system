<%@ Page Title="" Language="C#" MasterPageFile="~/user/user.Master" AutoEventWireup="true" CodeBehind="User BookingDetails.aspx.cs" Inherits="UtensilsRentalSystem.user.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
.detail-box {
    background: #ffffff;
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 5px 20px rgba(0,0,0,0.1);
}

.section-title {
    color: #0d6efd;
    font-weight: 600;
    margin-bottom: 15px;
}

.info-box {
    background: #f8f9fa;
    padding: 15px;
    border-radius: 10px;
    margin-bottom: 20px;
}

.table th {
    background-color: #0d6efd;
    color: white;
}

.total-box {
    background: #e9ecef;
    padding: 15px;
    border-radius: 10px;
    font-weight: bold;
}

.status-badge {
    padding: 6px 12px;
    border-radius: 20px;
    font-size: 13px;
}

.pending { background: #ffc107; color: #000; }
.approved { background: #198754; color: #fff; }
.dispatched { background: #0dcaf0; color: #000; }
.returned { background: #6c757d; color: #fff; }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="mb-4">Booking Details 📄</h3>

<div class="detail-box">

    <!-- Booking Info -->
    <h5 class="section-title">Booking Information</h5>

    <div class="info-box">
        <p><strong>Booking ID:</strong> #B101</p>
        <p><strong>Start Date:</strong> 10 Feb 2026</p>
        <p><strong>Return Date:</strong> 12 Feb 2026</p>
        <p><strong>Status:</strong> 
            <span class="status-badge approved">Approved</span>
        </p>
    </div>

    <!-- Items Table -->
    <h5 class="section-title">Booked Utensils</h5>

    <div class="table-responsive">
        <table class="table table-bordered text-center align-middle">
            <thead>
                <tr>
                    <th>Item Name</th>
                    <th>Price / Day</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Steel Plate</td>
                    <td>₹10</td>
                    <td>5</td>
                    <td>₹50</td>
                </tr>

                <tr>
                    <td>Water Glass</td>
                    <td>₹8</td>
                    <td>3</td>
                    <td>₹24</td>
                </tr>
            </tbody>
        </table>
    </div>

    <!-- Payment Summary -->
    <h5 class="section-title mt-4">Payment Summary</h5>

    <div class="total-box">
        Items Total: ₹74 <br>
        Rental Days: 2 <br>
        --------------------------- <br>
        Subtotal: ₹148 <br>
        Damage Charges: ₹50 <br>
        --------------------------- <br>
        <span style="font-size:18px;">Final Amount: ₹198</span>
    </div>

</div>
</asp:Content>
