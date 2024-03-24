<%@ Page Title="" Language="C#" MasterPageFile="~/CommomMasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript">
    function isNumber(evt) {
        evt = (evt) ? evt : window.event;
        var charCode = (evt.which) ? evt.which : evt.keyCode;
        if (charCode > 31 && (charCode < 48 || charCode > 57)) {
            alert("Please enter only numbers");
            return false;
        }
        return true;
    }
    function allowOnlyLetters(e, t) {
        if (window.event) {
            var charCode = window.event.keyCode;
        }
        else if (e) {
            var charCode = e.which;
        }
        else { return true; }
        if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123) || (charCode == 32))
            return true;
        else {
            alert("Please enter only alphabets");
            return false;
        }
    }     
</script>
  
<main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Contact</h2>
          <p>Contact Us</p>
        </div>

        <div class="row mt-5">

          <div class="col-lg-4" data-aos="fade-right">
            <div class="info">
              <div class="address">
                <h4><a href="https://maps.app.goo.gl/PE6LZicrxEaN7DYh6">Location</a></h4>
                <i class="bi bi-geo-alt"></i>
                <p>The National Degree College,Pampa mahakavi road basavanagudi,bangalore-560004</p>
              </div>

              <div class="email">
               <h4><a href="mailto:ncbgudi@gmail.com">Email</a></h4>
                <i class="bi bi-envelope" ></i>
                <p>ncbgudi@gmail.com</p>
              </div>

              <div class="phone">
              <h4><a href="">Contact Number</a></h4>
                <i class="bi bi-phone"></i>
                <p>080-26674441</p>
              </div>
              <br />
              <br />
              <br />
              <div class="official website">
              <h3><a href="http://ncbgudi.com/"><u>Click here </u>for Our official website</a></h3>
              </div>

            </div>

          </div>

          <div class="col-lg-8 mt-5 mt-lg-0" data-aos="fade-left">

            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                Student Name : 
                <br />
<input type="text" class="form-control" name="cnameTextBox" placeholder="Enter Customer Name" 
required onkeypress="return allowOnlyLetters(event,this);" style="width:300px;">
                </div>
              
                          <div class="form-group mt-3">
                          Subject : 
                <br />
                <asp:TextBox ID="subjectTextBox" placeholder="Enter Last Name" runat="server" required></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject Required" 
ControlToValidate="subjectTextBox"></asp:RequiredFieldValidator>

              </div>
              
                     <div class="form-group mt-3">
                     Phone Number : 
                <br />
<input type="text" class="form-control" name="phnumTextBox" id="phnumTextBox" placeholder="Enter your phone number" 
required maxlength="10" onkeypress="return isNumber(event,this);" style="width:300px;">
              </div>
                     <div class="form-group mt-3">
                     Email Id : 
                <br />
                <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email Id" required
                style="width:300px;">
              </div>

              <div class="form-group mt-3">
              Details : 
                <br />
              <asp:TextBox ID="detailsTextBox" runat="server"
              TextMode="MultiLine"  required></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
runat="server" ErrorMessage="Details Required" 
ControlToValidate="detailsTextBox"></asp:RequiredFieldValidator>
              </div>              
              <div class="my-3">
              </div>              
              <asp:Button ID="Button1" runat="server" Text="Send" Width="200px" 
                      Height="30px" onclick="Button1_Click"  ></asp:Button>
              </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
</main>

</asp:Content>

