<%@page import="java.util.concurrent.ExecutionException"%>
<!DOCTYPE html>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="database.Rov"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% boolean login; %>
<html>
    <head>
        <title>Cyber System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        
        <link rel="shortcut icon" href="img/favicon.ico">
        
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,700' rel='stylesheet' type='text/css'>
        
        <script src="inc/js/jquery-1.11.0.min.js"></script>
		
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="inc/bootstrap/css/bootstrap.min.css">		
		<link rel="stylesheet" href="css/font-awesome.min.css">
        <!-- Optional theme -->
        <link rel="stylesheet" href="inc/bootstrap/css/bootstrap-theme.min.css">
        
        <!-- Bootstrap reset -->
        <link rel="stylesheet" href="inc/bootstrap/css/bootstrap-reset.css">
        
        <!-- flexslider load -->        
        <link rel="stylesheet" href="inc/flexslider/flexslider.css" type="text/css">        
               
        <!-- easy pie chart -->
        <link rel="stylesheet" type="text/css" href="inc/easy-pie-chart/demo/style.css">
                
        <!-- Magnific Popup core CSS file -->
        <link rel="stylesheet" href="inc/magnific/dist/magnific-popup.css"> 

        <!-- YTP -->
        <link href="inc/YTPlayer/css/YTPlayer.css" media="all" rel="stylesheet" type="text/css">
       
        <link rel="stylesheet" href="inc/font-awesome/css/font-awesome.min.css">        
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/colors.css">
	<link href="css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBRH0msyxbmHPROEV1X1ub0pDykgUFN4sk" type="text/javascript"></script>		
	<script src="inc/js/maps.js"></script>        
        <script src="inc/js/function.js"></script>    			       
        <script src="https://code.highcharts.com/highcharts.js"></script>
        <script src="https://code.highcharts.com/modules/exporting.js"></script>
    </head>
    <body>
       
        <div class="page-loader"></div>
        
        <div class="l-wrapper">
            
            <!-- HEADER -->
            <header>
                
                <div class="splash-image-wrap" id="splash-image-wrap">
                    <div class="m-splash-image col-mg-12" id="splash-image" data-0="background-position:center 0px;" data-10000="background-position:center -2000px;">

                        <div class="flexslider flexslider-splash">
                            <ul class="slides">

                                <li class="slide-background">
                                    <!--<video id="video_background" class="video-background" src="img/one_more_new.webm" autoplay="autoplay" loop></video>-->
                                    <div class="splash-wrap slider-background">

                                        <div class="splash-content">


                                            <div class="container">
                                                <div class="col-lg-9 div-centered">                                        
                                                    <div class="splash-centering" >
                                                        <h1>SEMAR<br /> Smart Environment Monitoring and Analytic in Real-Time System</h1>
                                                        <div class="splash-text">
                                                            <p></p>
                                                        </div><!-- splash-text -->
                                                        <a href="#page-section" class="btn second-btn page-scroll">Get Started</a><a href="#contact" class="btn second-btn page-scroll">Go To Find</a>
                                                    </div><!-- splash-centering -->
                                                </div><!-- span12 -->

                                            </div><!-- container -->

                                        </div><!-- splash-title -->
                                    </div><!-- splash-wrap -->
                                </li>
                                
                                
                                <li>             
				<div class="video-overlay"></div>                                                                       
                                    <div class="splash-wrap">
                                        <div class="splash-content">
                                            <div class="container">
                                                <div class="col-lg-9 div-centered">                                        
                                                    <div class="splash-centering" >
                                                        <h1>SEMAR<br />based on Internet of Underwater Things and Big Data</h1>
                                                        <div class="clearfix"></div>
                                                        <div class="splash-text">
                                                            <p></p>
                                                        </div><!-- splash-text -->
                                                        <a href="#contact" class="btn second-btn page-scroll">Go To Find</a>
                                                    </div><!-- splash-centering -->
                                                </div><!-- span12 -->

                                            </div><!-- container -->

                                        </div><!-- splash-title -->
                                    </div><!-- splash-wrap -->
                                </li>                                
                                
                            </ul>
                        </div><!-- flexslider -->

                        <div class="arrow-wrap">
                            <div class="bottom-arrow"></div>
                        </div><!-- arrow-wrap -->


                    </div><!-- m-splash-image -->
                </div><!-- splash-image-wrap --> 
                
                <div class="clearfix"></div>
            </header>
            
            <div class="menu-wrap">
                <!-- NAVIGATION -->
                <div class="l-navigation-wrap menu-padd" style="padding:5px 0px;" id="l-navigation">
                    <div class="m-navbar container">
                        <nav class="navbar navbar-default" role="navigation">
                            <div class="container-fluid">
                                
                                <div class="l-logo">
                                  <a href="#splash-image-wrap">
                                      
                                  </a>
                                </div><!-- l-logo -->
                                
                                
                                
                              <!-- Brand and toggle get grouped for better mobile display -->
                              <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
                                  <span class="sr-only">Toggle navigation</span>
                                  <span class="icon-bar"></span>
                                </button>                                
                              </div>

                              <!-- Collect the nav links, forms, and other content for toggling -->
                              <div class="collapse navbar-collapse" id="navbar">
                             
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active"><a href="#page-section" class="page-scroll">Home</a></li>                                                                                
					<li><a href="#contact" class="page-scroll">Maps</a></li>									                                        					
                                        <li class="arrow-top pull-right"><a class="page-scroll" href="#splash-image-wrap"></a></li>
                                    </ul>
                         
                                                                                              
                              </div><!-- /.navbar-collapse -->
                                                          
                              
                            </div><!-- /.container-fluid -->
                          </nav>
                    </div><!-- m-navbar -->
                </div><!-- l-navigation -->
                
            </div><!-- content -->
            
            
            <div class="l-content-wrap" id="standard-content">           
                <section>
                    <div class="l-contactus-section l-section" style="padding-bottom:40px;" id="page-section">
                        <div class="container">                            
							<div class="row">
                                <div class="col-lg-12">
                                    <h2 class="text-center">SEMAR</h2>
                                    <div class="m-heading-border"></div><!-- m-heading-border -->						
                                    <div class="row">								
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="padding-bottom:80px;">                                    									
						<p class="text-justify" style="color:#fff;">
                                                    <i>SEMAR (Smart Environment Monitoring and Analytics in Real-time system)</i>. Sistem SEMAR ini terdiri dari sensor kualitas air untuk memantau kondisi air serta sensor kamera yang digunakan untuk memantau terumbu karang di bawah laut dan perangkat sensor yang dipasang pada posisi tertentu dapat dikendalikan secara jarak jauh dan data dikirim menggunakan teknologi komunikasi kabel dan nirkabel untuk menghubungkan antara perangkat sensor dengan pusat data. Pusat data menerima dan mengatur data dengan format sesuai dengan sistem 5D world map yang dikirim dari sekumpulan sensor, kemudian melakukan analisa dengan tujuan mampu membantu pemerintah dalam menentukan langkah kebijakan. Sistem SEMAR ini bekerja dengan model <i>Internet of Underwater Things (IoUT)</i> dan melakukan pemrosesan dan analisa dengan teknologi <i>Big Data</i>.
						</p>						
					</div>
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="padding-bottom:80px; ">                                   									
                                            <img src="img/lek-mbengkel.png" style="height: 400px; margin-left: 30%;">
					</div>
                                    </div>									
                                </div><!-- col-lg-12 -->
                            </div><!-- row -->                            
                        </div><!-- container -->                    

                    </div><!-- l-page-section -->

                </section>
                                
                <!-- MAPS SECTION -->               
                <section>
                    <div class="l-map-section l-section" id="contact">                       
                            <div style="width:100%; margin:-5px 0px 30px 0px;">							
				<div style="position:absolute; z-index:1000; margin-top:10px; margin-left: calc(100% - 230px); width:200px;">                                    
                                    <div id="src" class="row hidden" style="padding:10px;">
					<form method="post">
                                            <div class="row form-margin ">												
                                                <div class="col-lg-12 col-md-12 col-sm-12">
							<input class="form-control" placeholder="Nama Bengkel/Montir" type="text" name="maps-nama" required>
						</div><br/><br/>
						<div class="col-lg-12 col-md-12 col-sm-12">
							<select class="form-control" name="maps-tipe" required="">
								<option value="all">Semua</option>
								<option value="tetap">Konvensional</option>
								<option value="panggil">Dapat Dipanggil</option>
							</select>
						</div><!-- col-lg-6 -->
                                                <div class="col-lg-12 col-md-12 col-sm-12">
                                                    <button type="button" class="pull-left news-button" onclick="change_maps()" style="margin: 10px 0px;padding: 5px 15px;font-size: 14px;">cari</button>
                                                </div>
                                            </div><!-- row -->
					</form>
                                    </div>
									<script>
										$(function () {
											$('.toggle').click(function (event) {
												event.preventDefault();
												var target = $(this).attr('href');
												$(target).toggleClass('hidden show');
											});

										});
									</script>
								</div>
								<div id="maps" style="width:100%; height:500px;" class="opacity" ></div>								
                                                            </div>
							<script>							
								function maps(){                                                                    
                                                                    var mapOptionsmain = {
										center : new google.maps.LatLng(-7.257472, 112.752088),
										zoom	: 12,
										mapTypeControlOptions: {
										  mapTypeIds: [google.maps.MapTypeId.ROADMAP, 'map_style']
										}
									};
									mapmain = new google.maps.Map(
										document.getElementById('maps'),mapOptionsmain
									);                                                                    
                                                                    change_maps()
								}								
                                                                $( document ).ready(function() {
                                                                    maps();
                                                                });
                                                                
							</script>
                    </div><!-- l-latest-posts -->
                     <div id="ajaxmaps"></div>
                     <a data-toggle='modal' href='#modal-target'  id="modal_button" style="display: none;"></a>        
                </section>

                <!-- TECHNICAL SKILLS SECTION -->
                <section>

                    <div class="l-contactus-section l-section">
                    <div class="l-copyright text-center">
                        &copy; By IoUT ER2C
                    </div><!-- l-copyright -->

                    </div><!-- l-contactus-section -->

                </section>
            
            </div><!-- l-content-wrap -->
            
        </div><!-- l-wrapper -->       
       <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="modal-target" class="modal fade" style="display: none;">
           <div class="modal-dialog"><div class="modal-content"><div class="modal-header"> <button aria-hidden="true" data-dismiss="modal" class="close" onclick="remove_modal(this)" rel="modal-target" type="button">×</button>
            <h4 class="modal-title">Detail Sensor <b class="name_rov"></b></h4></div>
            <div id="modal-output" class="modal-body popup_modal row">                                                       
            </div></div></div>
       </div>        
        <!-- LOAD SCRIPTS -->

        <!-- Latest compiled and minified JavaScript -->
        <script src="inc/bootstrap/js/bootstrap.min.js"></script>
		
		
		<script src="inc/js/jquery.easing.min.js"></script>		
        <script src="inc/js/scrolling-nav.js"></script>
        
        <!-- flexslider -->
         <script src="inc/flexslider/jquery.flexslider.js"></script>
                
        <!-- skrollr -->
        <script type="text/javascript" src="inc/skrollr/dist/skrollr.min.js"></script>

        <!-- easy pie chart -->
        <script src="inc/easy-pie-chart/dist/jquery.easypiechart.min.js"></script>
        
        <!-- isotope -->
        <script src="inc/isotope/jquery.isotope.min.js" ></script>
            
        <!-- isotope -->
        <script src="inc/nice-scroll/jquery.nicescroll.min.js" ></script>
        
        <!-- google maps 
        <script src="https://maps.googleapis.com/maps/api/js?sensor=false" type="text/javascript"></script>
        -->
        <!-- Magnific Popup core JS file -->
        <script src="inc/magnific/dist/jquery.magnific-popup.js"></script> 
        
        <!-- Waypoints -->
        <script src="inc/waypoints/waypoints.min.js"></script>
                
        <!-- YTP -->
        <script type="text/javascript" src="inc/YTPlayer/inc/jquery.mb.YTPlayer.js"></script>
        <script src="inc/js/datatables/jquery.dataTables.js" type="text/javascript"></script>
        <!-- script calling -->
        <script src="inc/js/common.js"></script>        
        
    </body>   
</html>