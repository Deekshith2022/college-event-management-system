<%@ Page Title="" Language="C#" MasterPageFile="~/StaffMasterPage.master" AutoEventWireup="true" CodeFile="StaffHomePage.aspx.cs" Inherits="StaffHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<main id="main">
    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="section-title" data-aos="zoom-out">
          <h2>About</h2>
          <p>Who we are</p>
        </div>

        <div class="row content" data-aos="fade-up">
          <div class="col-lg-6">
            <p>
              NCBgudi was started in the year 1920. The college was founded by Sampath Giri Rao.Educationalist Dr.H.Narasimhaiah was the chairman of NES until his death.Our college is famous in the name of providing sandalwood actors,sports mens etc so keeping the studies part aside we in our college have another world for students we call it as events.
            </p>
            <ul>
        
    

               <li><i class="ri-check-double-line"></i> Drama competitions </li>
              <li><i class="ri-check-double-line"></i> Traditional day</li>
              <li><i class="ri-check-double-line"></i> College Annual day</li>
              <li><i class="ri-check-double-line"></i> Sports day</li>
              <li><i class="ri-check-double-line"></i> Intercollege competitions</li>
              <li><i class="ri-check-double-line"></i> Convocation day and SendOff day</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
               Events are the only thing which bring smile and happiness with it,when students are busy in their academics and completely stressed these events bring them some relief and happiness,even Dr.H.Narasimhaiah was very fond of events at his time he encouraged students to praticipate in events and have seen his happiness in students. 
              <br />
            </p>
            
          </div>
        </div>

      </div>
    </section><!-- End About Section -->

    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
      <div class="container">

        <ul class="nav nav-tabs row d-flex">
          <li class="nav-item col-3" data-aos="zoom-in">
            <a class="nav-link active show" data-bs-toggle="tab" href="#tab-1">
              <i class="ri-gps-line"></i>
              <h4 class="d-none d-lg-block">Sports Events</h4>
            </a>
          </li>
          <li class="nav-item col-3" data-aos="zoom-in" data-aos-delay="100">
            <a class="nav-link" data-bs-toggle="tab" href="#tab-2">
              <i class="ri-body-scan-line"></i>
              <h4 class="d-none d-lg-block">Intercollege Competitions</h4>
            </a>
          </li>
          <li class="nav-item col-3" data-aos="zoom-in" data-aos-delay="200">
            <a class="nav-link" data-bs-toggle="tab" href="#tab-3">
              <i class="ri-sun-line"></i>
              <h4 class="d-none d-lg-block">Placement Activities</h4>
            </a>
          </li>
          <li class="nav-item col-3" data-aos="zoom-in" data-aos-delay="300">
            <a class="nav-link" data-bs-toggle="tab" href="#tab-4">
              <i class="ri-store-line"></i>
              <h4 class="d-none d-lg-block">Other College Events</h4>
            </a>
          </li>
        </ul>

        <div class="tab-content" data-aos="fade-up">
          <div class="tab-pane active show" id="tab-1">
            <div class="row">
              <div class="col-lg-6 order-2 order-lg-1 mt-3 mt-lg-0">
                <h3>This website gives details for events which take place in our college such as Sports,Cultural events,college fest,intercollege competitions etc...</h3>
                <p class="fst-italic">
                   Event management in our college is done by student volunteers,NSS volunteers and NCC cadets.
                  <br /> While Students tend to work on the overall event concept,Professors deal with the details of its execution.
                </p>
                <ul>
                  <li><i class="ri-check-double-line"></i> Event Venue conformation</li>
                  <li><i class="ri-check-double-line"></i> Preparing for Event</li>
                  <li><i class="ri-check-double-line"></i>Monitoring the whole event by Volunteers</li>
                </ul>
                <p>
                  Events in our college takes place with the co-ordination of Professors and Students.Where Professors select the capable Volunteers from each class.
                  and then give them responsibilities such as welcoming guests,arrangement of seats,maintaining discipline of students and guiding outsidiers to take their seat.
                </p>
              </div>
              <div class="col-lg-6 order-1 order-lg-2 text-center">
                <img src="assets/img/testimonials/ncb1.jpeg" alt="" class="img-fluid">
              </div>
            </div>
          </div>

        </div>
        <br />
        <br />
        <br />
        <br />
        <label style="color: #000000; font-weight: bold; font-family: 'MS Sans Serif'">National College Basavanagudi-2023,CopyRights->All CopyRights are reserved by National College Basavanagudi,Developed and designed by Deekshith and Vasanth</label>
      </div>
    </section><!-- End Features Section -->
</main>

</asp:Content>



