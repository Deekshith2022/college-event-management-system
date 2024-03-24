<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerSelectEvent2.aspx.cs" Inherits="CustomerSelectEvent2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:absolute; left:400px; top:200px;">
    <asp:Label ID="paymentIdLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="instrumenttypeLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="billinginstrumentLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="statusLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="currencyLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="purposeLabel" runat="server" Text="Label"></asp:Label>
    <br />
    <asp:Label ID="resultLabel" runat="server" Text="Label"></asp:Label>
    <br />
</div>
</asp:Content>

