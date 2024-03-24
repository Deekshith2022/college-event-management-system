<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.master" AutoEventWireup="true" CodeFile="StaffViewProfile.aspx.cs" Inherits="StaffViewProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div style="position:absolute; left:200px; top:100px;">
						<h2>Staff View Profile Page</h2>	

                        <p>
                        
                            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"
                            RepeatColumns = "3" CellSpacing = "3" RepeatLayout = "Table">
                                <ItemTemplate>
        <table class = "table">
            <tr>
                <th colspan="2">
                User Name : 
                    <b><%# Eval("FirstName")%> <%# Eval("LastName")%></b>
                </th>
            </tr>
            <tr>
                <td>
                   EmailId:
                </td>
                <td>
                    <%# Eval("EmailId")%>
                </td>
            </tr>
            <tr>
                <td>
                    Phone Num:
                </td>
                <td>
                    <%# Eval("PhoneNum")%>
                </td>
            </tr>
            <tr>
                <td>
                    Address:
                </td>
                <td>
                    <%# Eval("Address")%>
                </td>
            </tr>
            <tr>
                <td>
                    Aadhar Num:
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" 
                    ImageUrl=<%# "~/assets/img/" + Eval("AadharNum")%> Width="200px" Height="200px"/>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Image:
                </td>
                <td>
                    <asp:Image ID="Image1" runat="server" 
                    ImageUrl=<%# "~/assets/img/" + Eval("ImageFile")%> Width="200px" Height="200px"/>
                    
                </td>
            </tr>
        </table>
    </ItemTemplate>
                            </asp:DataList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:EventManagementSystemConnectionString %>" 
                                SelectCommand="SELECT * FROM [NewStaff]"></asp:SqlDataSource>
                        
                        </p>
                        </div>


</asp:Content>



