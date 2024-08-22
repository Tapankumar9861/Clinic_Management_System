﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prescription.aspx.cs" Inherits="Clinic_MS.Prescription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prescription</title>
    <style>
        #submitBtn {
            background-color: #007bff;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

            #submitBtn:hover {
                background-color: #0056b3;
                transform: scale(1.1);
            }

            #inputMedicine
            {
                height:100px;
                width:250px;
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
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 50px;">
            <div class="row">
                <div class="col-md-11">
                    <div class="form-container">
                        <h3><span>Prescription</span></h3>
                        <div class="form-row">
                            <div class="form-group col-lg-2">
                                <label for="inputDoctorId">Doctor Id</label>
                                <asp:DropDownList ID="inputDoctorId" runat="server" CssClass="form-control wide" AutoPostBack="true">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-lg-3">
                                <label for="inputDoctorName">Doctor Name</label>
                                <asp:TextBox ID="inputDoctorName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-lg-2">
                                <label for="inputPatientId">Patient Id</label>
                                <asp:DropDownList ID="inputPatientId" runat="server" CssClass="form-control wide" AutoPostBack="true">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-lg-3">
                                <label for="inputPatientName">Patient Name</label>
                                <asp:TextBox ID="inputPatientName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-lg-2">
                                <label for="inputLabTestId">Test Id</label>
                                <asp:DropDownList ID="inputLabTestId" runat="server" CssClass="form-control wide" AutoPostBack="true">
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-lg-3">
                                <label for="inputLabTestName">Test Name</label>
                                <asp:TextBox ID="inputLabTestName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-lg-2">
                                <label for="inputMedicine">Medicine</label>
                                <asp:TextBox ID="inputMedicine" TextMode="MultiLine" Columns="20" Rows="2" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="btn-box">
                            <asp:Button ID="submitBtn" runat="server" CssClass="btn" Text="Submit Now" OnClick="submitBtn_Click"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </form>
</body>
</html>