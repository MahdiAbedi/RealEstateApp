<%@ Page Title="" Language="C#" MasterPageFile="~/Gharana.Master" AutoEventWireup="true" CodeBehind="SearchProperties.aspx.cs" Inherits="Gharana_Real_Estate_Application.Search" %>

<%@ Register Src="~/UserControls/ListingsList.ascx" TagPrefix="uc1" TagName="ListingsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        Property ID:
    <asp:TextBox ID="inptPropertyID" runat="server"></asp:TextBox>
        <br />

        Property Address:
    <asp:TextBox ID="inptPropertyAdress" runat="server"></asp:TextBox>
        <br />

        Number of Bedrooms:
        <asp:DropDownList ID="ddlNumberOfBedrooms" runat="server" AppendDataBoundItems="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
            <asp:ListItem Value="4"></asp:ListItem>
        </asp:DropDownList>
        <br />

        Number of Bathrooms:
        <asp:DropDownList ID="ddlNumberOfBathrooms" runat="server" AppendDataBoundItems="True">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="1"></asp:ListItem>
            <asp:ListItem Value="1.5"></asp:ListItem>
            <asp:ListItem Value="2"></asp:ListItem>
            <asp:ListItem Value="2.5"></asp:ListItem>
            <asp:ListItem Value="3"></asp:ListItem>
        </asp:DropDownList>
        <br />

        <br />

        Property Type:
        <asp:RadioButtonList ID="rbtPropertyType" runat="server" AppendDataBoundItems="True">
            <asp:ListItem Value="Rent"></asp:ListItem>
            <asp:ListItem Value="Sale"></asp:ListItem>
            <asp:ListItem Value="Not Specified"></asp:ListItem>
        </asp:RadioButtonList>

        <asp:Button ID="btnSearchProperties" runat="server" Text="Search" OnClick="btnSearchProperties_Click" />

        <br />
        <br />

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="propertyID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="propertyID" HeaderText="propertyID" InsertVisible="False" ReadOnly="True" SortExpression="propertyID" />
            <asp:BoundField DataField="propertyAddress" HeaderText="propertyAddress" SortExpression="propertyAddress" />
            <asp:BoundField DataField="propertyNumberOfBedrooms" HeaderText="propertyNumberOfBedrooms" SortExpression="propertyNumberOfBedrooms" />
            <asp:BoundField DataField="propertyNumberOfBathrooms" HeaderText="propertyNumberOfBathrooms" SortExpression="propertyNumberOfBathrooms" />
            <asp:BoundField DataField="propertySquareFoot" HeaderText="propertySquareFoot" SortExpression="propertySquareFoot" />
            <asp:BoundField DataField="propertyType" HeaderText="propertyType" SortExpression="propertyType" />
            <asp:BoundField DataField="propertyPrice" HeaderText="propertyPrice" SortExpression="propertyPrice" />
            <asp:BoundField DataField="propertyImage" HeaderText="propertyImage" SortExpression="propertyImage" />
            <asp:BoundField DataField="propertyStatus" HeaderText="propertyStatus" SortExpression="propertyStatus" />
        </Columns>
        </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" SelectCommand="spGetListings" SelectCommandType="StoredProcedure" CancelSelectOnNullParameter="False">
        <SelectParameters>
            <asp:ControlParameter ControlID="inptPropertyID" Name="propertyID" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="inptPropertyAdress" Name="propertyAddress" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ddlNumberOfBedrooms" Name="propertyNumberOfBedrooms" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlNumberOfBathrooms" Name="propertyNumberOfBathrooms" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="rbtPropertyType" DefaultValue="" Name="propertyType" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        </asp:SqlDataSource>

</asp:Content>
