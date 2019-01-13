<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LibraryManagement._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h2><strong> Library Management System</strong></h2>
        <p class="lead">Library management system project website used to maintain all activities of library system such as maintain books stock, issue book records, return book records, student detail and also keep data of penalty for late return books. The project covered all activities which has done to run library system.</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Manage Account</h2>
            <p>
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/img_391781.png" PostBackUrl="~/MyAccount.aspx" Width="250px" Height="230px"/></p>
        </div>
        <div class="col-md-4">
            <h2>Borrow Book</h2>
            <p>
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/borrowBook.png" PostBackUrl="~/Student-Borrow.aspx" Width="250px" Height="230px"/></p>
        </div>
        <div class="col-md-4">
            <h2>Penalty Report</h2>
            <p>
                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Images/report.jpg" PostBackUrl="~/Student-Penalty.aspx" Width="250px" Height="230px"/></p>
        </div>
    </div>

</asp:Content>
