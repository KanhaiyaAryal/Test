<%@ Page Title="Add Student" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="LibraryManagement.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">
        <h2><strong>Add New Student</strong></h2>
        <hr />
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">StudentID</asp:Label>
            <div class="col-md-10">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="studentID"
                                CssClass="text-danger" ErrorMessage="StudentID is field is required."/> 
                <asp:TextBox runat="server" ID="studentID" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="studentname" CssClass="col-md-2 control-label">Student Name</asp:Label>
            <div class="col-md-10">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="studentname"
                                CssClass="text-danger" ErrorMessage="Student Name Field is required."/> 
                <asp:TextBox runat="server" ID="studentname" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">E-mail</asp:Label>
            <div class="col-md-10">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="Email Field is required."/> 
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                                CssClass="text-danger" ErrorMessage="Password Field is required."/> 
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                                CssClass="text-danger" ErrorMessage="Confirm Password Field is required."/> 
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
          </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Phone" CssClass="col-md-2 control-label">Phone</asp:Label>
            <div class="col-md-10">
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone"
                                CssClass="text-danger" ErrorMessage="Phone Field is required."/> 
                <asp:TextBox runat="server" ID="Phone" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Add" CssClass="btn btn-default" style="background-color:#617129; color:white;"/>
            </div>
        </div>
        <hr />
        <asp:Label ID="showMessage" runat="server" style="font-weight: 700; font-size: large"></asp:Label>
    </div>
</asp:Content>
