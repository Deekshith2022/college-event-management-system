<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewEvents.aspx.cs" Inherits="AdminViewEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:absolute; left:200px; top:100px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
    CellPadding="4" DataKeyNames="EventId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="EventId" HeaderText="EventId" InsertVisible="False" 
            ReadOnly="True" SortExpression="EventId" />
        <asp:BoundField DataField="EventName" HeaderText="EventName" 
            SortExpression="EventName" />
        <asp:BoundField DataField="EventType" HeaderText="EventType" 
            SortExpression="EventType" />
        <asp:BoundField DataField="NumofDays" HeaderText="NumofDays" 
            SortExpression="NumofDays" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="Comments" HeaderText="Comments" 
            SortExpression="Comments" />
        <asp:BoundField DataField="ImageFile" HeaderText="ImageFile" 
            SortExpression="ImageFile" />
        <asp:ImageField DataImageUrlField="ImageFile" 
            DataImageUrlFormatString="~/assets/img/{0}" HeaderText="Image">
            <ControlStyle Height="100px" Width="100px" />
        </asp:ImageField>

                        <asp:HyperLinkField DataNavigateUrlFields="EventId" 
                DataNavigateUrlFormatString="EditEventPage.aspx?id={0}" 
                HeaderText="Delete Event" Text="Edit Event" />


                                <asp:HyperLinkField DataNavigateUrlFields="EventId" 
                DataNavigateUrlFormatString="EventDeletePage.aspx?id={0}" 
                HeaderText="Delete Event" Text="Delete Event" />


    </Columns>
    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
    <RowStyle BackColor="White" ForeColor="#003399" />
    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    <SortedAscendingCellStyle BackColor="#EDF6F6" />
    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
    <SortedDescendingCellStyle BackColor="#D6DFDF" />
    <SortedDescendingHeaderStyle BackColor="#002876" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:EventManagementSystemConnectionString %>" 
    SelectCommand="SELECT * FROM [NewEvent]"></asp:SqlDataSource>
    </div>
</asp:Content>

