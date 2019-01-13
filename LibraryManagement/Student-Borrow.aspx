<%@ Page Title="Student-Borrow" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Student-Borrow.aspx.cs" Inherits="LibraryManagement.Student_Borrow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><strong>Borrow Book</strong></h2>
    <br />

    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" CellPadding="4" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#EFF3FB" />
        <ItemTemplate>
                 <asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/Images/"+Eval("BookImage").ToString()%>' Width="150" Height="200" Visible="True"/>
                <br />
                 BookName:
                <asp:Label ID="BookNameLabel" runat="server" Text='<%# Eval("BookName") %>' />
                <br />

                 BookDetails:
                <asp:Label ID="BookDetailsLabel" runat="server" Text='<%# Eval("BookDetails") %>'/>
                <br />

                 Author:
                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>'/>
                <br />
                
                
                 Publication:
                <asp:Label ID="PublicationLabel" runat="server" Text='<%# Eval("Publication") %>' />
                <br />

                 Total Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>'/>
                <br />

                 AvailableQty:
                 <asp:Label ID="AvailableQtyLabel" runat="server" Text='<%# Eval("AvailableQty") %>' />
                <br />
                <br />
                <asp:Button ID="btnSelect" runat="server" Text="Select" onclick="btnSelect_Click" style="background-color:#617129; color:white;"/>
                
            </ItemTemplate>
        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <br />
    <div class="form-horizontal" id="borrowForm" visible="false" runat="server">
        <hr />
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">StudentID</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="stdid" CssClass="form-control" Enabled="false" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Student Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="stdname" CssClass="form-control" Enabled="false"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="email" CssClass="form-control" Enabled="false"/>
          </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Book Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="bookName" CssClass="form-control" Enabled="False" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Author</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="author" CssClass="form-control" Enabled="False" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Add" CssClass="btn btn-default" OnClick="btn_Add" style="background-color:#617129; color:white;"/>
            </div>
        </div>
        <br />
        <asp:Label ID="test1" runat="server" style="font-size: large; font-weight: 700"></asp:Label>
        <br />
        <asp:Label ID="returnForm" runat="server" style="font-size: large; font-weight: 700"></asp:Label>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibaryManagementConnectionString %>" SelectCommand="SELECT [BookName], [BookDetails], [Author], [Publication], [Price], [Quantity], [AvailableQty], [BookImage] FROM [Book]"></asp:SqlDataSource>

</asp:Content>
