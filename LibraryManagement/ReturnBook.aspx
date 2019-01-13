<%@ Page Title="Return Book" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ReturnBook.aspx.cs" Inherits="LibraryManagement.ReturnBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><strong>Return Book</strong></h2>
     <div class="form-horizontal" runat="server">
        <hr />
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">StudentID</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="stdDrop" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="StudentID" DataValueField="StudentID" Width="300px" OnSelectedIndexChanged="stdDrop_SelectedIndexChanged1" AutoPostBack="true"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibaryManagementConnectionString %>" SelectCommand="SELECT [BookName], [StudentID] FROM [BorrowBook]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibaryManagementConnectionString %>" SelectCommand="SELECT [BorrowBookID], [StudentID], [StudentName], [BookName], [Email], [Author], [BorrowDate] FROM [BorrowBook] WHERE (([StudentID] = @StudentID) AND ([BookName] = @BookName) AND ([ReturnDate] = @ReturnDate))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="stdDrop" Name="StudentID" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="bookDrop" Name="BookName" PropertyName="SelectedValue" Type="String" />
                        <asp:Parameter DefaultValue="0" Name="ReturnDate" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Book Name</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="bookDrop" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2" DataTextField="BookName" DataValueField="BookName" AutoPostBack="True" Width="500px" OnSelectedIndexChanged="bookDrop_SelectedIndexChanged1"></asp:DropDownList>
            </div>
        </div>
      </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="BorrowBookID">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="BorrowBookID" HeaderText="BorrowBookID" SortExpression="BorrowBookID" InsertVisible="False" ReadOnly="True" />
            <asp:BoundField DataField="StudentID" HeaderText="StudentID" SortExpression="StudentID" />
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
            <asp:BoundField DataField="BookName" HeaderText="BookName" SortExpression="BookName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="BorrowDate" HeaderText="BorrowDate" SortExpression="BorrowDate" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
     </asp:GridView>

    <div class="form-horizontal" id="BorrowForm" visible="false" runat="server" autopostback="true">
        <hr />
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Book Name: </asp:Label>
            <div class="col-md-10">
                <asp:Label runat="server" CssClass="form-control" ID="bookName" Width="500px"></asp:Label>
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Borrrow Date: </asp:Label>
            <div class="col-md-10">
             <asp:Label runat="server" CssClass="form-control" ID="borrowDate" Width="300px"></asp:Label>
            </div>
        </div>
        <br />
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Return" CssClass="btn btn-default" OnClick="btnReturn" Height="46px" style="background-color:#617129; color:white;"/>
            </div>
        </div>
        <asp:Label ID="showMessage" runat="server" style="font-weight: 700; font-size: large; text-align: center;"></asp:Label>
        <br />
      </div>
    <asp:TextBox ID="borrowID" runat="server" Visible="False"></asp:TextBox>
</asp:Content>
