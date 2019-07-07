 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOME.aspx.cs"  EnableEventValidation="false" Inherits="Mainpage_HOME" %>
 <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %> <%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Replenish HR Management Category Bootstrap responsive Web Template | Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Replenish a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="../Maintemp/css/bootstrap.css" rel="stylesheet" />

    <link href="../Maintemp/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="../Maintemp/css/zoomslider.css" rel='stylesheet' type='text/css' />
    <link href="../Maintemp/css/style6.css" rel='stylesheet' type='text/css' />
    <link href="../Maintemp/css/style.css" rel='stylesheet' type='text/css' />
    <link href="../Maintemp/css/fontawesome-all.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
   
    <style type="text/css">
        .auto-style1 {
            color: #990033;
        }
    </style>
    <script src="../sweetalert.min.js"></script>
    
        <script type="text/javascript" >

            function successalert() {
                swal({
                    title: "Successfully Saved Details!",
                    text: "You clicked the button!",
                    icon: "success",
                    button: "Ok!",
                });
                
            }

        </script>

     <script type="text/javascript" >

         function invalid() {
                swal({
                    title: "Invalid User..!!!",
                    text: "You clicked the button!",
                    icon: "warning",
                    button: "Ok!",
                });                
            }

        </script>
   
    <script src="../Maintemp/js/jquery-2.2.3.min.js"></script>
    <script type="text/javascript" >
$(document).ready(function() {
    window.history.pushState(null, "", window.location.href);        
    window.onpopstate = function() {
        window.history.pushState(null, "", window.location.href);
    };
});
</script>

</head>
<body>
   <%-- <form id="form1" runat="server" method="post">--%>
    <div>
      <!-- banner-inner -->
        
    <div id="demo-1" data-zs-src='["../Maintemp/images/XeJ71D.png", "../Maintemp/images/wp3739049.jpg","../Maintemp/images/9.jpg", "../Maintemp/images/polit.jpg"]' data-zs-overlay="dots">
        <div class="demo-inner-content">
            <div class="header-top">
                <header>
                    <div class="top-head ml-lg-auto text-center">
                        <div class="row">

                            <div class="col-md-4">
                                <span>Welcome Back!</span>
                            </div>
                            <div class="col-md-3 sign-btn">
                                <a href="#" data-toggle="modal" data-target="#exampleModalCenter">
                                    <i class="fas fa-lock"></i> Sign In</a>
                            </div>
                            <div class="col-md-3 sign-btn">
                                <a href="#" data-toggle="modal" data-target="#exampleModalCenter2">
                                    <i class="far fa-user"></i> Register</a>
                            </div> 
                            <%--<div class="col-md-3 sign-btn">
                                <a href="#" data-toggle="modal" data-target="#exampleModalCenter3">
                                    <i class="far fa-user"></i>Candidate Register</a>
                            </div>--%>
                            <%--<div class="search col-md-2">
                                <div class="mobile-nav-button">
                                    <button id="trigger-overlay" type="button">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                                <!-- open/close -->
                                <div class="overlay overlay-door">
                                    <button type="button" class="overlay-close">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                    <form action="#" method="post" class="d-flex">
                                        <input class="form-control" type="search" placeholder="Search here..." required="">
                                        <button type="submit" class="btn btn-primary submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </form>
                                </div>
                                <!-- open/close -->
                            </div>--%>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="logo">
                            <h1>
                                <a class="navbar-brand" href="index.html">
                                   <%-- <img src="../Maintemp/images/vote.png"  style="width:30%;border-radius: 50%"/>--%>
                                   <%-- <i class="fab fa-codepen"></i> E-VOTE</a>--%>
                                    <img src="../logo%20(2).png" style="width:188px"/>
                                    <%--<img src="../icon.png" /> E-VOTE--%>
                            </h1>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon">
                                <i class="fas fa-bars"></i>
                            </span>

                        </button>

                        
                    </nav>
                </header>
            </div>
            <!--/banner-info-w3layouts-->
            <%--<div class="banner-info-w3layouts text-center">

                <h3>
                    <span>Find the Right Job</span> .
                    <span>Right Now.</span>
                </h3>
                <p>Your job search starts and ends with us.</p>

                <form action="#" method="post" class="ban-form row">
                    <div class="col-md-3 banf">
                        <input class="form-control" type="text" name="Name" placeholder="Name" required="">
                    </div>
                    <div class="col-md-3 banf">
                        <select class="form-control" id="country12">
                            <option>Location</option>
                            <option>Afghanistan</option>
                            <option>Alaska</option>
                            <option>Andong</option>
                            <option>Bologna</option>
                            <option>Canada</option>
                            <option>France</option>
                            <option>Germany</option>
                        </select>
                    </div>
                    <div class="col-md-3 banf">
                        <select id="country13" class="form-control">
                            <option>Finance Sector</option>
                            <option>Banking Sector</option>
                            <option> Engineering Sector</option>
                            <option>Accounting Jobs</option>
                            <option>Interior Design</option>
                            <option>Export Import Jobs</option>
                        </select>

                    </div>
                    <div class="col-md-3 banf">
                        <button class="btn1" type="submit">FIND JOB
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </form>
            </div>--%>
            <!--//banner-info-w3layouts-->
        </div>
    </div>

        <br />
        <br />
       <%-- <section class="structure_page_section">
          <div class="row calign mbx">
              <h1 class="secondary-title-underline">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E-VOTING</h1>
           <br />
              <!-- <h1 class="title-underline soho-regular">Scytl Online Voting</h1> -->
          </div>
          <div class="row">
                                        <div class="col-xs-4 col-md-4 aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
                              <article class="item_image_text">
                                 <img class="item_image_img" src="https://www.scytl.com/wp-content/uploads/2017/03/scytl-participation-icon.png" alt="Scytl - PARTICIPATION – Icon">
                   				<h4 class="secondary-title-underline secondary-title-underline-small mvm">Increase Voter Participation</h4>
                   				Maximum participation by enabling remote and disabled citizens to vote from anywhere.                              </article>
                          </div>
                                       <div class="col-xs-4 col-md-4 aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
                              <article class="item_image_text">
                                 <img class="item_image_img" src="https://www.scytl.com/wp-content/uploads/2017/03/scytl-efficiency-icon.png" alt="Scytl - EFFICIENCY – Icon">
                   				<h4 class="secondary-title-underline secondary-title-underline-small mvm">Ensure Efficiency<br>
<br>
</h4>
                   				Operational efficiencies resulting from significantly reduced costs of organizing, running and closing an election.                              </article>
                          </div>
                                       <div class="col-xs-4 col-md-4 aos-init aos-animate" data-aos="fade-up" data-aos-delay="300">
                              <article class="item_image_text">
                                 <img class="item_image_img" src="https://www.scytl.com/wp-content/uploads/2017/03/scytl-max-privacy-icon.png" alt="Scytl - MAX PRIVACY – Icon">
                   				<h4 class="secondary-title-underline secondary-title-underline-small mvm">Maximum Privacy<br>
<br>
</h4>
                   				Improved security, privacy and auditability when compared to postal or proxy voting.                              </article>
                          </div>
                         </div>

            
      </section>--%>








    <!-- banner-text -->
    <!-- banner-bottom-wthree -->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3" >
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <h3 class="tittle text-center mb-lg-4 mb-3">
                    <span></span>Online Voting</h3>
                <div class="row populor_category_grids mt-5">
                    <div class="col-md-3 category_grid">
                       <div class="view view3 view-tenth">
                            <div class="category_text_box">
                                
                          <img class="item_image_img" src="https://www.scytl.com/wp-content/uploads/2017/03/scytl-participation-icon.png" alt="Scytl - PARTICIPATION – Icon">
                             <%--   <i class="fas fa-users"></i>--%>
                                <h3>Increase Voter Participation</h3>
                                <p>(Maximum participation by enabling remote and disabled citizens to vote from anywhere)</p>
                            </div>
                            <div class="mask">
                                <a href="#">
                                    <img src="images/p4.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                  <div class="col-md-3 category_grid">
                       <%--div class="col-md-3 category_grid">--%>
                        <div class="view view4 view-tenth">
                            <div class="category_text_box">
                                <img class="item_image_img" src="https://www.scytl.com/wp-content/uploads/2017/03/scytl-efficiency-icon.png" alt="Scytl - EFFICIENCY – Icon">
                          <%--      <i class="fas fa-users"></i>--%>
                                <h3>Ensure Efficiency </h3>
                                <p>(Improved security, privacy and auditability when compared to postal or proxy voting)</p>
                            </div>
                            <div class="mask">
                                <a href="#">
                                    <img src="images/p4.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                  

                    </div>

                    <div class="col-md-3 category_grid">
                              

                        <div class="view view5 view-tenth">
                            <div class="category_text_box">
                                  <img class="item_image_img" src="https://www.scytl.com/wp-content/uploads/2017/03/scytl-max-privacy-icon.png" alt="Scytl - MAX PRIVACY – Icon">
                              <%--  <i class="fas fa-users"></i>--%>
                                <h3>Maximum Privacy </h3>
                                <p>(Improved security, privacy and auditability when compared to postal or proxy voting)</p>
                            </div>
                            <div class="mask">
                                <a href="#">
                                    <img src="images/p4.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>




                    </div>
                 
                        
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </section>
    <!-- //banner-bottom-wthree -->
    <!--/process-->
    <%--<section class="banner-bottom-wthree pb-lg-5 pb-md-4 pb-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
			<!---728x90--->
                <h3 class="tittle text-center mb-lg-4 mb-3">
			
                    <span>Some Info</span>Latest Job flow-positions</h3>
					<!---728x90--->
                <div class="tabs mt-5">
                    <ul class="nav nav-pills my-4" id="pills-tab" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Featured Jobs</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Recent Jobs</a>
                        </li>

                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
                            <div class="menu-grids mt-4">
                                <div class="row t-in">
                                    <div class="col-lg-8 text-info-sec">
                                        <!--/job1-->

                                        <div class="job-post-main row">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">User Interface Project Manager</a>
                                                    </h4>
                                                    <p class="my-2">Technology Management Consulting</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Comera</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Full Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job1-->
                                        <!--/job2-->

                                        <div class="job-post-main row my-3">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Regional Sales Manager</a>
                                                    </h4>
                                                    <p class="my-2">Company Name goes here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Comera</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Part Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job2-->
                                        <!--/job3-->

                                        <div class="job-post-main row">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Web Designer / Developer</a>
                                                    </h4>
                                                    <p class="my-2">Company Name goes here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Chicago</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Full Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job3-->
                                        <!--/job4-->

                                        <div class="job-post-main row mt-3">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Marketing Director</a>
                                                    </h4>
                                                    <p class="my-2">Technology Management Consulting</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Rennes</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> France</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Full Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job4-->
                                        <!--/job1-->

                                        <div class="job-post-main row mt-3">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">Developer for Site Maintenance </a>
                                                    </h4>
                                                    <p class="my-2">Company nName gose here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Comera</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Part Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job1-->
                                        <!--/job2-->

                                        <div class="job-post-main row my-3">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Content Writer and Speaker</a>
                                                    </h4>
                                                    <p class="my-2">Company Name goes here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Comera</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 200000 - 100000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Part Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job2-->
                                        <!--/job3-->

                                        <div class="job-post-main row">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Web Designer / Developer</a>
                                                    </h4>
                                                    <p class="my-2">Company Name goes here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Chicago</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Full Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job3-->
                                        <!--/job4-->

                                        <div class="job-post-main row mt-3">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Marketing Director</a>
                                                    </h4>
                                                    <p class="my-2">Technology Management Consulting</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Rennes</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> France</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Full Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job4-->
                                    </div>
                                    <div class="col-lg-4 text-info-sec">
                                        <img src="images/job-1.jpg" alt=" " class="img-fluid" />
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
                            <div class="menu-grids mt-4">
                                <div class="row t-in">
                                    <div class="col-lg-4 text-info-sec">
                                        <img src="images/job-2.jpg" alt=" " class="img-fluid" />
                                    </div>
                                    <div class="col-lg-8 text-info-sec">
                                        <!--/job1-->

                                        <div class="job-post-main row">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">Developer for Site Maintenance </a>
                                                    </h4>
                                                    <p class="my-2">Company nName gose here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Comera</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Part Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job1-->
                                        <!--/job2-->

                                        <div class="job-post-main row my-3">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Content Writer and Speaker</a>
                                                    </h4>
                                                    <p class="my-2">Company Name goes here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Comera</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 200000 - 100000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Part Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job2-->
                                        <!--/job3-->

                                        <div class="job-post-main row">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Web Designer / Developer</a>
                                                    </h4>
                                                    <p class="my-2">Company Name goes here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Chicago</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Full Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job3-->
                                        <!--/job4-->

                                        <div class="job-post-main row mt-3">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Marketing Director</a>
                                                    </h4>
                                                    <p class="my-2">Technology Management Consulting</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Rennes</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> France</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Full Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job4-->
                                        <!--/job1-->

                                        <div class="job-post-main row mt-3">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">Developer for Site Maintenance </a>
                                                    </h4>
                                                    <p class="my-2">Company nName gose here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Comera</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Part Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job1-->
                                        <!--/job2-->

                                        <div class="job-post-main row my-3">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Content Writer and Speaker</a>
                                                    </h4>
                                                    <p class="my-2">Company Name goes here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Comera</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 200000 - 100000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Part Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job2-->
                                        <!--/job3-->

                                        <div class="job-post-main row">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Web Designer / Developer</a>
                                                    </h4>
                                                    <p class="my-2">Company Name goes here</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Chicago</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> California</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Part Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job3-->
                                        <!--/job4-->

                                        <div class="job-post-main row mt-3">
                                            <div class="col-md-9 job-post-info text-left">
                                                <div class="job-post-icon">
                                                    <i class="fas fa-briefcase"></i>
                                                </div>
                                                <div class="job-single-sec">
                                                    <h4>
                                                        <a href="#">
                                                            Marketing Director</a>
                                                    </h4>
                                                    <p class="my-2">Technology Management Consulting</p>
                                                    <ul class="job-list-info d-flex">
                                                        <li>
                                                            <i class="fas fa-briefcase"></i> Rennes</li>
                                                        <li>
                                                            <i class="fas fa-map-marker-alt"></i> France</li>
                                                        <li>
                                                            <i class="fas fa-dollar-sign"></i> 300000 - 500000 / Annum</li>
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                            <div class="col-md-3 job-single-time text-right">
                                                <span class="job-time">
                                                    <i class="far fa-heart"></i> Full Time</span>
                                                <a href="#" class="aply-btn ">Appy Now</a>
                                            </div>
                                        </div>
                                        <!--//job4-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <!--//preocess-->

    <!--job -->
    <%--<section class="banner-bottom-wthree mid py-lg-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <div class="mid-info text-center pt-3">
                    <h3 class="tittle text-center cen mb-lg-5 mb-3">
                        <span>Some Info</span>Make a Difference with Your Online Resume!</h3>
                    <p></p>
                    <div class="resume">
                        <a href="#" data-toggle="modal" data-target="#exampleModalCenter2">
                            <i class="far fa-user"></i> Create Acccount</a>
                    </div>
                </div>

            </div>
        </div>
    </section>--%>
    <!--//job -->
    <!--job -->
    <%--<section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
			<!---728x90--->
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span>Some Info</span>Selection Process</h3>

                <div class="mid-info text-center mt-5">
                    <div class="parent-chart">
                        <div class="level lev-one top-level">
                            <div class="flow-position">
                                <img src="images/s1.jpg" alt=" " class="img-fluid rounded-circle">
                                <br>
                                <strong>Recruitment Process</strong>
                                <br> Lorem ipsum
                            </div>
                        </div>
                        <div class="flow-chart">
                            <div class="level lev-two last-lev">
                                <div class="flow-position">
                                    <img src="images/s2.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>1.Job Vacancy</strong>
                                    <br> Lorem ipsum
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                    <img src="images/s3.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>2. Job Analysis
                                    </strong>
                                    <br> Lorem ipsum
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                    <img src="images/s4.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>3. Attracting Candidates
                                    </strong>
                                    <br> Lorem ipsum
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                    <img src="images/s5.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>4.Screening </strong>
                                    <br> Lorem ipsum
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                    <img src="images/s6.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>5.Interviewing Candidates
                                    </strong>
                                    <br> Lorem ipsum
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                    <img src="images/s7.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>6.Selecting</strong>
                                    <br> Lorem ipsum
                                </div>
                                <!--
                            -->
                                <div class="flow-position">
                                    <img src="images/s8.jpg" alt=" " class="img-fluid rounded-circle">
                                    <br>
                                    <strong>7.Employee Evaluation
                                    </strong>
                                    <br> Lorem ipsum
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>--%>
    <!--//job -->
      
          

    <!--/candidates -->
    <section class="banner-bottom-wthree bg-light py-lg-5 py-3 text-center">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-4 py-md-4 py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span></span>How Online Voting Works</h3>

                <section class="structure_page_section">
         <div class="row calign mbxxl">
    <h2 class="secondary-title-underline"></h2>
</div>

<div class="row ni-content">
    
        <div class="col-xs-3 col-md-3 ni-item fixed-height long aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="ni-num">
                        1                    </div>
                    <div class="ni-title">
                        CREDENTIALS                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="ni-image ">
                                                    <img src="https://www.scytl.com/wp-content/uploads/2017/03/scytl-olv-technology-and-security-authentication-icon.png">
                                            </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-md-12 ni-description">
                                            <div class="auto-style1">
                                                <strong>Voter Authentication &amp; Credentials                        </strong>                        </div>
                                        <div>
                        <p>Online voting enables voter authentication via pre-existing or new voting authentication methods (digital certificates, password based credentials, etc.) Once authenticated, voter credentials are securely generated and delivered giving voters the means to verify that their vote has been cast-as-intended, recorded-as-cast and counted-as-recorded.</p>
                    </div>
                </div>
            </div>
        </div>

    
        <div class="col-xs-3 col-md-3 ni-item fixed-height long aos-init aos-animate" data-aos="fade-up" data-aos-delay="200">
            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="ni-num">
                        2                    </div>
                    <div class="ni-title">
                        VOTING                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="ni-image has-arrow">
                                                    <img src="https://www.scytl.com/wp-content/uploads/2017/03/scytl-olv-technology-and-security-voting-icon.png">
                                            </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-md-12 ni-description">
                                            <div class="auto-style1">
                                                <strong>Voting                        </strong>                        </div>
                                        <div>
                        <p>Once voters make and confirm their selections, votes are encrypted before leaving the voters’ device, ensuring they remain secret throughout the casting, transmission and tallying processes. For additional vote integrity, the encrypted votes are digitally signed on the voters’ device.</p>
                    </div>
                </div>
            </div>
        </div>

    
        <div class="col-xs-3 col-md-3 ni-item fixed-height long aos-init aos-animate" data-aos="fade-up" data-aos-delay="300">
            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="ni-num">
                        3                    </div>
                    <div class="ni-title">
                        RECORDING &amp; VERIFICATION                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="ni-image has-arrow">
                                                    <img src="https://www.scytl.com/wp-content/uploads/2017/03/scytl-olv-technology-and-security-ballot-box-verification-icon.png">
                                            </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-md-12 ni-description">
                                            <div class="ni-description-title">
                                                <span class="auto-style1"><strong>Ballot Box Recording &amp; Verification</strong></span>                        </div>
                                        <div>
                        <p>Once digitally signed and encrypted votes are cast in the ballot box, the voting servers check if the contents of the votes are valid without decrypting the votes or breaking vote secrecy. The integrity of the ballot box is verified by using the bulletin board, digital signatures and mathematical proofs of the votes providing evidence of the accuracy of the counting process and the accuracy of the results.</p>
                    </div>
                </div>
            </div>
        </div>

    
        <div class="col-xs-3 col-md-3 ni-item fixed-height long aos-init aos-animate" data-aos="fade-up" data-aos-delay="400">
            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="ni-num">
                        4                    </div>
                    <div class="ni-title">
                        TALLY                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-md-12">
                    <div class="ni-image has-arrow">
                                                    <img src="https://www.scytl.com/wp-content/uploads/2017/03/scytl-olv-technology-and-security-tallying-icon.png">
                                            </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-md-12 ni-description">
                                            <div class="auto-style1">
                                                <strong>Results                         </strong>                        </div>
                                        <div>
                        <p>Once voting has ended the results are immediately tabulated. You can view the results in the Election Manager along with various reports on voting activity before publishing them. Once published, the results are made available to the public on your voting website and anyone will be able to verify the results by downloading a file containing votes and receipt codes.</p>
                    </div>
                </div>
            </div>
        </div>

    </div>

	<div class="row">
		<div class="col-md-12 section-button">
									<%--	<a class="is-secondary" href="https://www.scytl.com/en/online-voting-technology-security/" target="_self">Online Voting Technology Details</a>--%>
									</div>
	</div>
	     </section>








                <%--<div class="row mt-5">
                    <div class="col-lg-3 member-main text-center">
                        <div class="card">
                            <div class="card-body">
                                <div class="member-img">
                                    <img src="images/team1.jpg" alt=" " class="img-fluid rounded-circle">
                                </div>
                                <div class="member-info text-center py-lg-4 py-2">
                                    <h4>Mark Jackman</h4>

                                    <p class="my-4"> Aenean orci erat, placerat id pulvinar nec, tincidunt vel eros.</p>
                                    <div class="mt-3 team-social text-center">

                                        <ul class="social-icons text-center">
                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-facebook-f"></i>
                                                </a>
                                            </li>
                                            <li class="mx-3">
                                                <a href="#">
                                                    <i class="fab fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-google-plus-g"></i>
                                                </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 member-main text-center">
                        <div class="card">
                            <div class="card-body">
                                <div class="member-img">
                                    <img src="images/team2.jpg" alt=" " class="img-fluid rounded-circle">
                                </div>
                                <div class="member-info text-center py-lg-4 py-2">
                                    <h4>Janet Levine</h4>

                                    <p class="my-4">Aenean orci erat, placerat id pulvinar nec, tincidunt vel eros..

                                    </p>
                                    <div class="mt-3 team-social text-center">

                                        <ul class="social-icons text-center">


                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-facebook-f"></i>
                                                </a>
                                            </li>
                                            <li class="mx-3">
                                                <a href="#">
                                                    <i class="fab fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-google-plus-g"></i>
                                                </a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 member-main text-center">
                        <div class="card">
                            <div class="card-body">
                                <div class="member-img">
                                    <img src="images/team3.jpg" alt=" " class="img-fluid rounded-circle">
                                </div>
                                <div class="member-info text-center py-lg-4 py-2">
                                    <h4>Rene Rickman</h4>

                                    <p class="my-4">Aenean orci erat, placerat id pulvinar nec, tincidunt vel eros..

                                    </p>
                                    <div class="mt-3 team-social text-center">

                                        <ul class="social-icons text-center">


                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-facebook-f"></i>
                                                </a>
                                            </li>
                                            <li class="mx-3">
                                                <a href="#">
                                                    <i class="fab fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-google-plus-g"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 member-main text-center">
                        <div class="card">
                            <div class="card-body">
                                <div class="member-img">
                                    <img src="images/team4.jpg" alt=" " class="img-fluid rounded-circle">
                                </div>
                                <div class="member-info text-center py-lg-4 py-2">
                                    <h4>Daniele Norwich</h4>
                                    <p class="my-4">Aenean orci erat, placerat id pulvinar nec, tincidunt vel eros..
                                    </p>
                                    <div class="mt-3 team-social text-center">

                                        <ul class="social-icons text-center">


                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-facebook-f"></i>
                                                </a>
                                            </li>
                                            <li class="mx-3">
                                                <a href="#">
                                                    <i class="fab fa-twitter"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fab fa-google-plus-g"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>--%>
            </div>
        </div>
    </section>
    <!--/candidates -->
    <!--/stats-->
    <%--<section class="banner-bottom-wthree bg-dark dotts py-lg-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <h3 class="tittle cen text-center mb-lg-5 mb-3">
                    <span>Some Info</span> Our Stats</h3>
                <div class="stats row mt-5">
                    <div class="col-md-3 stats_left counter_grid text-center">

                        <p class="counter">145</p>
                        <h4>Jobs Posted</h4>
                    </div>
                    <div class="col-md-3 stats_left counter_grid1 text-center">

                        <p class="counter">105</p>
                        <h4>Jobs Filled</h4>
                    </div>
                    <div class="col-md-3 stats_left counter_grid2 text-center">

                        <p class="counter">403</p>
                        <h4>Companies</h4>
                    </div>
                    <div class="col-md-3 stats_left counter_grid3 text-center">

                        <p class="counter">945</p>
                        <h4>Members</h4>
                    </div>

                </div>
            </div>
        </div>
    </section>--%>
    <!--//stats-->

    <!--job -->
    <%--<section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span>Some Info</span> Quick Career Tips</h3>
                <div class="row mt-5">

                    <div class="card-deck">
                        <div class="card">
                            <img src="images/g1.jpg" alt="Card image cap" class="img-fluid card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">Would Disruption Work for Your Business?</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore .</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <img src="images/g2.jpg" alt="Card image cap" class="img-fluid card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">The New Mix of a Multigenerational Workforce</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore. </p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <img src="images/g3.jpg" alt="Card image cap" class="img-fluid card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">Would Disruption Work for Your Business?</h5>
                                <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit sedc dnmo eiusmod tempor incididunt ut labore et dolore. </p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <!--//job -->
    <!--/mobile-app -->
    <%--<section class="banner_bottom mobile-app">
        <div class="dotts py-lg-5 py-3">
            <div class="container">
                <!--/mobile-app -->
                <div class="inner-sec-w3ls py-lg-5  py-3">
                    <div class="row">
                        <div class="col-md-7 app-info">
                            <h3 class="header">Download &amp; Enjoy</h3>
                            <p class="para_vl">Nam arcu mauris, tincidunt sed convallis non, egestas ut lacus. Cras sapien urna, malesuada ut varius consequat, hendrerit nisl. Aliquam vestibulum, odio non ullamcorper malesuada.</p>
                            <ul class="app-devices mt-5">
                                <li>
                                    <a href="#" title="">
                                        <i class="fab fa-apple"></i>
                                        <span class="app-con">App Store
                                            <span class="avail">Available now on the </span>
                                        </span>

                                    </a>
                                </li>
                                <li>
                                    <a href="#" title="">
                                        <i class="fab fa-google-play"></i>

                                        <span class="app-con">Google Play
                                            <span class="avail">Get in on</span>
                                        </span>
                                    </a>
                                </li>
                            </ul>
                            <div class="clearfix"></div>
                            <p class="para_vl">
                                <a href="#">Click here </a>to know more about apps.</p>
                        </div>
                        <div class="col-md-5 app-img">
                            <img src="images/mobile.png" alt=" " class="img-fluid">
                        </div>
                    </div>
                    <!--//mobile-app -->
                </div>
            </div>
        </div>
    </section>--%>
    <!--clients-->
    <section class="clents-slide py-lg-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span>Some Info</span> What Clients Say?</h3>
                <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner mt-5">
                        <div class="carousel-item active">
                            <div class="row">
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids row">
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>convallis felis</h6>
                                            <p>Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non mattis.</p>
                                            <h5>Davidson</h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team4.jpg" alt="">
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-6 testi-main">
                                    <div class="testi-grids t2 row">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team3.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>Cras rutrum</h6>
                                            <p>Lorem ipsum dolor sit amet. enim, non convallis felis mattis.</p>
                                            <h5>Janet Levine</h5>
                                        </div>


                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids row">
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>felis mattis</h6>
                                            <p>Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non yallis.</p>
                                            <h5>Mercurio</h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team2.jpg" alt="">
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids t2 row">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team1.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>Cras rutrum</h6>
                                            <p>Lorem ipsum dolor sit amet. enim, non convallis felis mattis.</p>
                                            <h5>Rene Rickman</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids row">
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>convallis felis</h6>
                                            <p>Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non mattis.</p>
                                            <h5>Mark Jackman</h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team1.jpg" alt="">
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-6 testi-main">
                                    <div class="testi-grids t2 row">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team2.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>Convallis</h6>
                                            <p>Lorem ipsum dolor sit amet. enim, non convallis felis mattis.</p>
                                            <h5>Daniele</h5>
                                        </div>


                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids row">
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>felis mattis</h6>
                                            <p>Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non yallis.</p>
                                            <h5>Mercurio</h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team3.jpg" alt="">
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids t2 row">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team4.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>Cras rutrum</h6>
                                            <p>Lorem ipsum dolor sit amet. enim, non convallis felis mattis.</p>
                                            <h5>Melissa Hoffman</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids row">
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>convallis felis</h6>
                                            <p>Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non mattis.</p>
                                            <h5>Melissa Hoffman</h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team4.jpg" alt="">
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-6 testi-main">
                                    <div class="testi-grids t2 row">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team3.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>Convallis</h6>
                                            <p>Lorem ipsum dolor sit amet. enim, non convallis felis mattis.</p>
                                            <h5>Daniele </h5>
                                        </div>


                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids row">
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>felis mattis</h6>
                                            <p>Lorem ipsum dolor sit amet.Cras rutrum iaculis enim, non yallis.</p>
                                            <h5>Thomas Muller</h5>
                                        </div>
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team2.jpg" alt="">
                                        </div>

                                    </div>
                                </div>
                                <div class="col-md-6  testi-main">
                                    <div class="testi-grids t2 row">
                                        <div class="col-md-3 col-sm-3 col-xs-3 img-testi">
                                            <img class="img-fluid" src="images/team1.jpg" alt="">
                                        </div>
                                        <div class="col-md-9 col-sm-9 col-xs-9 clients-info-text">
                                            <h6>Felis mattis</h6>
                                            <p>Lorem ipsum dolor sit amet. enim, non convallis felis mattis.</p>
                                            <h5>Mark Jackman</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev test" href="#carouselExampleControls" role="button" data-slide="prev">
                        <span class="fas fa-long-arrow-alt-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next test" href="#carouselExampleControls" role="button" data-slide="next">
                        <span class="fas fa-long-arrow-alt-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>

                    </a>

                </div>
            </div>
        </div>
    </section>


    <script type="text/javascript">
  function ValidateDOB(sender, args) {
        //Get the date from the TextBox.
        var dateString = document.getElementById(sender.controltovalidate).value;
        var regex = /(((0|1)[0-9]|2[0-9]|3[0-1])\/(0[1-9]|1[0-2])\/((19|20)\d\d))$/;
 
        //Check whether valid dd/MM/yyyy Date Format.
        if (regex.test(dateString)) {
            var parts = dateString.split("/");
            var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
            var dtCurrent = new Date();
            sender.innerHTML = "Eligibility 18 years ONLY."
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
                args.IsValid = false;
                return;
            }
 
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {
 
                //CD: 11/06/2018 and DB: 15/07/2000. Will turned 18 on 15/07/2018.
                if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                    args.IsValid = false;
                    return;
                }
                if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                    //CD: 11/06/2018 and DB: 15/06/2000. Will turned 18 on 15/06/2018.
                    if (dtCurrent.getDate() < dtDOB.getDate()) {
                        args.IsValid = false;
                        return;
                    }
                }
            }
            args.IsValid = true;
        } else {
            sender.innerHTML = "Enter date in dd/MM/yyyy format ONLY."
            args.IsValid = false;
        }
    }
</script>

    <%--  <script type="text/javascript">
          $(function gf() {
              $(function () {
                  SetDatePicker();
                  $('#txtDobDate').change(function () {
                      var age = CalculateAge();
                      if (age < 18) {
                          alert("Age must be Greater than equal to 18");
                      }
                  });
              });

              function CalculateAge() {
                  var dob = $("#txtDobDate").val();
                  dob = new Date(dob);
                  var today = new Date();
                  var age = Math.floor((today - dob) / (365.25 * 24 * 60 * 60 * 1000));
                  return age;
              }

              function AgeValidation(sender, args) {
                  var age = CalculateAge();
                  if (age >= 18) {
                      args.IsValid = true;
                  } else {
                      args.IsValid = false;
                  }
              }

              function SetDatePicker() {
                  $("#datepicker").datepicker();
                  if ($("#txtDobDate").val() == "") {
                      var dateNow = new Date();
                      $('#datepicker').datepicker("setDate", dateNow);
                  }
              }
          });
    </script>--%>






    <!--//clients-->
    <!--footer -->
    <footer class="footer-emp-w3layouts bg-dark dotts py-lg-5 py-3">
        <%--<div class="container-fluid px-lg-5 px-3">
            <div class="row footer-top">
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>About Us</h3>
                    </div>
                    <div class="footer-text">
                        <p>Curabitur non nulla sit amet nislinit tempus convallis quis ac lectus. lac inia eget consectetur sed, convallis at tellus. Nulla porttitor accumsana tincidunt.</p>
                        <ul class="footer-social text-left mt-lg-4 mt-3">

                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-facebook-f"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-twitter"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-google-plus-g"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-linkedin-in"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fas fa-rss"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-vk"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>Get in touch</h3>
                    </div>
                    <div class="contact-info">
                        <h4>Location :</h4>
                        <p>0926k 4th block building, king Avenue, New York City.</p>
                        <div class="phone">
                            <h4>Contact :</h4>
                            <p>Phone : +121 098 8907 9987</p>
                            <p>Email :
                                <a href="mailto:info@example.com">info@example.com</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>Quick Links</h3>
                    </div>
                    <ul class="links">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                        <li>
                            <a href="about.html">About</a>
                        </li>
                        <li>
                            <a href="404.html">Error</a>
                        </li>
                        <li>
                            <a href="pricing.html">Job Packages</a>
                        </li>
                        <li>
                            <a href="contact.html">Contact Us</a>
                        </li>
                    </ul>
                    <ul class="links">
                        <li>
                            <a href="how.html">How it works</a>
                        </li>
                        <li>
                            <a href="contact.html">Support</a>
                        </li>
                        <li>
                            <a href="employer_list.html">For Employers</a>
                        </li>
                    </ul>

                    <div class="clearfix"></div>
                </div>
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>Sign up for your offers</h3>
                    </div>
                    <div class="footer-text">
                        <p>By subscribing to our mailing list you will always get latest news and updates from us.</p>
                        <form action="#" method="post">
                            <input class="form-control" type="email" name="Email" placeholder="Enter your email..." required="">
                            <button class="btn2">
                                <i class="far fa-envelope" aria-hidden="true"></i>
                            </button>
                            <div class="clearfix"> </div>
                        </form>
                    </div>
                </div>
            </div>--%>
            <div class="copyright mt-4">
                <p class="copy-right text-center ">&copy; 2018 Replenish. All Rights Reserved | Design by
                    <a href="http://w3layouts.com/"> W3layouts </a>
                </p>
            </div>
        </div>
    </footer>
    <!-- //footer -->

    <!--model-forms-->
    <!--/Login-->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-center" style="background-color: #60a1e0;">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="text-center mb-4">Login Now</h5>
                        <form id="form1" runat="server" action="#" method="post">
                        <%--<form action="#" method="post">--%>
                            <div class="form-group">
                                <label class="mb-2">Email address</label>
                                <asp:TextBox ID="txt_lgemail" runat="server" type="email" class="form-control"  aria-describedby="emailHelp" placeholder="" required=""></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator11" ForeColor="Red" ValidationGroup="pqr" ControlToValidate="txt_lgemail" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
                              <%--  <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">--%>
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label class="mb-2">Password</label>
                                <asp:TextBox ID="txt_lgpswd" runat="server" type="password" class="form-control" placeholder="" required=""></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" ForeColor="Red" ValidationGroup="pqr" ControlToValidate="txt_lgpswd" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
<%--                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="" required="">--%>
                            </div>
                            <%--<div class="form-check mb-2">
                                <input type="checkbox" required="" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>--%>
                            <asp:LinkButton ID="LinkButton2" runat="server" class="btn btn-primary submit mb-4" ValidationGroup="pqr" OnClick="LinkButton2_Click">Login</asp:LinkButton>

                       <%--     <button type="submit" class="btn btn-primary submit mb-4">Sign In</button>--%>
                                                      
                             <p class="text-center pb-4">
                                <a href="#" data-toggle="modal" data-target="#exampleModalCenter2"> Don't have an account?  Sign Up here</a>
                            </p>
                      <%--  </form>--%>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--//Login-->
    <!--/Register-->
    <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-center"  style="background-color: #60a1e0;">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="text-center mb-4">Register Now</h5>
                       <%-- <form id="form1" runat="server" action="#" method="post">--%>
                            <div class="form-group">
                                <label>Name</label>
                                <asp:TextBox ID="txt_name" runat="server" type="text" class="form-control"   placeholder="" required=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="Red" ValidationGroup="xyz" Display="Dynamic" ValidationExpression="^[a-zA-Z_ ]*$" runat="server" ControlToValidate="txt_name" ErrorMessage="Alphabets only"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" ValidationGroup="xyz" ControlToValidate="txt_name" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
                                    <%-- <input type="text" class="form-control" id="validationDefault01" placeholder="" required="">--%>
                            </div>
                            <div class="form-group">
                                <label>E-mail</label>
                                <asp:TextBox ID="txt_email" runat="server"  type="email" class="form-control" placeholder="" required=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" ControlToValidate="txt_email" ValidationGroup="xyz" runat="server" ForeColor="Red"  ErrorMessage="Enter correct format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="xyz" ControlToValidate="txt_email" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
<%--                                <input type="text" class="form-control" id="validationDefault02" placeholder="" required="">--%>
                            </div>
                        <div class="form-group">
                                <label>I am</label>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" required="" RepeatDirection="Horizontal">
    <asp:ListItem>Candidate</asp:ListItem>
    <asp:ListItem>Voter</asp:ListItem>
    </asp:RadioButtonList>


<%--                                <asp:TextBox ID="TextBox7" runat="server"  type="email" class="form-control" placeholder="" required=""></asp:TextBox>--%>
<%--                                <input type="text" class="form-control" id="validationDefault02" placeholder="" required="">--%>
                            </div>
                         <div class="form-group">
                                <label class="mb-2">Date of birth</label>
                              <%--  <asp:TextBox ID="txtdob" runat="server" type="text" class="form-control"  placeholder="" required=""></asp:TextBox>--%>
                               
<%--                                <input type="password" class="form-control" id="password1" placeholder="" required="">--%>
                            <%--<asp:CustomValidator ID="CustomValidator1" runat="server" ValidationGroup="xyz" ClientValidationFunction="ValidateDOB" ControlToValidate="txtdob" ErrorMessage="" ForeColor = "Red" />--%>
                           </div>
                        <div class="form-group">
                         <asp:TextBox ID="txtDATE_OF_BIRTH" Onchange="return findage();" runat="server" Font-Size="12px" style="display: block;
    width: 100%;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;" ></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator13" ValidationGroup="xyz" ControlToValidate="txtDATE_OF_BIRTH" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
        <div id="gt" style="color:red;">

        </div>
 
       <cc1:CalendarExtender runat="server" TargetControlID="txtDATE_OF_BIRTH" Format="yyyy-MM-dd" OnClientDateSelectionChanged="SelectDate" ID="CalendarExtender1"></cc1:CalendarExtender>
            </div>

            

                    <div class="form-group"></div>

                           <div class="form-group">
                                <label>Adhar Card No</label>
                                <asp:TextBox ID="txtadhar" runat="server" type="text" class="form-control"   placeholder="" required=""></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ForeColor="Red" ValidationGroup="xyz" Display="Dynamic" ValidationExpression="^[0-9]{12}$" runat="server" ControlToValidate="txtadhar" ErrorMessage="Enter valid Aadhar Number"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" ForeColor="Red" ValidationGroup="xyz" ControlToValidate="txtadhar" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
                                    <%-- <input type="text" class="form-control" id="validationDefault01" placeholder="" required="">--%>
                            </div>





                            <div class="form-group">
                                <label class="mb-2">Password</label>
                                <asp:TextBox ID="password1" runat="server" type="password" class="form-control" placeholder="" required=""></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="xyz" ControlToValidate="password1" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
<%--                                <input type="password" class="form-control" id="password1" placeholder="" required="">--%>
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <asp:TextBox ID="password2" runat="server" type="password" class="form-control" placeholder="" required=""></asp:TextBox>
                                 <asp:CompareValidator ID="CompareValidator1" ForeColor="Red" runat="server" ErrorMessage="password does not match" ControlToCompare="password1" ControlToValidate="password2" Display="Dynamic" ValidationGroup="xyz"></asp:CompareValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="xyz" ControlToValidate="password2" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
<%--                                <input type="password" class="form-control" id="password2" placeholder="" required="">--%>
                            </div>
                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"  CssClass="btn btn-primary" ValidationGroup="xyz" autopostback="true">Register</asp:LinkButton>
<%--                            <asp:Button ID="Button1" runat="server" Text="Register" type="submit"  CssClass="btn btn-primary" OnClick="Button1_Click"/>--%>
<%--                            <button type="submit" class="btn btn-primary submit mb-4">Register</button>--%>
                            <p class="text-center pb-4">
                                <a href="#">By clicking Register, I agree to your terms</a>
                            </p>
                       

                    </div>
                </div>

            </div>
        </div>
    </div>
    <cc1:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </cc1:ToolkitScriptManager>
            <script type="text/javascript">

            function SelectDate(e) {

                var PresentDay = new Date();

                var dateOfBirth = e.get_selectedDate();

                var months = (PresentDay.getMonth() - dateOfBirth.getMonth() +
 (12 * (PresentDay.getFullYear() - dateOfBirth.getFullYear())));

                var age = Math.round(months / 12);
                if (age < 18)
                {
                    //alert("Eligibility 18 years");
                    //sender.innerHTML = "Eligibility 18 years";
                    document.getElementById("gt").innerHTML = "Eligibility 18 years";
                    return true;
                }
                else {
                    document.getElementById("gt").innerHTML = "";

                    return false;
                }

                //document.getElementById("txtCONSULTANT_AGE").value = Math.round(months / 12);

                //document.getElementById("txtCONSULTANT_AGE").readOnly = true;

            }

    </script>
    <!--//Register-->
    <%--<div class="modal fade" id="exampleModalCenter3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-center" style="background-color: #60a1e0;">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="text-center mb-4">Register Now</h5>
                       <%-- <form id="form1" runat="server" action="#" method="post">--%>
                            <div class="form-group">
                                <label>Name</label>
                                <asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control"   placeholder="" required=""></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ForeColor="Red" ValidationGroup="abc" Display="Dynamic" ValidationExpression="^[a-zA-Z_ ]*$" runat="server" ControlToValidate="TextBox1" ErrorMessage="Alphabets only"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="abc" ControlToValidate="TextBox1" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
                               <%-- <input type="text" class="form-control" id="validationDefault01" placeholder="" required="">--%>
                         
                                   </div>
                        <div class="form-group">
                                <label>Party Name</label>
                                <asp:TextBox ID="TextBox5" runat="server" type="text" class="form-control"   placeholder="" required=""></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="abc" ControlToValidate="TextBox5" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
                               <%-- <input type="text" class="form-control" id="validationDefault01" placeholder="" required="">--%>
                            </div>  <div class="form-group">
                                <label>Age</label>
                                <asp:TextBox ID="TextBox6" runat="server" type="text" class="form-control"   placeholder="" required=""></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="abc" ControlToValidate="TextBox6" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
                               <%-- <input type="text" class="form-control" id="validationDefault01" placeholder="" required="">--%>
                            </div>
                            <div class="form-group">
                                <label>E-mail</label>
                                <asp:TextBox ID="TextBox2" runat="server"  type="email" class="form-control" placeholder="" required=""></asp:TextBox>
                                 <asp:RegularExpressionValidator ID="RegularExpressionValidator4" Display="Dynamic" ControlToValidate="TextBox2" ValidationGroup="abc" runat="server" ForeColor="Red"  ErrorMessage="Enter correct format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="abc" ControlToValidate="TextBox2" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
<%--                                <input type="text" class="form-control" id="validationDefault02" placeholder="" required="">--%>
                            </div>

                            <div class="form-group">
                                <label class="mb-2">Password</label>
                                <asp:TextBox ID="TextBox3" runat="server" type="password" class="form-control" placeholder="" required=""></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="abc" ControlToValidate="TextBox3" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
<%--                                <input type="password" class="form-control" id="password1" placeholder="" required="">--%>
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <asp:TextBox ID="TextBox4" runat="server" type="password" class="form-control" placeholder="" required=""></asp:TextBox>
                                 <asp:CompareValidator ID="CompareValidator2" ForeColor="Red" runat="server" ErrorMessage="password does not match" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ValidationGroup="abc"></asp:CompareValidator>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator10" ValidationGroup="abc" ControlToValidate="TextBox4" Display="Dynamic" runat="server" ErrorMessage="Please Fill"></asp:RequiredFieldValidator>
<%--                                <input type="password" class="form-control" id="password2" placeholder="" required="">--%>
                            </div>
                            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"  CssClass="btn btn-danger" ValidationGroup="abc" autopostback="true">Register</asp:LinkButton>
<%--                            <asp:Button ID="Button1" runat="server" Text="Register" type="submit"  CssClass="btn btn-primary" OnClick="Button1_Click"/>--%>
<%--                            <button type="submit" class="btn btn-primary submit mb-4">Register</button>--%>
                            <p class="text-center pb-4">
                                <a href="#">By clicking Register, I agree to your terms</a>
                            </p>
                 <%--       </form>--
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>--%>
    <!--//model-form-->
    <!-- js -->

    <!--/slider-->
    <script src="../Maintemp/js/jquery-1.11.1.min.js"></script>
    <script src="../Maintemp/js/modernizr-2.6.2.min.js"></script>
    <script src="../Maintemp/js/jquery.zoomslider.min.js"></script>
    <!--//slider-->
    <!--search jQuery-->
    <script src="../Maintemp/js/classie-search.js"></script>
    <script src="../Maintemp/js/demo1-search.js"></script>
    <!--//search jQuery-->

    





    <script>
        $(document).ready(function() {
            $(".dropdown").hover(
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //dropdown nav -->
    <!-- password-script -->
    <script>
        window.onload = function() {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- //password-script -->

    <!-- stats -->
    <script src="../Maintemp/js/jquery.waypoints.min.js"></script>
    <script src="../Maintemp/js/jquery.countup.js"></script>
    <script>
        $('.counter').countUp();
    </script>
    <!-- //stats -->

    <!-- //js -->
        <script src="../Maintemp/js/bootstrap.js"></script>
    <script src="../Maintemp/js/bootstrap.js"></script>
    <!--/ start-smoth-scrolling -->
    <script src="../Maintemp/js/move-top.js"></script>
    <script src="../Maintemp/js/easing.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear' 
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
     <%-- <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.1/css/bootstrap-datepicker.css" />
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.1/js/bootstrap-datepicker.min.js"></script>--%>
    <!--// end-smoth-scrolling -->
    </div>
    </form>
</body>
</html>
