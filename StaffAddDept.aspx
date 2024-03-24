<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="StaffAddDept.aspx.cs" Inherits="StaffAddDept" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Add Department</h2>
          <p>Admin Add Department Page</p>
        </div>

        <div class="row mt-5">
          <div class="col-lg-8 mt-5 mt-lg-0" data-aos="fade-left">
            <form action="forms/contact.php" method="post" role="form" class="php-email-form">
              <div class="row">
                <div class="col-md-6 form-group">
              <asp:TextBox ID="deptTextBox" placeholder="Enter DeptName" runat="server" required pattern="[a-zA-Z]{3,15}"></asp:TextBox>
                </div>
                </div>
    
              <div class="row">
                <div class="col-md-6 form-group">
    <br />
              <asp:Button ID="Button1" runat="server" Text="Add Dept" onclick="Button1_Click"></asp:Button>
             
              </div>
              </div>
            </form>

          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
</main>

</asp:Content>






