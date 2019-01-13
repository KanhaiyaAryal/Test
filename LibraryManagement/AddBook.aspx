<%@ Page Title="AddBook" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="LibraryManagement.AddBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">

    <h2><strong>Add New Book</strong></h2>
     <hr />
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="isbn" CssClass="col-md-2 control-label">ISBN</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="isbn" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="bookName" CssClass="col-md-2 control-label">Book Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="bookName" CssClass="form-control" TextMode="MultiLine" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="bookDetails" CssClass="col-md-2 control-label">Book Details</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="bookDetails" TextMode="MultiLine" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="author" CssClass="col-md-2 control-label">Author</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="author" CssClass="form-control" />
          </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="publication" CssClass="col-md-2 control-label">Publication</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="publication" runat="server" Height="30px" Width="143px" CssClass="form-control" style="font-weight: bold" DataSourceID="SqlDataSource1" DataTextField="PublicationName" DataValueField="PublicationID">
                </asp:DropDownList>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="price" CssClass="col-md-2 control-label">Price</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="price" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="qty" CssClass="col-md-2 control-label">Quantity</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="qty" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="FileUpload1" CssClass="col-md-2 control-label">Book Image</asp:Label>
            <div class="col-md-10">
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
            </div>
         </div>
        
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Add" CssClass="btn btn-default" ID="btnAdd" OnClick="btnAdd_Click" style="background-color:#617129; color:white;"/>
            </div>
        </div>
        <hr />
        <asp:Label ID="showMessage" runat="server" style="font-weight: 700; font-size: large"></asp:Label>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibaryManagementConnectionString %>" SelectCommand="SELECT * FROM [Publication]"></asp:SqlDataSource>
</asp:Content>
