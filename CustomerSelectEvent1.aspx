<%@ Page Title="" Language="C#" MasterPageFile="~/CustomerMasterPage.master" AutoEventWireup="true" CodeFile="CustomerSelectEvent1.aspx.cs" Inherits="CustomerSelectEvent1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Student Select Event</h2>
          <p>Student Select Event</p>
        </div>

        <div class="row mt-5">
          <div class="col-lg-8 mt-5 mt-lg-0" data-aos="fade-left">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">


              <div class="col-md-6 form-group">
              <asp:TextBox ID="eventidTextBox" placeholder="Enter Event ID"  class="form-control" runat="server" ReadOnly></asp:TextBox>
                </div>

                <div class="col-md-6 form-group">
              <asp:TextBox ID="enameTextBox" placeholder="Enter Event Name"  class="form-control" runat="server" ReadOnly></asp:TextBox>
                </div>

                <div class="col-md-6 form-group">
                <br />
              <asp:TextBox ID="eventtypeTextBox" placeholder="Enter Event Type"  class="form-control" runat="server" ReadOnly></asp:TextBox>              
                </div>


                <div class="col-md-6 form-group">
              <br />
              <asp:TextBox ID="numofdaysTextBox" placeholder="Enter Number of Days"  class="form-control" runat="server" ReadOnly></asp:TextBox>

                 
                </div>


                <div class="col-md-6 form-group">
              <br />
              <asp:TextBox ID="priceTextBox" placeholder="Enter Price"  class="form-control" runat="server" ReadOnly></asp:TextBox>

                  
                </div>


                <div class="col-md-6 form-group">
                <br />
              <asp:TextBox ID="commentsTextBox" runat="server"
              TextMode="MultiLine" ReadOnly></asp:TextBox>
                
              </div>

              <div class="form-group mt-3">
<asp:Image ID="Image1" runat="server" Width="100px" Height="100px"></asp:Image>
             
              </div>


              <div class="form-group mt-3">
              
              <input type="date" name="dateTextBox" class="form-control" id="dateTextBox" placeholder="Select Date" required>
              
              </div>

              <div class="form-group mt-3">
              
              <asp:Button ID="Button1" runat="server" Text="Student Select Event" onclick="Button1_Click"></asp:Button>
              
              
              </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
</main>

</asp:Content>




