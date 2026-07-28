<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admindash.Master" AutoEventWireup="true" CodeBehind="Bookinglist.aspx.cs" Inherits="UtensilsRentalSystem.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background-color:#f4f6f9;
}

/* Title */
h3{
    font-weight:600;
    color:#333;
}

/* Card */
.table-card{
    background:white;
    border-radius:15px;
    padding:20px;
    box-shadow:0 5px 20px rgba(0,0,0,0.05);
}

/* Table */
.table th{
    background-color:#0d6efd;
    color:white;
    text-align:center;
}

.table td{
    vertical-align:middle;
    text-align:center;
}

/* Status Colors */
.status-pending{
    color:#ffc107;
    font-weight:600;
}

.status-active{
    color:#28a745;
    font-weight:600;
}

.status-cancel{
    color:#dc3545;
    font-weight:600;
}

/* Button */
.btn-info{
    border-radius:20px;
    padding:4px 12px;
}

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container-fluid p-4">

<h3 class="mb-4">Booking List</h3>

<div class="table-card">

<asp:GridView ID="GridView1" runat="server"
    CssClass="table table-bordered table-hover text-center align-middle"
    AutoGenerateColumns="false"
    EmptyDataText="No Bookings Found">

    <Columns>

        <asp:BoundField DataField="BookingID" HeaderText="Booking ID" />
        <asp:BoundField DataField="CustomerName" HeaderText="Customer" />

      
        <asp:TemplateField HeaderText="Source">
            <ItemTemplate>
                <span class='badge <%# Eval("Source").ToString()=="Online" ? "bg-primary" : "bg-secondary" %>'>
                    <%# Eval("Source") %>
                </span>
            </ItemTemplate>
        </asp:TemplateField>

        <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:dd MMM yyyy}" />
        <asp:BoundField DataField="EndDate" HeaderText="End Date" DataFormatString="{0:dd MMM yyyy}" />

        <asp:TemplateField HeaderText="Status">
            <ItemTemplate>
                <span class='<%# 
                    Eval("Status").ToString()=="Pending" ? "status-pending" :
                    Eval("Status").ToString()=="Approved" ? "status-active" :
                    "status-cancel" %>'>
                    <%# Eval("Status") %>
                </span>
            </ItemTemplate>
        </asp:TemplateField>

       
        <asp:TemplateField HeaderText="Action">
            <ItemTemplate>
                <a href='Bookingdetails.aspx?id=<%# Eval("BookingID") %>' 
                   class="btn btn-info btn-sm">
                    View Details
                </a>
            </ItemTemplate>
        </asp:TemplateField>
        
    </Columns>

</asp:GridView>

</div>

</div>

</asp:Content>