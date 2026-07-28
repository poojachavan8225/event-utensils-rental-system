<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="Bookingdetails.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>

.container-wrapper{
    padding:30px;
    background:#f4f6f9;
    min-height:100vh;
}

.booking-card{
    background:#ffffff;
    border-radius:15px;
    padding:30px;
    box-shadow:0 10px 30px rgba(0,0,0,0.08);
}

.page-title{
    font-weight:700;
    color:#1e3c72;
}

.info-card{
    background:#f8f9fa;
    padding:20px;
    border-radius:10px;
}

.info-card p{
    margin-bottom:8px;
}

.section-title{
    font-weight:600;
    margin-top:25px;
    margin-bottom:15px;
    color:#0d6efd;
    border-left:4px solid #0d6efd;
    padding-left:10px;
}

.table thead{
    background:#0d6efd;
    color:white;
}

.total-box{
    background:#eaf7ee;
    padding:15px;
    border-radius:10px;
    font-size:18px;
    font-weight:600;
    color:#28a745;
    text-align:right;
}

.btn-custom{
    min-width:150px;
    font-weight:500;
}

</style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container-wrapper">
<div class="booking-card">

<div class="d-flex justify-content-between align-items-center mb-3">
    <h3 class="page-title">📋 Booking Details</h3>
    <a href="Bookinglist.aspx" class="btn btn-outline-secondary btn-sm">← Back</a>
</div>

<!-- CUSTOMER INFO -->
<div class="row info-card">
    <div class="col-md-6">
        <p><strong>Booking ID:</strong> <asp:Label ID="lblID" runat="server" /></p>
        <p><strong>Customer:</strong> <asp:Label ID="lblName" runat="server" /></p>
        <p><strong>Mobile:</strong> <asp:Label ID="lblMobile" runat="server" /></p>
        <p><strong>Address:</strong> <asp:Label ID="lblAddress" runat="server" /></p>
    </div>

    <div class="col-md-6">
        <p><strong>Event Date:</strong> <asp:Label ID="lblStart" runat="server" /></p>
        <p><strong>Return Date:</strong> <asp:Label ID="lblEnd" runat="server" /></p>
        <p><strong>Total Days:</strong> <asp:Label ID="lblDays" runat="server" /></p>
        <p><strong>Status:</strong> 
            <asp:Label ID="lblStatus" runat="server"></asp:Label>
        </p>
    </div>
</div>

<h5 class="section-title">Booked Utensils</h5>

<div class="table-responsive">
<asp:GridView ID="GridView1" runat="server"
    CssClass="table table-bordered text-center"
    AutoGenerateColumns="false">

    <Columns>
        <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        <asp:BoundField DataField="Price" HeaderText="Rent / Day" />
        <asp:BoundField DataField="Total" HeaderText="Total" />
    </Columns>

</asp:GridView>
</div>

<div class="total-box mt-3">
    Grand Total: ₹<asp:Label ID="lblTotal" runat="server" />
</div>

<h5 class="section-title">Damage / Extra Charges</h5>

<div class="row mt-3">
    <div class="col-md-6">
        <asp:TextBox ID="txtDamage" runat="server" CssClass="form-control" placeholder="Damage amount"></asp:TextBox>
    </div>

    <div class="col-md-6">
        <asp:TextBox ID="txtFine" runat="server" CssClass="form-control" placeholder="Late fine"></asp:TextBox>
    </div>
</div>

<div class="text-end mt-4">
    <asp:Button ID="btnApprove" runat="server" Text="Approve"
        CssClass="btn btn-success btn-custom me-2"
        OnClick="btnApprove_Click" />

    <asp:Button ID="btnReturn" runat="server" Text="Returned"
        CssClass="btn btn-primary btn-custom me-2"
        OnClick="btnReturn_Click" />

    <asp:Button ID="btnCancel" runat="server" Text="Cancel"
        CssClass="btn btn-danger btn-custom"
        OnClick="btnCancel_Click" />
</div>

</div>
</div>

</asp:Content>