<%@ Page Title="" Language="C#" MasterPageFile="~/Gharana.Master" AutoEventWireup="true" CodeBehind="CustomerDetails.aspx.cs" Inherits="Gharana_Real_Estate_Application.customerDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="CustomerID" DataSourceID="SqlDataSource1">
        <Fields>
            <asp:BoundField DataField="CustomerFirstName" HeaderText="CustomerFirstName" SortExpression="CustomerFirstName" />
            <asp:BoundField DataField="CustomerLastName" HeaderText="CustomerLastName" SortExpression="CustomerLastName" />
            <asp:BoundField DataField="CustomerEmail" HeaderText="CustomerEmail" SortExpression="CustomerEmail" />
            <asp:BoundField DataField="CustomerAddress" HeaderText="CustomerAddress" SortExpression="CustomerAddress" />
            <asp:BoundField DataField="CustomerPhone" HeaderText="CustomerPhone" SortExpression="CustomerPhone" />
            <asp:CommandField ShowEditButton="True" />
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" DeleteCommand="DELETE FROM [Customer] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [Customer] ([CustomerFirstName], [CustomerLastName], [CustomerEmail], [CustomerAddress], [CustomerPhone]) VALUES (@CustomerFirstName, @CustomerLastName, @CustomerEmail, @CustomerAddress, @CustomerPhone)" SelectCommand="SELECT * FROM [Customer] WHERE ([CustomerID] = @CustomerID)" UpdateCommand="UPDATE [Customer] SET [CustomerFirstName] = @CustomerFirstName, [CustomerLastName] = @CustomerLastName, [CustomerEmail] = @CustomerEmail, [CustomerAddress] = @CustomerAddress, [CustomerPhone] = @CustomerPhone WHERE [CustomerID] = @CustomerID">
        <DeleteParameters>
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerFirstName" Type="String" />
            <asp:Parameter Name="CustomerLastName" Type="String" />
            <asp:Parameter Name="CustomerEmail" Type="String" />
            <asp:Parameter Name="CustomerAddress" Type="String" />
            <asp:Parameter Name="CustomerPhone" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="CustomerID" SessionField="customerID" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerFirstName" Type="String" />
            <asp:Parameter Name="CustomerLastName" Type="String" />
            <asp:Parameter Name="CustomerEmail" Type="String" />
            <asp:Parameter Name="CustomerAddress" Type="String" />
            <asp:Parameter Name="CustomerPhone" Type="String" />
            <asp:Parameter Name="CustomerID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
