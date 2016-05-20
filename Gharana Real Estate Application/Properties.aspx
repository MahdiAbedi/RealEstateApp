<%@ Page Title="" Language="C#" MasterPageFile="~/Gharana.Master" AutoEventWireup="true" CodeBehind="Properties.aspx.cs" Inherits="Gharana_Real_Estate_Application.Properties" %>

<%@ Register Src="~/UserControls/ListingsList.ascx" TagPrefix="uc1" TagName="ListingsList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <uc1:ListingsList runat="server" id="ListingsList" />

</asp:Content>
