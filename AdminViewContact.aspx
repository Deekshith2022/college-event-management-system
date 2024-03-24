<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminViewContact.aspx.cs" Inherits="AdminViewContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<style type="text/css">  
        body  
        {  
            font-family: Arial;  
            font-size: 10pt;  
        }  
        .table  
        {  
            border: 1px solid #ccc;  
            border-collapse: collapse;  
            width: 200px;  
            margin-left:50px;
    
            left:500px;
        }  
        .table th  
        {  
            background-color: #F7F7F7;  
            color: #333;  
            font-weight: bold;  
        }  
        .table th, .table td  
        {  
            padding: 5px;  
            border: 1px solid #ccc;  
        }  
    </style>  
    
<br /><br /><br /><br />    
    
    <h3>Admin View Contact Details Page</h3>
    </center>
    <asp:DataList ID="dlCustomers" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3"  
        CellSpacing="3" RepeatLayout="Table">  
        <ItemTemplate>  
            <table class="table">  
                <tr>  
                    <th colspan="2">  
                        <b>  Contact Id :
                            <%# Eval("ContactId") %></b>  
                    </th>  
                </tr> 
                
                <tr>  
                    <td>  
                        Contact Name:  
                    </td>  
                    <td>  
                        <%# Eval("ContactName")%>  
                    </td>  
                </tr> 

                <tr>  
                    <td>  
                       Subject:  
                    </td>  
                    <td>  
                        <%# Eval("Subject")%>  
                    </td>  
                </tr> 
                 
                 <tr>  
                    <td>  
                        Details:  
                    </td>  
                    <td>  
                        <%# Eval("Details")%>  
                    </td>  
                </tr> 

                <tr>  
                    <td>  
                        Phone Number:  
                    </td>  
                    <td>  
                        <%# Eval("PhoneNum")%>  
                    </td>  
                </tr> 

                
                
                <tr>  
                    <td>  
                        EmailId:  
                    </td>  
                    <td>  
                        <%# Eval("EmailId")%>  
                    </td>  
                </tr> 
                
                
                   


                 
                
                            
            </table>  
        </ItemTemplate>  
    </asp:DataList>  
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementSystemConnectionString %>"  
        SelectCommand="SELECT * FROM ContactTable"></asp:SqlDataSource>
    
        </asp:Content>




