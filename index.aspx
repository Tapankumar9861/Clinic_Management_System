<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="Clinic_MS.index" %>

<!DOCTYPE html>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>CLINIC_MS</title>


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="../Indexassets/css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700;900&display=swap" rel="stylesheet">

  <!--owl slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- nice select -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css" integrity="sha256-mLBIhmBvigTFWPSCtvdu6a76T+3Xyt+K571hupeFLg4=" crossorigin="anonymous" />
  <!-- datepicker -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css">
  <!-- Custom styles for this template -->
  <link href="../Indexassets/css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="../Indexassets/css/responsive.css" rel="stylesheet" />

</head>

<body>

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <div class="header_bottom">
        <div class="container-fluid">
          <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="index.html">
              <img src="../Indexassets/images/logo.png" alt="">
            </a>


            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class=""> </span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <div class="d-flex mr-auto flex-column flex-lg-row align-items-center">
                <nav id="navbar" >
                  <ul class="navbar-nav">
                      <li class="nav-item"><a class="nav-link scrollto active" href="#Home">Home</a></li>
                      <li class="nav-item"><a class="nav-link scrollto" href="#About">About</a></li>
                      <li class="nav-item"><a class="nav-link scrollto" href="#Treatment">Treatment</a></li>
                      <li class="nav-item"><a class="nav-link scrollto" href="#Doctors">Doctors</a></li>
                      <li class="nav-item"><a class="nav-link scrollto" href="#Testimonial">Testimonial</a></li class="nav-item">
                      <li class="nav-item"><a class="nav-link scrollto" href="#Contact Us">Contact Us</a></li>
                      <li class="nav-item"><a class="nav-link scrollto" href="#Book_Appointment">BOOK APPOINTMENT</a></li>
                  </ul>
                  <i class="bi bi-list mobile-nav-toggle"></i>
              </nav>
                 <%--<ul class="navbar-nav  ">
                  <li class="nav-item active">
                    <a class="nav-link" href="#Home">Home <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#About"> About</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#Treatment">Treatment</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#Doctors">Doctors</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#Testimonial">Testimonial</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#Contact Us">Contact Us</a>
                  </li>
                </ul> --%>
              </div>
              <div class="quote_btn-container">
                <a href="../Login/Login.aspx">
                  <i class="fa fa-user" aria-hidden="true"></i>
                  <span>
                    Login
                  </span>
                </a>
                <a href="../Login/Signup.aspx">
                  <i class="fa fa-user" aria-hidden="true"></i>
                  <span>
                    Sign Up
                  </span>
                </a>
                <form class="form-inline">
                  <button class="btn  my-2 my-sm-0 nav_search-btn" type="submit">
                    <i class="fa fa-search" aria-hidden="true"></i>
                  </button>
                </form>
              </div>
            </div>
          </nav>
        </div>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section id="Home" class="slider_section  " class="d-flex align-items-center">
      <div class="dot_design">
        <img src="../Indexassets/images/dots.png" alt="">
      </div>
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <div class="play_btn">
                      <button>
                        <i class="fa fa-play" aria-hidden="true"></i>
                      </button>
                    </div>
                    <h1>
                      AHTS <br>
                      <span>
                        Hospital
                      </span>
                    </h1>
                    <p>
                      when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to
                    </p>
                    <a href="#Contact Us">
                      Contact Us
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="../Indexassets/images/slider-img.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <div class="play_btn">
                      <button>
                        <i class="fa fa-play" aria-hidden="true"></i>
                      </button>
                    </div>
                    <h1>
                      AHTS <br>
                      <span>
                        Hospital
                      </span>
                    </h1>
                    <p>
                        At AHTS Clinic, we are dedicated to providing exceptional healthcare with compassion and expertise. Our experienced team offers a wide range of services to meet your health needs.
                    </p>
                    <a href="#Contact Us">
                      Contact Us
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="../Indexassets/images/slider-img.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-6">
                  <div class="detail-box">
                    <div class="play_btn">
                      <button>
                        <i class="fa fa-play" aria-hidden="true"></i>
                      </button>
                    </div>
                    <h1>
                      AHTS <br>
                      <span>
                        Hospital
                      </span>
                    </h1>
                    <p>
                        At AHTS Clinic, we are dedicated to providing exceptional healthcare with compassion and expertise. Our experienced team offers a wide range of services to meet your health needs.
                    </p>
                    <a href="">
                      Contact Us
                    </a>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="img-box">
                    <img src="../Indexassets/images/slider-img.jpg" alt="">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="carousel_btn-box">
          <a class="carousel-control-prev" href="#customCarousel1" role="button" data-slide="prev">
            <img src="../Indexassets/images/prev.png" alt="">
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#customCarousel1" role="button" data-slide="next">
            <img src="../Indexassets/images/next.png" alt="">
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>

    </section>
    <!-- end slider section -->
  </div>


  <!-- book section -->

  <section id="Book_Appointment" class="book_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="col">
          <form id="form1" runat="server">
        <div class="container">
            <h4>BOOK <span>APPOINTMENT</span></h4>
            <div class="form-row">
                <div class="form-group col-lg-4">
                    <label for="inputPatientName">Patient Name</label>
                    <asp:TextBox ID="inputPatientName" runat="server" CssClass="form-control" placeholder="Enter Patient Name"></asp:TextBox>
                </div>
                <div class="form-group col-lg-4">
                    <label for="inputDoctorName">Doctor's Name</label>
                    <asp:DropDownList ID="inputDoctorName" runat="server" CssClass="form-control wide">
                        <asp:ListItem Text="SELECT" Value=""></asp:ListItem>
                        <asp:ListItem Text="TAPAN KUMAR PATRA" Value="Tapan Kumar Patra"></asp:ListItem>
                        <asp:ListItem Text="RANJAN KUMAR PATRA" Value="Ranjan Kumar Patra"></asp:ListItem>
                        <asp:ListItem Text="ALOK KUMAR MOHARANA" Value="Alok Kumar Moharana"></asp:ListItem>
                        <asp:ListItem Text="SATYABRATA MOHANTA" Value="Satyabrata Mohanta"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group col-lg-4">
                    <label for="inputDepartmentName">Department's Name</label>
                    <asp:DropDownList ID="inputDepartmentName" runat="server" CssClass="form-control wide">
                        <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                        <asp:ListItem Text="Emergency Department" Value="Emergency Department"></asp:ListItem>
                        <asp:ListItem Text="Intensive Care Unit" Value="Intensive Care Unit"></asp:ListItem>
                        <asp:ListItem Text="Surgery" Value="Surgery"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-lg-4">
                    <label for="inputPhone">Phone Number</label>
                    <asp:TextBox ID="inputPhone" runat="server" CssClass="form-control" TextMode="Number" placeholder="XXXXXXXXXX"></asp:TextBox>
                </div>
                <div class="form-group col-lg-4">
                    <label for="inputSymptoms">Symptoms</label>
                    <asp:TextBox ID="inputSymptoms" runat="server" CssClass="form-control" placeholder="Enter Symptoms"></asp:TextBox>
                </div>
                <div class="form-group col-lg-4">
                    <label for="inputDate">Choose Date</label>
                    <asp:TextBox ID="inputDate" runat="server" CssClass="form-control"  placeholder="mm-dd-yyyy"></asp:TextBox>
                    <span class="input-group-addon date_icon">
                        <i class="fa fa-calendar" aria-hidden="true"></i>
                    </span>
                </div>
            </div>
            <div class="btn-box">
                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit Now" OnClick="btnSubmit_Click" />
            </div>
        </div>
    </form>
        </div>
      </div>
    </div>
  </section>


  <!-- end book section -->


  <!-- about section -->

  <section id="About" class="about_section">
    <div class="container  ">
      <div class="row">
        <div class="col-md-6 ">
          <div class="img-box">
            <img src="../Indexassets/images/about-img.jpg" alt="">
          </div>
        </div>
        <div class="col-md-6">
          <div class="detail-box">
            <div class="heading_container">
              <h2>
                About <span>Hospital</span>
              </h2>
            </div>
            <p>
                Hospitals have a more-or-less normal distribution of patients, with various departments handling different medical needs. This diversity in services makes it necessary to use language that is both precise and comprehensive. Instead of using placeholder text like 'Content here, content here,' medical publications and hospital websites should use specific and relevant information that reflects the nature of healthcare services provided.
            </p>
            <a href="">
              Read More
            </a>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->


  <!-- treatment section -->

  <section id="Treatment" class="treatment_section layout_padding">
    <div class="side_img">
      <img src="../Indexassets/images/treatment-side-img.jpg" alt="">
    </div>
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Hospital <span>Treatment</span>
        </h2>
      </div>
      <div class="row">
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="../Indexassets/images/t1.png" alt="">
            </div>
            <div class="detail-box">
              <h4>
                Nephrologist Care
              </h4>
              <p>
                alteration in some form, by injected humour, or randomised words which don't look even slightly e sure there isn't anything
              </p>
              <a href="">
                Read More
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="../Indexassets/images/t2.png" alt="">
            </div>
            <div class="detail-box">
              <h4>
                Eye Care
              </h4>
              <p>
                alteration in some form, by injected humour, or randomised words which don't look even slightly e sure there isn't anything
              </p>
              <a href="">
                Read More
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="../Indexassets/images/t3.png" alt="">
            </div>
            <div class="detail-box">
              <h4>
                Pediatrician Clinic
              </h4>
              <p>
                alteration in some form, by injected humour, or randomised words which don't look even slightly e sure there isn't anything
              </p>
              <a href="">
                Read More
              </a>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-3">
          <div class="box ">
            <div class="img-box">
              <img src="../Indexassets/images/t4.png" alt="">
            </div>
            <div class="detail-box">
              <h4>
                Parental Care
              </h4>
              <p>
                alteration in some form, by injected humour, or randomised words which don't look even slightly e sure there isn't anything
              </p>
              <a href="">
                Read More
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end treatment section -->

  <!-- team section -->

  <section id="Doctors" class="team_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Our <span>Doctors</span>
        </h2>
      </div>
      <div class="carousel-wrap ">
        <div class="owl-carousel team_carousel">
          <div class="item">
            <div class="box">
              <div class="img-box">
<%--                <img src="../Indexassets/images/team1.jpg" alt="" />--%>
                  <img src="Indexassets/images/Photo.jpg" style="height:280px;width:320px" alt="" />
              </div>
              <div class="detail-box">
                <h5>
                  TAPAN
                </h5>
                <h6>
                  MBBS
                </h6>
                <div class="social_box">
                  <a href="">
                    <i class="fa fa-facebook" aria-hidden="true"></i>
                  </a>
                  <a href="">
                    <i class="fa fa-twitter" aria-hidden="true"></i>
                  </a>
                  <a href="">
                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                  </a>
                  <a href="">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box">
              <div class="img-box">
                <%--<img src="../Indexassets/images/team2.jpg" alt="" />--%>
                  <img src="Indexassets/images/bhai%20photo.jpg"  style="height:280px;width:320px"/>
              </div>
              <div class="detail-box">
                <h5>
                  RANJAN
                </h5>
                <h6>
                  MBBS
                </h6>
                <div class="social_box">
                  <a href="">
                    <i class="fa fa-facebook" aria-hidden="true"></i>
                  </a>
                  <a href="">
                    <i class="fa fa-twitter" aria-hidden="true"></i>
                  </a>
                  <a href="">
                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                  </a>
                  <a href="">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="item">
            <div class="box">
              <div class="img-box">
                <img src="../Indexassets/images/team3.jpg" alt="" />
              </div>
              <div class="detail-box">
                <h5>
                  Tapan
                </h5>
                <h6>
                  MBBS
                </h6>
                <div class="social_box">
                  <a href="">
                    <i class="fa fa-facebook" aria-hidden="true"></i>
                  </a>
                  <a href="">
                    <i class="fa fa-twitter" aria-hidden="true"></i>
                  </a>
                  <a href="">
                    <i class="fa fa-linkedin" aria-hidden="true"></i>
                  </a>
                  <a href="">
                    <i class="fa fa-instagram" aria-hidden="true"></i>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end team section -->


  <!-- client section -->
  <section id="Testimonial" class="client_section layout_padding">
    <div class="container">
      <div class="heading_container">
        <h2>
          <span>Testimonial</span>
        </h2>
      </div>
    </div>
    <div class="container px-0">
      <div id="customCarousel2" class="carousel  carousel-fade" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="box">
              <div class="client_info">
                <div class="client_name">
                  <h5>
                    Morijorch
                  </h5>
                  <h6>
                    Default model text
                  </h6>
                </div>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <p>
                editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Variouseditors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Variouseditors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various
              </p>
            </div>
          </div>
          <div class="carousel-item">
            <div class="box">
              <div class="client_info">
                <div class="client_name">
                  <h5>
                    Rochak
                  </h5>
                  <h6>
                    Default model text
                  </h6>
                </div>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <p>
                Variouseditors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Variouseditors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy.
              </p>
            </div>
          </div>
          <div class="carousel-item">
            <div class="box">
              <div class="client_info">
                <div class="client_name">
                  <h5>
                    Brad Johns
                  </h5>
                  <h6>
                    Default model text
                  </h6>
                </div>
                <i class="fa fa-quote-left" aria-hidden="true"></i>
              </div>
              <p>
                Variouseditors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy, editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Variouseditors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various
              </p>
            </div>
          </div>
        </div>
        <div class="carousel_btn-box">
          <a class="carousel-control-prev" href="#customCarousel2" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#customCarousel2" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </div>
  </section>
  <!-- end client section -->

  <!-- contact section -->
  <section id="Contact Us" class="contact_section layout_padding-bottom">
    <div class="container">
      <div class="heading_container">
        <h2>
          Get In Touch
        </h2>
      </div>
      <div class="row">
        <div class="col-md-7">
          <div class="form_container">
            <form action="">
              <div>
                <input type="text" placeholder="Full Name" />
              </div>
              <div>
                <input type="email" placeholder="Email" />
              </div>
              <div>
                <input type="text" placeholder="Phone Number" />
              </div>
              <div>
                <input type="text" class="message-box" placeholder="Message" />
              </div>
              <div class="btn_box">
                <button>
                  SEND
                </button>
              </div>
            </form>
          </div>
        </div>
        <div class="col-md-5">
          <div class="img-box">
            <img src="../Indexassets/images/contact-img.jpg" alt="">
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end contact section -->

  <!-- info section -->
  <section id="" class="info_section ">
    <div class="container">
      <div class="info_top">
        <div class="info_logo">
          <a href="">
            <img src="../Indexassets/images/logo.png" alt="">
          </a>
        </div>
        <div class="info_form">
          <form action="">
            <input type="email" placeholder="Your email">
            <button>
              Subscribe
            </button>
          </form>
        </div>
      </div>
      <div class="info_bottom layout_padding2">
        <div class="row info_main_row">
          <div class="col-md-6 col-lg-3">
            <h5>
              Address
            </h5>
            <div class="info_contact">
              <a href="">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span>
                  Location
                </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>
                  Call +01 1234567890
                </span>
              </a>
              <a href="">
                <i class="fa fa-envelope"></i>
                <span>
                  demo@gmail.com
                </span>
              </a>
            </div>
            <div class="social_box">
              <a href="">
                <i class="fa fa-facebook" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-twitter" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-linkedin" aria-hidden="true"></i>
              </a>
              <a href="">
                <i class="fa fa-instagram" aria-hidden="true"></i>
              </a>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="info_links">
              <h5>
                Useful link
              </h5>
              <div class="info_links_menu">
                <a class="active" href="index.html">
                  Home
                </a>
                <a href="about.html">
                  About
                </a>
                <a href="treatment.html">
                  Treatment
                </a>
                <a href="doctor.html">
                  Doctors
                </a>
                <a href="testimonial.html">
                  Testimonial
                </a>
                <a href="contact.html">
                  Contact us
                </a>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="info_post">
              <h5>
                LATEST POSTS
              </h5>
              <div class="post_box">
                <div class="img-box">
                  <img src="../Indexassets/images/post1.jpg" alt="">
                </div>
                <p>
                  Normal
                  distribution
                </p>
              </div>
              <div class="post_box">
                <div class="img-box">
                  <img src="../Indexassets/images/post2.jpg" alt="">
                </div>
                <p>
                  Normal
                  distribution
                </p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="info_post">
              <h5>
                News
              </h5>
              <div class="post_box">
                <div class="img-box">
                  <img src="../Indexassets/images/post3.jpg" alt="">
                </div>
                <p>
                  Normal
                  distribution
                </p>
              </div>
              <div class="post_box">
                <div class="img-box">
                  <img src="../Indexassets/images/post4.png" alt="">
                </div>
                <p>
                  Normal
                  distribution
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end info_section -->


  <!-- footer section -->
  <footer class="footer_section">
    <div class="container">
      <p>
        &copy; <span id="displayYear"></span> All Rights Reserved By
        <a href="https://html.design/">Free Html Templates</a>
      </p>
    </div>
  </footer>
  <!-- footer section -->

  <!-- jQery -->
  <script src="../Indexassets/js/jquery-3.4.1.min.js"></script>
  <!-- bootstrap js -->
  <script src="../Indexassets/js/bootstrap.js"></script>
  <!-- nice select -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js" integrity="sha256-Zr3vByTlMGQhvMfgkQ5BtWRSKBGa2QlspKYJnkjZTmo=" crossorigin="anonymous"></script>
  <!-- owl slider -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
  <!-- datepicker -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
  <!-- custom js -->
  <script src="../Indexassets/js/custom.js"></script>


</body>

</html>