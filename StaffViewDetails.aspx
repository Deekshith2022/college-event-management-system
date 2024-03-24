<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.master" AutoEventWireup="true" CodeFile="StaffViewDetails.aspx.cs" Inherits="StaffViewDetails" %>

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
    
    <h3>Staff View Full Details Page</h3>
    </center>
    <asp:DataList ID="dlCustomers" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3"  
        CellSpacing="3" RepeatLayout="Table">  
        <ItemTemplate>  
            <table class="table">  
                <tr>  
                    <th colspan="2">  
                        <b>  Selected Id :
                            <%# Eval("SelectedId") %></b>  
                    </th>  
                </tr> 
                
                <tr>  
                    <td>  
                        User Num:  
                    </td>  
                    <td>  
                        <%# Eval("UserId")%>  
                    </td>  
                </tr> 

                <tr>  
                    <td>  
                        Event Id:  
                    </td>  
                    <td>  
                        <%# Eval("EventId")%>  
                    </td>  
                </tr> 
                 
                 <tr>  
                    <td>  
                        Event Name:  
                    </td>  
                    <td>  
                        <%# Eval("EventName")%>  
                    </td>  
                </tr> 

                <tr>  
                    <td>  
                        Amount:  
                    </td>  
                    <td>  
                        <%# Eval("Price")%>  
                    </td>  
                </tr> 

                
                
                <tr>  
                    <td>  
                        PaymentId:  
                    </td>  
                    <td>  
                        <%# Eval("PaymentId")%>  
                    </td>  
                </tr> 
                
                
                    <tr>  
                <td>  
                        Instrument Type:  
                    </td> 
                    <td>  
                        <%# Eval("InstrumentType")%>  
                    </td> 
                    </tr> 




                <tr>  
                    <td>  
                    Billing Instrument:  
                    </td>  
                    <td>
                    <%# Eval("BillingInstrument")%>  
                        
                    </td>  
                </tr>  

                <tr>  
                    <td>  
                    Status:  
                    </td>  
                    <td>
                    <%# Eval("Status")%>  
                        
                    </td>  
                </tr> 

                <tr>  
                    <td>  
                    Currency:  
                    </td>  
                    <td>
                    <%# Eval("Currency")%>  
                        
                    </td>  
                </tr> 


                 
                
                            
            </table>  
        </ItemTemplate>  
    </asp:DataList>  
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EventManagementSystemConnectionString %>"  
        SelectCommand="SELECT * FROM SelectedEvent"></asp:SqlDataSource>
    
        </asp:Content>

