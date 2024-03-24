<%@ Page Title="" Language="C#" MasterPageFile="~/CommomMasterPage.master" AutoEventWireup="true" CodeFile="AddNewUser.aspx.cs" Inherits="AddNewUser" %>

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
          <h2>Add User</h2>
          <p style="background-image: url('assets/img/Event1.jpeg')">Add User Page</p>
        </div>

        <div class="row mt-5" style="background-image:url('/assets/img/Event1.jpg');">
          <div class="col-lg-8 mt-5 mt-lg-0" data-aos="fade-left">
<form method="post" role="form">
<div class="form-group mt-3">
                First Name : 
                <br />
              
<input type="text" class="form-control" name="fnameTextBox" name="fnameTextBox" placeholder="Enter First Name" 
required onkeypress="return allowOnlyLetters(event,this);" style="width:300px;">
                </div>
              
                <div class="form-group mt-3">
                Last Name : 
                <br />
           <br />

<input type="text" class="form-control" name="lnameTextBox" name="lnameTextBox" placeholder="Enter Last Name" 
required onkeypress="return allowOnlyLetters(event,this);" style="width:300px;">
</div>

                         
              <div class="form-group mt-3">
              Login Name : 
                <br />
              
                <input type="text" class="form-control" name="unameTextBox" id="unameTextBox" placeholder="Enter Login Name" 
required style="width:300px;">
              </div>

                     <div class="form-group mt-3">
                     Password : 
                <br />
             
                <input type="password" class="form-control" name="pwdTextBox" id="Text1" placeholder="Enter Password" 
required style="width:300px;">
              </div>

                     <div class="form-group mt-3">
                     Phone Number : 
                <br />
             
                <input type="text" class="form-control" name="phnumTextBox" id="phnumTextBox" placeholder="Enter your phone number" required maxlength="10" onkeypress="return isNumber(event,this);"
                 style="width:300px;">
              </div>

                     <div class="form-group mt-3">
                     Email Id : 
                <br />
             
                <input type="email" class="form-control" name="email" id="email" placeholder="Enter EmailId" required
                style="width:300px;">
                
              </div>

              <div class="form-group mt-3">
              Address : 
                <br />
                <textarea name="addressTextBox" id="addressTextBox" placeholder="Enter Address" required
                rows="5" cols="30"> </textarea>
             
              </div>

              <div class="form-group mt-3">
              Aadhar Upload : 
              <br />
              <asp:FileUpload ID="aadharFileUpload" runat="server"></asp:FileUpload>
              </div>


              <div class="form-group mt-3">
              Student ID Upload : 
              <br />
              <asp:FileUpload ID="imageFileUpload" runat="server"></asp:FileUpload>
              </div>
              <div class="my-3">

              
<asp:Button ID="Button1" runat="server" Text="Add Student" onclick="Button1_Click" />
                  <br />
                  <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
</form>
</div>

        </div>

      </div>
    </section><!-- End Contact Section -->
</main>
</asp:Content>

