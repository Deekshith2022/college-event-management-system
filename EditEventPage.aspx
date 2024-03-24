<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditEventPage.aspx.cs" Inherits="EditEventPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Edit Event</h2>
          <p>Edit Event Page</p>
        </div>

        <div class="row mt-5">
          <div class="col-lg-8 mt-5 mt-lg-0" data-aos="fade-left">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
              <asp:TextBox ID="enameTextBox" placeholder="Enter Event Name"  class="form-control" runat="server"></asp:TextBox>
                </div>

                <div class="col-md-6 form-group">
              
              <asp:DropDownList ID="etypeDropDownList" runat="server" class="form-control"></asp:DropDownList>                 
                </div>


                <div class="col-md-6 form-group">
              <br />
              <asp:TextBox ID="numofdaysTextBox" placeholder="Enter Number of Days"  class="form-control" runat="server"></asp:TextBox>

                  
                </div>


                <div class="col-md-6 form-group">
              <br />
              <asp:TextBox ID="priceTextBox" placeholder="Enter Price"  class="form-control" runat="server"></asp:TextBox>

                  
                </div>


                <div class="form-group mt-3">
              <asp:TextBox ID="commentsTextBox" runat="server"
              TextMode="MultiLine"></asp:TextBox>
                
              </div>

              <div class="form-group mt-3">
              <asp:FileUpload ID="imageFileUpload" runat="server"></asp:FileUpload>
              </div>

              <div class="my-3">
              <div class="text-center">
              <asp:Button ID="Button1" runat="server" Text="Edit Event" onclick="Button1_Click"></asp:Button>
              </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
</main>

</asp:Content>




