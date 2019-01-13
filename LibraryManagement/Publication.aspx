<%@ Page Title="Add Publication" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Publication.aspx.cs" Inherits="LibraryManagement.Publication" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <br />
    <br />
    <div class="form-horizontal">
        <h2><strong>Add Publication</strong></h2>
        <hr />
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Publication</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="publicationid" CssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server" OnClick="btn_Add" Text="Add" CssClass="btn btn-default" style="background-color:#617129; color:white;"/>
                        </div>
        </div>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>

                <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PublicationID" DataSourceID="SqlDataSource1" GridLines="None" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="PublicationID" HeaderText="PublicationID" InsertVisible="False" ReadOnly="True" SortExpression="PublicationID" />
            <asp:BoundField DataField="PublicationName" HeaderText="PublicationName" SortExpression="PublicationName" />
        </Columns>
            <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#617129" ForeColor="White" Font-Bold="True" />
        <HeaderStyle BackColor="#617129" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>

            </ContentTemplate></asp:UpdatePanel>
    </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibaryManagementConnectionString %>" DeleteCommand="DELETE FROM [Publication] WHERE [PublicationID] = @original_PublicationID" InsertCommand="INSERT INTO [Publication] ([PublicationName]) VALUES (@PublicationName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Publication]" UpdateCommand="UPDATE [Publication] SET [PublicationName] = @PublicationName WHERE [PublicationID] = @original_PublicationID">
        <DeleteParameters>
            <asp:Parameter Name="original_PublicationID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="PublicationName" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PublicationName" Type="String" />
            <asp:Parameter Name="original_PublicationID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <hr />
        <asp:Label ID="showMessage" runat="server" style="font-weight: 700; font-size: large; color: #FF9900;"></asp:Label>
</asp:Content>
