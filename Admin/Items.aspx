<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="Items.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm2" %>
  <asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <title>Manage Utensils</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background:#f4f6f9;
}
.card-box{
    border:none;
    border-radius:15px;
    box-shadow:0 5px 20px rgba(0,0,0,0.08);
}
.page-header{
    background:linear-gradient(135deg,#667eea,#764ba2);
    color:white;
    padding:20px;
    border-radius:15px;
}
</style>


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container p-4">

    <div class="page-header d-flex justify-content-between align-items-center mb-4">
        <h4>Manage Utensils</h4>
        <a href="addutensils.aspx" class="btn btn-light">+ Add Utensil</a>
    </div>

    <div class="card card-box p-4">
        <div class="table-responsive">
          <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover text-center"
    AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand">

    <Columns>

        <asp:BoundField DataField="UtensilID" HeaderText="ID" />

        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <img src='<%# Eval("ImagePath") %>' width="60" height="60" style="border-radius:8px;" />
            </ItemTemplate>
        </asp:TemplateField>

        <asp:BoundField DataField="Name" HeaderText="Item Name" />
        <asp:BoundField DataField="Category" HeaderText="Category" />
        <asp:BoundField DataField="Price" HeaderText="Rent/Day" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        <asp:BoundField DataField="Status" HeaderText="Status" />

     
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <asp:Button ID="btnEdit" runat="server" Text="Edit"
                    CssClass="btn btn-sm btn-primary"
                    CommandName="EditRow"
                    CommandArgument='<%# Eval("UtensilID") %>' />

                <asp:Button ID="btnDelete" runat="server" Text="Delete"
                    CssClass="btn btn-sm btn-danger"
                    CommandName="DeleteRow"
                    CommandArgument='<%# Eval("UtensilID") %>' />
            </ItemTemplate>
        </asp:TemplateField>

    </Columns>

</asp:GridView>
        </div>
    </div>

</div>

</asp:Content>
