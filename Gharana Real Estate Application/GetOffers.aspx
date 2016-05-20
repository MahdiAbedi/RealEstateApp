<%@ Page Title="" Language="C#" MasterPageFile="~/Gharana.Master" AutoEventWireup="true" CodeBehind="GetOffers.aspx.cs" Inherits="Gharana_Real_Estate_Application.GetOffers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="offerID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="offerID" HeaderText="offerID" InsertVisible="False" ReadOnly="True" SortExpression="offerID" />
            <asp:BoundField DataField="propertyID" HeaderText="propertyID" ReadOnly="True" SortExpression="propertyID" />
            <asp:BoundField DataField="customerID" HeaderText="customerID" ReadOnly="True" SortExpression="customerID" />
            <asp:BoundField DataField="offerPrice" HeaderText="offerPrice" ReadOnly="True" SortExpression="offerPrice" />
            <asp:BoundField DataField="offerStatus" HeaderText="offerStatus" SortExpression="offerStatus" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" DeleteCommand="DELETE FROM [Offer] WHERE [offerID] = @offerID" InsertCommand="INSERT INTO [Offer] ([propertyID], [customerID], [offerPrice], [offerStatus]) VALUES (@propertyID, @customerID, @offerPrice, @offerStatus)" SelectCommand="SELECT * FROM [Offer]" UpdateCommand="UPDATE [Offer] SET [offerStatus] = @offerStatus WHERE [offerID] = @offerID">
        <DeleteParameters>
            <asp:Parameter Name="offerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="propertyID" Type="Int32" />
            <asp:Parameter Name="customerID" Type="Int32" />
            <asp:Parameter Name="offerPrice" Type="Int32" />
            <asp:Parameter Name="offerStatus" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="propertyID" Type="Int32" />
            <asp:Parameter Name="customerID" Type="Int32" />
            <asp:Parameter Name="offerPrice" Type="Int32" />
            <asp:Parameter Name="offerStatus" Type="String" />
            <asp:Parameter Name="offerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
