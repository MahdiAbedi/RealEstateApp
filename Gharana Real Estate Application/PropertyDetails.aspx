<%@ Page Title="" Language="C#" MasterPageFile="~/Gharana.Master" AutoEventWireup="true" CodeBehind="PropertyDetails.aspx.cs" Inherits="Gharana_Real_Estate_Application.PropertyDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="DataList1" runat="server" DataKeyField="propertyID" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <h3>
            <asp:Label ID="propertyAddressLabel" runat="server" Text='<%# Eval("propertyAddress") %>' />
                </h3>

            <asp:Image ID="propertyImageLabel" runat="server" ImageUrl='<%# Eval("propertyImage") %>' Width="250" Height="250" />
            <br />

            # of Bedrooms:
            <asp:Label ID="propertyNumberOfBedroomsLabel" runat="server" Text='<%# Eval("propertyNumberOfBedrooms") %>' />
            <br />

            # of Bathrooms:
            <asp:Label ID="propertyNumberOfBathroomsLabel" runat="server" Text='<%# Eval("propertyNumberOfBathrooms") %>' />
            <br />

            Square Footage:
            <asp:Label ID="propertySquareFootLabel" runat="server" Text='<%# Eval("propertySquareFoot") %>' />
            <br />
            
            Property Type:
            <asp:Label ID="propertyTypeLabel" runat="server" Text='<%# Eval("propertyType") %>' />
            <br />
            
            Price:
            <asp:Label ID="propertyPriceLabel" runat="server" Text='<%# Eval("propertyPrice", "{0:c}") %>' />
            <br />

            Status:
            <asp:Label ID="propertyStatusLabel" runat="server" Text='<%# Eval("propertyStatus") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>





    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" SelectCommand="spGetListings" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:QueryStringParameter Name="propertyID" QueryStringField="propertyID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="btnMakeOffer" runat="server" Text="Make an Offer" />


</asp:Content>
