<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewUsers.aspx.cs" Inherits="AdminViewUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div style="position:absolute; left:200px; top:100px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="UserId" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="UserId" InsertVisible="False" 
                ReadOnly="True" SortExpression="UserId" />
            <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                SortExpression="FirstName" />
            <asp:BoundField DataField="LastName" HeaderText="LastName" 
                SortExpression="LastName" />
            <asp:BoundField DataField="PhoneNum" HeaderText="PhoneNum" 
                SortExpression="PhoneNum" />
            <asp:BoundField DataField="EmailID" HeaderText="EmailID" 
                SortExpression="EmailID" />
            <asp:BoundField DataField="Uname" HeaderText="Uname" SortExpression="Uname" />
            <asp:BoundField DataField="Pwd" HeaderText="Pwd" SortExpression="Pwd" />
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
        SelectCommand="SELECT * FROM [newuser]"></asp:SqlDataSource>
        </div>
</asp:Content>

