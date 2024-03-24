<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddEvent.aspx.cs" Inherits="AdminAddEvent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Add Event</h2>
          <p>Add Event Page</p>
        </div>

        <div class="row mt-5">
          <div class="col-lg-8 mt-5 mt-lg-0" data-aos="fade-left">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
              <asp:TextBox ID="enameTextBox" placeholder="Enter Event Name"  class="form-control" runat="server" required pattern="[a-zA-Z]{3,15}" ToolTip="Accepts only 3 to 15 characters"></asp:TextBox>
              <br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Event Name Required" ControlToValidate="enameTextBox"></asp:RequiredFieldValidator>
       
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"                                        ErrorMessage="Event Name should be 3 to 15 characters" ControlToValidate="enameTextBox"                     ValidationExpression="[a-zA-Z]{3,15}"> </asp:RegularExpressionValidator>




                  
                </div>

                <div class="col-md-6 form-group">
              
              <asp:DropDownList ID="etypeDropDownList" runat="server" class="form-control"></asp:DropDownList>

                  
                </div>


                <div class="col-md-6 form-group">
              <br />
              <asp:TextBox ID="numofdaysTextBox" placeholder="Enter Number of Days"  class="form-control" runat="server" required pattern="[0-9]{1,2}" ToolTip="Accepts only 2 digit number"></asp:TextBox>
                        <br />                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Number of Days Required" ControlToValidate="numofdaysTextBox"></asp:RequiredFieldValidator>

<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Number of Should be 2 digits" ControlToValidate="numofdaysTextBox" ValidationExpression="(D-)?\d{1,2}"> </asp:RegularExpressionValidator>




                </div>


                <div class="col-md-6 form-group">
              <br />
              <asp:TextBox ID="priceTextBox" placeholder="Enter Price"  class="form-control" runat="server"
               required pattern="[0-9]{1,5}" ToolTip="Accepts only 5 digit number"></asp:TextBox><br />
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Price Required" ControlToValidate="priceTextBox"></asp:RequiredFieldValidator>

<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Price Should be 1 to 5 digits" ControlToValidate="priceTextBox" ValidationExpression="(D-)?\d{1,5}"> </asp:RegularExpressionValidator>



                  
                </div>


                <div class="form-group mt-3">
              <asp:TextBox ID="commentsTextBox" runat="server"
              TextMode="MultiLine" required></asp:TextBox>
              <br />
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Comments Required" ControlToValidate="commentsTextBox"></asp:RequiredFieldValidator>


               
              </div>

              <div class="form-group mt-3">
              <asp:FileUpload ID="imageFileUpload" runat="server"></asp:FileUpload>
              
              </div>

              <div class="my-3">
              <div class="text-center">
              <asp:Button ID="Button1" runat="server" Text="Add New Event" onclick="Button1_Click"  Width="200px" Height="40px"></asp:Button>
              
              </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
</main>

</asp:Content>


