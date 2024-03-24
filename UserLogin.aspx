<%@ Page Title="" Language="C#" MasterPageFile="~/CommomMasterPage.master" AutoEventWireup="true" CodeFile="UserLogin.aspx.cs" Inherits="UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>User Login</h2>
          <p>User Login Page</p>
        </div>

        <div class="row mt-5">
          <div class="col-lg-8 mt-5 mt-lg-0" data-aos="fade-left">

            <div class="row">
                <div class="col-md-6 form-group">
                  <asp:TextBox ID="UnameTextBox" runat="server"  placeholder="User Name" required></asp:TextBox>
                </div>
              </div>
              <br />
              <div class="row">
                <div class="col-md-6 form-group mt-3 mt-md-0">
                <asp:TextBox ID="PwdTextBox" runat="server"  placeholder="Enter Password" required TextMode="Password"></asp:TextBox>
                </div>
              </div>
              <br />
              <div class="row">
                <div class="col-md-6 form-group mt-3 mt-md-0">
                  <asp:Button ID="Button1" runat="server" Text="User Login" 
                        onclick="Button1_Click"></asp:Button>
                </div>
              </div>
              <div class="my-3">
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
</main>


</asp:Content>




