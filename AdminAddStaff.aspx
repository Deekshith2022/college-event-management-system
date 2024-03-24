<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminAddStaff.aspx.cs" Inherits="AdminAddStaff" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Add Staff</h2>
          <p>Add Staff Page</p>
        </div>

        <div class="row mt-5">
          <div class="col-lg-8 mt-5 mt-lg-0" data-aos="fade-left">
            <form method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
                First Name : 
                <br />
              <asp:TextBox ID="fnameTextBox" placeholder="Enter First Name" runat="server" required pattern="[a-zA-Z]{3,15}" ToolTip="First Name Accepts only 3 to 15 characters"></asp:TextBox><br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="First Name Required" ControlToValidate="fnameTextBox"></asp:RequiredFieldValidator>
       
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"                                        ErrorMessage="First Name should be 3 to 15 characters" ControlToValidate="fnameTextBox"                     ValidationExpression="[a-zA-Z]{3,15}"> </asp:RegularExpressionValidator>


                  
                </div>
                <div class="form-group mt-3">
                Last Name : 
                <br />
                <asp:TextBox ID="lnameTextBox" placeholder="Enter Last Name" runat="server" required pattern="[a-zA-Z]{3,15}" ToolTip="Accepts only 3 to 15 characters"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name Required" ControlToValidate="lnameTextBox"></asp:RequiredFieldValidator>
       
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"                                        ErrorMessage="Last Name should be 3 to 15 characters" ControlToValidate="lnameTextBox"                     ValidationExpression="[a-zA-Z]{3,15}"> </asp:RegularExpressionValidator>



                          <div class="form-group mt-3">
                          Department : 
                <br />
                <asp:DropDownList ID="deptDropDownList" runat="server" Width="200px">
                </asp:DropDownList>
                  
              </div>
              <div class="form-group mt-3">
              Login Name : 
                <br />
              <asp:TextBox ID="unameTextBox" runat="server"  placeholder="Enter User Name" required pattern="[a-zA-Z0-9]{3,15}" ToolTip="Accepts only 3 to 15 characters"></asp:TextBox>
              <br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="User Name Required" ControlToValidate="unameTextBox"></asp:RequiredFieldValidator>
       


               
              </div>

                     <div class="form-group mt-3">
                     Password : 
                <br />
              <asp:TextBox ID="pwdTextBox" runat="server"  placeholder="Enter Password" TextMode="Password"></asp:TextBox><br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password Required" ControlToValidate="pwdTextBox"></asp:RequiredFieldValidator>
               
              </div>

                     <div class="form-group mt-3">
                     Phone Number : 
                <br />
              <asp:TextBox ID="phnumTextBox" runat="server"  placeholder="Enter Phone Number" required ToolTip="Phone number should be 10 digits" pattern="[0-9]{10}"
              MaxLength="10"></asp:TextBox><br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Phone Number Required" ControlToValidate="phnumTextBox"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Phone Number Should be 10 digits" ControlToValidate="phnumTextBox" ValidationExpression="(D-)?\d{10}"> </asp:RegularExpressionValidator>

                
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
              <asp:TextBox ID="addressTextBox" runat="server"
              TextMode="MultiLine"></asp:TextBox>
              <br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Address Required" ControlToValidate="addressTextBox"></asp:RequiredFieldValidator>


                
              </div>

              <div class="form-group mt-3">
              Aadhar Upload : 
              <br />
              <asp:FileUpload ID="aadharFileUpload" runat="server"></asp:FileUpload>
             
              </div>


              <div class="form-group mt-3">
              Image Upload : 
              <br />
              <asp:FileUpload ID="imageFileUpload" runat="server"></asp:FileUpload>
              
              </div>
              <div class="my-3">
               
              
              <asp:Button ID="Button1" runat="server" Text="Add Staff"  Width="200px" Height="40px"
  onclick="Button1_Click"></asp:Button>
              

              </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
</main>

</asp:Content>
