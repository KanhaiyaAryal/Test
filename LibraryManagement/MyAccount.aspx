<%@ Page Title="My Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="LibraryManagement.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
<div class="form-horizontal">
    <h2><strong>Account Details</strong></h2>
     <hr />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="studentID" CssClass="col-md-2 control-label">Student ID</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="studentid" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="stdname" CssClass="col-md-2 control-label">Student Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="stdname" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="email" CssClass="form-control" />
          </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="phone" CssClass="col-md-2 control-label">Phone</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="phone" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Edit" CssClass="btn btn-default" OnClick="Edit_Click" ID="edit" style="background-color:#617129; color:white;"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" Text="Update" CssClass="btn btn-default" OnClick="Update_Click" ID="update" style="background-color:#617129; color:white;"/>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button runat="server" Text="Cancel" CssClass="btn btn-default" OnClick="Cancel_Click" ID="Cancel" autopostback="true" style="background-color:#617129; color:white;"/>
                <br />
            </div>

        </div>
    <asp:Label ID="message" runat="server" Text="" style="font-size: large; font-weight: 700"></asp:Label>
    </div>
</asp:Content>
