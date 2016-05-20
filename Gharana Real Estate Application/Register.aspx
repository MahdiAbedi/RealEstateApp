<%@ Page Title="" Language="C#" MasterPageFile="~/Gharana.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Gharana_Real_Estate_Application.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LoginView ID="LoginView1" runat="server">
    <AnonymousTemplate>
        <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" OnCreatedUser="CreateUserWizard1_CreatedUser">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server" />
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </AnonymousTemplate>
    <LoggedInTemplate>
        You are already registered
    </LoggedInTemplate>
</asp:LoginView>
</asp:Content>
