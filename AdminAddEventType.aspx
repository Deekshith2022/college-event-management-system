<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddEventType.aspx.cs" Inherits="AdminAddEventType" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Add Event Type</h2>
          <p>Add Event Type Page</p>
        </div>

        <div class="row mt-5">
          <div class="col-lg-8 mt-5 mt-lg-0" data-aos="fade-left">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
              <asp:TextBox ID="eventtypeTextBox" placeholder="Enter Event Type" runat="server" required pattern="[a-zA-Z]{3,15}" ToolTip="Accepts only 3 to 15 characters"></asp:TextBox><br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Event Type Required" ControlToValidate="eventtypeTextBox"></asp:RequiredFieldValidator>
       
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"                                        ErrorMessage="Event Type Name should be 3 to 15 characters" ControlToValidate="eventtypeTextBox"                     ValidationExpression="[a-zA-Z]{3,15}"></asp:RegularExpressionValidator>


                  <%--<input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required>--%>
                </div>
                </div>
    
              <div class="row">
                <div class="col-md-6 form-group">
    <br />
              <asp:Button ID="Button1" runat="server" Text="Add Event Type" onclick="Button1_Click"  Width="200px" Height="40px"></asp:Button>
              <%--<button type="submit">Send Message</button>--%>
              </div>
              </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
</main>

</asp:Content>




