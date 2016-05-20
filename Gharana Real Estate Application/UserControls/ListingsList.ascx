<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListingsList.ascx.cs" Inherits="Gharana_Real_Estate_Application.ListingsList" %>

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

        <asp:Button ID="btnSearchProperties" runat="server" Text="Search" OnClick="Page_Load" />


<asp:DataList ID="DataList1" runat="server" DataKeyField="propertyID" DataSourceID="DataSource1" RepeatColumns="3">
    <ItemTemplate>

        <asp:Image ID="propertyImage" runat="server" ImageUrl='<%# Eval("propertyImage") %>' Width="250" Height="250" />

        <br />
        <h3>
        
        <a href="PropertyDetails.aspx?PropertyID=<%# Eval("propertyID").ToString() %>">   
        <asp:Label ID="propertyAddressLabel" runat="server" Text='<%# Eval("propertyAddress") %>' />
            </a>
        <br />
        </h3>
        Property Number:
        <asp:Label ID="propertyIDLabel" runat="server" Text='<%# Eval("propertyID") %>' />
        <br />
        Price:
        <asp:Label ID="propertyPriceLabel" runat="server" Text='<%# Eval("propertyPrice", "{0:c}") %>' />
        <br />
        Property Type:
        <asp:Label ID="propertyTypeLabel" runat="server" Text='<%# Eval("propertyType") %>' />
        <br />

<br />
    </ItemTemplate>

</asp:DataList>

<asp:SqlDataSource 

    ID="DataSource1" 
    runat="server" 
    ConnectionString="<%$ ConnectionStrings:RealEstateConnectionString %>" 
    SelectCommand="spGetListings" CancelSelectOnNullParameter="False" SelectCommandType="StoredProcedure">
    <SelectParameters>
        <asp:ControlParameter ControlID="inptPropertyID" Name="propertyID" PropertyName="Text" Type="Int32" />
        <asp:ControlParameter ControlID="inptPropertyAdress" Name="propertyAddress" PropertyName="Text" Type="String" />
        <asp:ControlParameter ControlID="ddlNumberOfBedrooms" Name="propertyNumberOfBedrooms" PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="ddlNumberOfBathrooms" Name="propertyNumberOfBathrooms" PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="rbtPropertyType" Name="propertyType" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>

</asp:SqlDataSource>