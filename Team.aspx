<%@ Page Title="" Language="C#" MasterPageFile="~/CommomMasterPage.master" AutoEventWireup="true" CodeFile="Team.aspx.cs" Inherits="Team" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!-- ======= Team Section ======= -->
    <section id="team" class="team">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>Team</h2>
          <p>Our Hardworking Team</p>
        </div>

        <div class="row">

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up">
              <div class="member-img">
                <img src="assets/img/team/WhatsApp%20Image%202023-06-26%20at%208.17.20%20PM.jpeg"  class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>Deekshith Aarya</h4>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" >
              <div class="member-img">
                <img src="assets/img/WhatsApp%20Image%202023-07-27%20at%2010.12.09%20PM.jpeg" class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>Vasanth N </h4>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="200">
              <div class="member-img">
                <img src="assets/img/team/team-3.jpg" class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>William Anderson</h4>
              </div>
            </div>
          </div>

          <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
            <div class="member" data-aos="fade-up" data-aos-delay="300">
              <div class="member-img">
                <img src="assets/img/team/team-4.jpg" class="img-fluid" alt="">
              </div>
              <div class="member-info">
                <h4>Amanda Jepson</h4>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End Team Section -->

</asp:Content>

