<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="addutensils.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background: linear-gradient(135deg,#eef2f3,#dfe9f3);
    font-family: 'Segoe UI', sans-serif;
}

.page-header{
    background: linear-gradient(135deg,#667eea,#764ba2);
    color:white;
    padding:20px 30px;
    border-radius:15px;
}

.card-box{
    border:none;
    border-radius:20px;
    box-shadow:0 8px 25px rgba(0,0,0,0.08);
}

.form-control, .form-select{
    border-radius:10px;
}

.btn-rounded{
    border-radius:30px;
    padding:8px 25px;
}
</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container p-4">

    <!-- Header -->
    <div class="page-header mb-4 d-flex justify-content-between align-items-center">
        <h4>Add / Edit Utensil</h4>
        <a href="Items.aspx" class="btn btn-light btn-sm btn-rounded">Back</a>
    </div>

    <!-- Form Card -->
    <div class="card card-box p-4 col-lg-7 mx-auto">

        <!-- Hidden ID -->
        <asp:HiddenField ID="hiddenID" runat="server" />

        <!-- Item Name -->
        <div class="mb-3">
            <label>Item Name</label>
            <asp:DropDownList ID="ddlName" runat="server" CssClass="form-select">
                <asp:ListItem Text="-- Select Item --" Value="" />
                <asp:ListItem>Steel Plate</asp:ListItem>
                <asp:ListItem>Plastic Plate</asp:ListItem>
                <asp:ListItem>Disposable Plate</asp:ListItem>
                <asp:ListItem>Water Glass</asp:ListItem>
                <asp:ListItem>Juice Glass</asp:ListItem>
                <asp:ListItem>Soup Bowl</asp:ListItem>
                <asp:ListItem>Rice Bowl</asp:ListItem>
                <asp:ListItem>Big Cooking Vessel</asp:ListItem>
                <asp:ListItem>Pressure Cooker</asp:ListItem>
                <asp:ListItem>Serving Spoon</asp:ListItem>
                <asp:ListItem>Tray</asp:ListItem>
                <asp:ListItem>Plastic Chair</asp:ListItem>
                <asp:ListItem>Table</asp:ListItem>
            </asp:DropDownList>
        </div>

        <!-- Category -->
        <div class="mb-3">
            <label>Category</label>
            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                <asp:ListItem Text="-- Select Category --" Value="" />
                <asp:ListItem>Plates</asp:ListItem>
                <asp:ListItem>Glasses</asp:ListItem>
                <asp:ListItem>Bowls</asp:ListItem>
                <asp:ListItem>Cooking Utensils</asp:ListItem>
                <asp:ListItem>Serving Items</asp:ListItem>
                <asp:ListItem>Furniture</asp:ListItem>
            </asp:DropDownList>
        </div>

        <!-- Material -->
        <div class="mb-3">
            <label>Material</label>
            <asp:DropDownList ID="ddlMaterial" runat="server" CssClass="form-select">
                <asp:ListItem Text="-- Select Material --" Value="" />
                <asp:ListItem>Steel</asp:ListItem>
                <asp:ListItem>Plastic</asp:ListItem>
                <asp:ListItem>Glass</asp:ListItem>
                <asp:ListItem>Aluminum</asp:ListItem>
                <asp:ListItem>Copper</asp:ListItem>
                <asp:ListItem>Melamine</asp:ListItem>
                <asp:ListItem>Disposable</asp:ListItem>
            </asp:DropDownList>
        </div>

        <!-- Price & Quantity -->
        <div class="row">
            <div class="col-md-6 mb-3">
                <label>Rent Per Day</label>
                <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="col-md-6 mb-3">
                <label>Quantity</label>
                <asp:TextBox ID="txtQty" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>

        <!-- Image Upload -->
        <div class="mb-3">
            <label>Upload Image</label>
            <asp:FileUpload ID="fileImage" runat="server" CssClass="form-control" />
        </div>

        <!-- Buttons -->
        <div class="d-flex justify-content-between mt-4">
            <a href="Items.aspx" class="btn btn-secondary btn-rounded">Cancel</a>

            <asp:Button ID="btnSave" runat="server" Text="Save Utensil"
                CssClass="btn btn-primary btn-rounded"
                OnClick="btnSave_Click" />
        </div>

    </div>

</div>

</asp:Content>
