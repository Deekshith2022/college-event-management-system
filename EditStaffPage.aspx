<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditStaffPage.aspx.cs" Inherits="EditStaffPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Edit Staff</h2>
          <p>Edit Staff Page</p>
        </div>

        <div class="row mt-5">
          <div class="col-lg-8 mt-5 mt-lg-0" data-aos="fade-left">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">

              <div class="form-group mt-3">
              Staff Id : <br />
              <asp:TextBox ID="staffidTextBox" placeholder="Enter Staff Id" ReadOnly runat="server"></asp:TextBox>
                 
                </div>

                <div class="form-group mt-3">
                First Name : 
              <asp:TextBox ID="fnameTextBox" placeholder="Enter First Name" runat="server"></asp:TextBox>
                 
                </div>
                <div class="form-group mt-3">
                Last Name : 
                <asp:TextBox ID="lnameTextBox" placeholder="Enter Last Name" runat="server"></asp:TextBox>
                  
              </div>
              <div class="form-group mt-3">
              User Name : 
              <asp:TextBox ID="unameTextBox" runat="server"  placeholder="Enter User Name" ></asp:TextBox>
               
              </div>

                     <div class="form-group mt-3">
                     Password : 
              <asp:TextBox ID="pwdTextBox" runat="server"  placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                
              </div>

                     <div class="form-group mt-3">
                     Phone Number : 
              <asp:TextBox ID="phnumTextBox" runat="server"  placeholder="Enter Phone Number" ></asp:TextBox>
                
              </div>

                     <div class="form-group mt-3">
                     Email Id : 
              <asp:TextBox ID="emailTextBox" runat="server"  placeholder="Enter Email Id"></asp:TextBox>
                
              </div>

              <div class="form-group mt-3">
              Address : 
              <asp:TextBox ID="addressTextBox" runat="server"
              TextMode="MultiLine"></asp:TextBox>
                
              </div>

              <div class="form-group mt-3">
              Upload Aadhar :
              <asp:FileUpload ID="aadharFileUpload" runat="server"></asp:FileUpload>
              
              </div>


              <div class="form-group mt-3">
              Upload Image : 
              <asp:FileUpload ID="imageFileUpload" runat="server"></asp:FileUpload>
              
              </div>
              <div class="my-3">
               
              <div class="text-center">
              <asp:Button ID="Button1" runat="server" Text="Add Staff" onclick="Button1_Click"></asp:Button>
              

              </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
</main>

</asp:Content>


