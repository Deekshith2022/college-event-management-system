<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerViewReports.aspx.cs" Inherits="CustomerViewReports" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:absolute; left:200px; top:100px;">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="SelectedId" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="SelectedId" HeaderText="SelectedId" 
                InsertVisible="False" ReadOnly="True" SortExpression="SelectedId" />
            <asp:BoundField DataField="EventId" HeaderText="EventId" 
                SortExpression="EventId" />
            <asp:BoundField DataField="UserId" HeaderText="UserId" 
                SortExpression="UserId" />
            <asp:BoundField DataField="EventName" HeaderText="EventName" 
                SortExpression="EventName" />
            <asp:BoundField DataField="EventType" HeaderText="EventType" 
                SortExpression="EventType" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="SelectedDate" HeaderText="SelectedDate" 
                SortExpression="SelectedDate" />
            <asp:BoundField DataField="EventStatus" HeaderText="EventStatus" 
                SortExpression="EventStatus" />
            
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:EventManagementSystemConnectionString %>" 
        SelectCommand="SELECT * FROM [SelectedEvent]"></asp:SqlDataSource>


</div>
</asp:Content>



