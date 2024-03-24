<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewStaffs.aspx.cs" Inherits="AdminViewStaffs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:absolute; left:200px; top:100px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" DataKeyNames="StaffId" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="StaffId" HeaderText="StaffId" InsertVisible="False" 
                ReadOnly="True" SortExpression="StaffId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="PhoneNum" HeaderText="PhoneNum" 
                SortExpression="PhoneNum" />
            <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                SortExpression="EmailID" />
            <asp:BoundField DataField="Uname" HeaderText="Uname" SortExpression="Uname" />
            <asp:BoundField DataField="Dept" HeaderText="Dept" SortExpression="Dept" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:ImageField DataImageUrlField="AadharNum" 
            DataImageUrlFormatString="~/assets/img/{0}" HeaderText="AadharNum">
            <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>
                <asp:ImageField DataImageUrlField="ImageFile" 
            DataImageUrlFormatString="~/assets/img/{0}" HeaderText="Image">
            <ControlStyle Height="100px" Width="100px" />
            </asp:ImageField>

            <asp:HyperLinkField DataNavigateUrlFields="StaffId" 
                DataNavigateUrlFormatString="EditStaffPage.aspx?id={0}" 
                HeaderText="Edit Staff" Text="Edit Staff" />


                                    <asp:HyperLinkField DataNavigateUrlFields="StaffId" 
                DataNavigateUrlFormatString="StaffDeletePage.aspx?id={0}" 
                HeaderText="Delete Staff" Text="Delete Staff" />

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
        SelectCommand="SELECT * FROM [newstaff]"></asp:SqlDataSource>
        </div>
</asp:Content>

