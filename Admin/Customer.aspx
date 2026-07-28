<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<title>Customers</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"/>

<style>
body{background:#f4f6f9;}
.card{border-radius:15px;}
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container mt-5">
<h3>Customer Management</h3>

<div class="card p-4 shadow mt-3">

<div class="row">
<div class="col-md-2">
<asp:TextBox ID="txtID" runat="server" CssClass="form-control" placeholder="Enter ID" AutoPostBack="true" OnTextChanged="txtID_TextChanged"></asp:TextBox>
</div>

<div class="col-md-3">
<asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Customer Name"></asp:TextBox>
</div>

<div class="col-md-3">
<asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Mobile"></asp:TextBox>
</div>

<div class="col-md-4">
<asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
</div>
</div>

<br />

<div class="d-flex gap-2">
<asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn btn-success btn-sm" OnClick="btnAdd_Click" />
<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-primary btn-sm" OnClick="btnUpdate_Click" />
<asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger btn-sm" OnClick="btnDelete_Click" />
<asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-secondary btn-sm" OnClick="btnClear_Click" />
</div>

<br />
<asp:GridView ID="GridView1" runat="server" CssClass="table table-bordered table-hover">
</asp:GridView>

</div>

</div>

</asp:Content>