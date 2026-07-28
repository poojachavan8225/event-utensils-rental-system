<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="settings.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Settings</h3>

<div class="card p-4 shadow">

<div class="mb-3">
<label>Admin Name</label>
<input type="text" class="form-control">
</div>

<div class="mb-3">
<label>Email</label>
<input type="email" class="form-control">
</div>

<button class="btn btn-primary">Update</button>

</div>

</asp:Content>
