<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Doctor.aspx.cs" Inherits="Clinic_MS.Doctor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctors</title>
     <style>
     #submitBtn {
         background-color: #007bff;
         transition: background-color 0.3s ease, transform 0.3s ease;
     }

         #submitBtn:hover {
             background-color: #0056b3;
             transform: scale(1.1);
         }
 </style>
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
    <header class="header_section">
    <div class="header_bottom">
        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg custom_nav-container">
                <a class="navbar-brand" href="index.html">
                    <img src="../Indexassets/images/logo.png" alt="">
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class=""></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="d-flex mr-auto flex-column flex-lg-row align-items-center">
                        <nav id="navbar">
                            <ul class="navbar-nav">
                                <li class="nav-item"><a href="../Doctor.aspx" class="nav-link scrollto" >Doctor</a></li>
                                <li class="nav-item"><a href="../Laboratorian.aspx" class="nav-link scrollto">Laboratory</a></li>
                                <li class="nav-item"><a href="../Receptionists.aspx" class="nav-link scrollto" >Receptionists</a></li>
                            </ul>
                            <i class="bi bi-list mobile-nav-toggle"></i>
                        </nav>
                    </div>
                    <div class="quote_btn-container">
                        <a href="../Login/Login.aspx">
                            <i class="fa fa-user" aria-hidden="true"></i>
                            <span>Logout</span>
                        </a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>

 <div class="container" style="margin-top: 150px;">
        <div class="row">
            <div class="col-md-11">
                <div class="form-container">
                    <h4><span>Doctors</span></h4>
                    <form id="appointmentForm" runat="server">
                        <div class="form-row">
                            <div class="form-group col-lg-3">
                                <label for="inputDocName">Name</label>
                                <asp:TextBox ID="inputDocName" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                            <div class="form-group col-lg-3">
                                <label for="inputPhone">Phone Number</label>
                                <asp:TextBox ID="inputPhone" runat="server" CssClass="form-control" placeholder="XXXXXXXXXX"></asp:TextBox>
                            </div>
                            <div class="form-group col-lg-3">
                                <label for="inputEmail">Email</label>
                                <asp:TextBox ID="inputEmail" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                            <div class="form-group col-lg-3">
                                <label for="inputGender">Gender</label>
                                <asp:DropDownList ID="inputGender" runat="server" CssClass="form-control wide">
                                    <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                    <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-lg-3">
                                <label for="inputPassword">Password</label>
                                <asp:TextBox ID="inputPassword" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                            <div class="form-group col-lg-3">
                                <label for="inputDOB">DOB</label>
                                <asp:TextBox ID="inputDOB" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="form-group col-lg-3">
                                <label for="inputspecialisation">specialisation</label>
                                <asp:TextBox ID="inputspecialisation" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                            <div class="form-group col-lg-3">
                                <label for="inputExperience">Experience</label>
                                <asp:TextBox ID="inputExperience" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                            <div class="form-group col-lg-3">
                                <label for="inputDetails">Details</label>
                                <asp:TextBox ID="inputDetails" runat="server" CssClass="form-control" placeholder=""></asp:TextBox>
                            </div>
                        </div>
                        <div class="btn-box">
                            <asp:Button ID="submitBtn" runat="server" CssClass="btn" Text="Submit Now" OnClick="submitBtn_Click"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
