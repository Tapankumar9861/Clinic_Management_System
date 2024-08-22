<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Clinic_MS.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
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
    <form id="form1" runat="server">
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
                  <li class="nav-item"><a class="nav-link scrollto" href="#Doctors">Doctor</a></li>
                  <li class="nav-item"><a class="nav-link scrollto" >Laboratory</a></li>
                  <li class="nav-item"><a class="nav-link scrollto" >Receptionists</a></li>
              </ul>
              <i class="bi bi-list mobile-nav-toggle"></i>
          </nav>
            <!-- <ul class="navbar-nav  ">
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
            </ul> -->
          </div>
          <div class="quote_btn-container">
            <a href="../Login/Login.aspx">
              <i class="fa fa-user" aria-hidden="true"></i>
              <span>
                Logout
              </span>
            </a>
            <%--<a href="../Login/Signup.aspx">
              <i class="fa fa-user" aria-hidden="true"></i>
              <span>
                Sign Up
              </span>
            </a>--%>
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
    </form>
</body>
</html>
