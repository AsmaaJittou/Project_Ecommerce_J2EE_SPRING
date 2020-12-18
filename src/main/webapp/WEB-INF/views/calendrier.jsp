<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML>
<html>
<head>
 <spring:url value="/addProduct" var="addProduct"></spring:url>
  <spring:url value="/listProduct" var="listProduct"></spring:url>
   <spring:url value="/viewCategorie" var="viewCategorie"></spring:url>
    <spring:url value="/calend" var="calend"></spring:url>
     <spring:url value="/card" var="addURL"></spring:url>
<title>Calendrier</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gretong Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/resources/admin/css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="${pageContext.request.contextPath}/resources/admin/css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/icon-font.min.css" type='text/css' />
<script src="${pageContext.request.contextPath}/resources/admin/js/simpleCart.min.js"> </script>
<script src="${pageContext.request.contextPath}/resources/admin/js/amcharts.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/serial.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/light.js"></script>

<!-- //lined-icons -->
<script src="${pageContext.request.contextPath}/resources/admin/js/jquery-1.10.2.min.js"></script>
   <!--pie-chart--->
<script src="${pageContext.request.contextPath}/resources/admin/js/pie-chart.js" type="text/javascript"></script>
 <script type="text/javascript">

        $(document).ready(function () {
            $('#demo-pie-1').pieChart({
                barColor: '#3bb2d0',
                trackColor: '#eee',
                lineCap: 'round',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-2').pieChart({
                barColor: '#fbb03b',
                trackColor: '#eee',
                lineCap: 'butt',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });

            $('#demo-pie-3').pieChart({
                barColor: '#ed6498',
                trackColor: '#eee',
                lineCap: 'square',
                lineWidth: 8,
                onStep: function (from, to, percent) {
                    $(this.element).find('.pie-value').text(Math.round(percent) + '%');
                }
            });


        });

    </script>
</head>
<body>
   <div class="page-container">
   <!--/content-inner-->
	<div class="left-content">
	   <div class="inner-content">
		<!-- header-starts -->
			<div class="header-section">
			<!-- top_bg -->
						<div class="top_bg">

								<div class="header_top">
									<div class="top_right">
										<ul>
											<li><a href="contact.html">help</a></li>|
											<li><a href="contact.html">Contact</a></li>|
											<li><a href="checkout.html">Delivery information</a></li>
										</ul>
									</div>
									<div class="top_left">
										<h2><span></span> Call us : 032 2352 782</h2>
									</div>
										<div class="clearfix"> </div>
								</div>

						</div>
					<div class="clearfix"></div>
				<!-- /top_bg -->
				</div>
				<div class="header_bg">

							<div class="header">
								<div class="head-t">
									<div class="logo">
										<a href="index.html"><img src="${pageContext.request.contextPath}/resources/admin/images/logo.png" class="img-responsive" alt=""> </a>
									</div>
										<!-- start header_right -->
									<div class="header_right">
										<div class="rgt-bottom">
											<div class="log">
												<div class="login">
													<div id="loginContainer"><a id="loginButton" class=""><span>Login</span></a>
														<div id="loginBox" style="display: none;">
															<form id="loginForm">
																	<fieldset id="body">
																		<fieldset>
																			  <label for="email">Email Address</label>
																			  <input type="text" name="email" id="email">
																		</fieldset>
																		<fieldset>
																				<label for="password">Password</label>
																				<input type="password" name="password" id="password">
																		 </fieldset>
																		<input type="submit" id="login" value="Sign in">
																		<label for="checkbox"><input type="checkbox" id="checkbox"> <i>Remember me</i></label>
																	</fieldset>
																<span><a href="#">Forgot your password?</a></span>
															</form>
														</div>
													</div>
												</div>
											</div>
											<div class="reg">
												<a href="register.html">REGISTER</a>
											</div>
										<div class="cart box_1">
											<a href="checkout.html">
												<h3> <span class="simpleCart_total">$0.00</span> (<span id="simpleCart_quantity" class="simpleCart_quantity">0</span> items)<img src="${pageContext.request.contextPath}/resources/admin/images/bag.png" alt=""></h3>
											</a>
											<p><a href="javascript:;" class="simpleCart_empty">(empty card)</a></p>
											<div class="clearfix"> </div>
										</div>
										<div class="create_btn">
											<a href="checkout.html">CHECKOUT</a>
										</div>
										<div class="clearfix"> </div>
									</div>
									<div class="search">
										<form>
											<input type="text" value="" placeholder="search...">
											<input type="submit" value="">
										</form>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>

				</div>
					<!-- //header-ends -->

				<!--content-->
			<div class="content">
<div class="women_main">
	<!-- start content -->
		<div class="cal-main">
													<div class="calender graph-form">
														<h2 class="inner-tittle">Calender</h2>
														<div class="cal1"><div class="clndr"><div class="clndr-controls"><div class="clndr-control-button"><span class="clndr-previous-button">previous</span></div><div class="month">April 2016</div><div class="clndr-control-button rightalign"><span class="clndr-next-button">next</span></div></div><table class="clndr-table" border="0" cellspacing="0" cellpadding="0"><thead><tr class="header-days"><td class="header-day">S</td><td class="header-day">M</td><td class="header-day">T</td><td class="header-day">W</td><td class="header-day">T</td><td class="header-day">F</td><td class="header-day">S</td></tr></thead><tbody><tr><td class="day past adjacent-month last-month calendar-day-2016-03-27 calendar-dow-0"><div class="day-contents">27</div></td><td class="day past adjacent-month last-month calendar-day-2016-03-28 calendar-dow-1"><div class="day-contents">28</div></td><td class="day past adjacent-month last-month calendar-day-2016-03-29 calendar-dow-2"><div class="day-contents">29</div></td><td class="day past adjacent-month last-month calendar-day-2016-03-30 calendar-dow-3"><div class="day-contents">30</div></td><td class="day past adjacent-month last-month calendar-day-2016-03-31 calendar-dow-4"><div class="day-contents">31</div></td><td class="day past calendar-day-2016-04-01 calendar-dow-5"><div class="day-contents">1</div></td><td class="day past calendar-day-2016-04-02 calendar-dow-6"><div class="day-contents">2</div></td></tr><tr><td class="day past calendar-day-2016-04-03 calendar-dow-0"><div class="day-contents">3</div></td><td class="day today calendar-day-2016-04-04 calendar-dow-1"><div class="day-contents">4</div></td><td class="day calendar-day-2016-04-05 calendar-dow-2"><div class="day-contents">5</div></td><td class="day calendar-day-2016-04-06 calendar-dow-3"><div class="day-contents">6</div></td><td class="day calendar-day-2016-04-07 calendar-dow-4"><div class="day-contents">7</div></td><td class="day calendar-day-2016-04-08 calendar-dow-5"><div class="day-contents">8</div></td><td class="day calendar-day-2016-04-09 calendar-dow-6"><div class="day-contents">9</div></td></tr><tr><td class="day event calendar-day-2016-04-10 calendar-dow-0"><div class="day-contents">10</div></td><td class="day event calendar-day-2016-04-11 calendar-dow-1"><div class="day-contents">11</div></td><td class="day event calendar-day-2016-04-12 calendar-dow-2"><div class="day-contents">12</div></td><td class="day event calendar-day-2016-04-13 calendar-dow-3"><div class="day-contents">13</div></td><td class="day event calendar-day-2016-04-14 calendar-dow-4"><div class="day-contents">14</div></td><td class="day calendar-day-2016-04-15 calendar-dow-5"><div class="day-contents">15</div></td><td class="day calendar-day-2016-04-16 calendar-dow-6"><div class="day-contents">16</div></td></tr><tr><td class="day calendar-day-2016-04-17 calendar-dow-0"><div class="day-contents">17</div></td><td class="day calendar-day-2016-04-18 calendar-dow-1"><div class="day-contents">18</div></td><td class="day calendar-day-2016-04-19 calendar-dow-2"><div class="day-contents">19</div></td><td class="day calendar-day-2016-04-20 calendar-dow-3"><div class="day-contents">20</div></td><td class="day calendar-day-2016-04-21 calendar-dow-4"><div class="day-contents">21</div></td><td class="day calendar-day-2016-04-22 calendar-dow-5"><div class="day-contents">22</div></td><td class="day event calendar-day-2016-04-23 calendar-dow-6"><div class="day-contents">23</div></td></tr><tr><td class="day event calendar-day-2016-04-24 calendar-dow-0"><div class="day-contents">24</div></td><td class="day event calendar-day-2016-04-25 calendar-dow-1"><div class="day-contents">25</div></td><td class="day event calendar-day-2016-04-26 calendar-dow-2"><div class="day-contents">26</div></td><td class="day calendar-day-2016-04-27 calendar-dow-3"><div class="day-contents">27</div></td><td class="day calendar-day-2016-04-28 calendar-dow-4"><div class="day-contents">28</div></td><td class="day calendar-day-2016-04-29 calendar-dow-5"><div class="day-contents">29</div></td><td class="day calendar-day-2016-04-30 calendar-dow-6"><div class="day-contents">30</div></td></tr></tbody></table></div></div>
													</div>
														<!--/Tooltips-->
														<div class="tool-tips">
												            <h3 class="inner-tittle two">Simple Tooltips</h3>
															<div class="tool-tips graph-form">
																<div class="bs-example-tooltips">
																	<button type="button" class="btn btn-default tip" data-toggle="tooltip" data-placement="left" title="" data-original-title="Tooltip on left">Tooltip on left</button>
																	<button type="button" class="btn btn-default tip" data-toggle="tooltip" data-placement="top" title="" data-original-title="Tooltip on top">Tooltip on top</button>
																	<button type="button" class="btn btn-default tip" data-toggle="tooltip" data-placement="bottom" title="" data-original-title="Tooltip on bottom">Tooltip on bottom</button>
																	<button type="button" class="btn btn-default tip" data-toggle="tooltip" data-placement="right" title="" data-original-title="Tooltip on right">Tooltip on right</button>
																	<script>$(function () {
																	  $('[data-toggle="tooltip"]').tooltip()
																	})</script>
																</div>
															</div>
														</div>
															<!--/Tooltips-->
															<!--/Accordion-->
														 <div class="accordion">
															<h3 class="inner-tittle two">Easy  Accordion</h3>
															<div class="panel-group tool-tips graph-form" id="accordion" role="tablist" aria-multiselectable="true">
																  <div class="panel-default">
																	<div class="panel-heading" role="tab" id="headingOne">
																	  <h4 class="panel-title">
																		<a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne" class="collapsed">
																		  Product 1
																		</a>
																	  </h4>
																	</div>
																	<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne" aria-expanded="false" style="height: 0px;">
																	  <div class="panel-body">
																		Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. apiente ea proident. Ad vegan excepteur butcher vice lomo.  labore sustainable VHS.
																	  </div>
																	</div>
																  </div>
																  <div class="panel-default">
																	<div class="panel-heading" role="tab" id="headingTwo">
																	  <h4 class="panel-title">
																		<a class="" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
																			Product 2
																		</a>
																	  </h4>
																	</div>
																	<div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo" aria-expanded="true">
																	  <div class="panel-body">
																		Eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Anim pariatur cliche reprehenderit, enim  Food truck quinoa nesciunt laborum eiusmod. apiente ea proident. Ad vegan excepteur butcher vice lomo.  labore sustainable VHS.
																	  </div>
																	</div>
																  </div>
																  <div class="panel-default">
																	<div class="panel-heading" role="tab" id="headingThree">
																	  <h4 class="panel-title">
																		<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
																			Product 3
																		</a>
																	  </h4>
																	</div>
																	<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" aria-expanded="false" style="height: 0px;">
																	  <div class="panel-body">
																		3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid.  apiente ea proident. Ad vegan excepteur butcher vice lomo.  labore sustainable VHS.
																	  </div>
																	</div>
																  </div>
															  <div class="panel-default">
																<div class="panel-heading" role="tab" id="headingFour">
																  <h4 class="panel-title">
																	<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
																		Product 4
																	</a>
																  </h4>
																</div>
																<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour" aria-expanded="false" style="height: 0px;">
																  <div class="panel-body">
																	Cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. apiente ea proident. Ad vegan excepteur butcher vice lomo.  labore sustainable VHS.
																  </div>
																</div>
															  </div>
															  <div class="panel-default">
																<div class="panel-heading" role="tab" id="headingFive">
																  <h4 class="panel-title">
																	<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
																		Product 5
																	</a>
																  </h4>
																</div>
																<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive" aria-expanded="false" style="height: 0px;">
																  <div class="panel-body">
																	Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. apiente ea proident. Ad vegan excepteur butcher vice lomo.  labore sustainable VHS.
																  </div>
																</div>
														  </div>
														</div>
													</div>
														<!--//Accordion-->
											</div>

	<!-- end content -->
	<div class="foot-top">

		<div class="col-md-6 s-c">
			<li>
				<div class="fooll">
					<h1>follow us on</h1>
				</div>
			</li>
			<li>
				<div class="social-ic">
					<ul>
						<li><a href="#"><i class="facebok"> </i></a></li>
						<li><a href="#"><i class="twiter"> </i></a></li>
						<li><a href="#"><i class="goog"> </i></a></li>
						<li><a href="#"><i class="be"> </i></a></li>
							<div class="clearfix"></div>
					</ul>
				</div>
			</li>
				<div class="clearfix"> </div>
		</div>
		<div class="col-md-6 s-c">
			<div class="stay">
						<div class="stay-left">
							<form>
								<input type="text" placeholder="Enter your email" required="">
							</form>
						</div>
						<div class="btn-1">
							<form>
								<input type="submit" value="join">
							</form>
						</div>
							<div class="clearfix"> </div>
			</div>
		</div>
			<div class="clearfix"> </div>

</div>
<div class="footer">
					<div class="col-md-3 cust">
						<h4>CUSTOMER CARE</h4>
							<li><a href="contact.html">Help Center</a></li>
							<li><a href="faq.html">FAQ</a></li>
							<li><a href="details.html">How To Buy</a></li>
							<li><a href="checkout.html">Delivery</a></li>
					</div>
					<div class="col-md-2 abt">
						<h4>ABOUT US</h4>
							<li><a href="products.html">Our Stories</a></li>
							<li><a href="products.html">Press</a></li>
							<li><a href="faq.html">Career</a></li>
							<li><a href="contact.html">Contact</a></li>
					</div>
					<div class="col-md-2 myac">
						<h4>MY ACCOUNT</h4>
							<li><a href="register.html">Register</a></li>
							<li><a href="checkout.html">My Cart</a></li>
							<li><a href="checkout.html">Order History</a></li>
							<li><a href="details.html">Payment</a></li>
					</div>
					<div class="col-md-5 our-st">
						<div class="our-left">
							<h4>OUR STORES</h4>
						</div>

							<li><i class="add"> </i>Mark peter</li>
							<li><i class="phone"> </i>012-586987</li>
							<li><a href="mailto:info@example.com"><i class="mail"> </i>info@sitename.com </a></li>
					</div>
					<div class="clearfix"> </div>
						<p>© 2016 Gretong. All Rights Reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
</div>

</div>
			<!--content-->
		</div>
</div>
				<!--//content-inner-->
			<!--/sidebar-menu-->
				<div class="sidebar-menu">
					<header class="logo1">
						<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a>
					</header>
						<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
            <div class="menu">
              <ul id="menu" >
             <li><a href="accueil.jsp"><i class="fa fa-tachometer"></i> <span>Acceuil</span></a></li>
            <li id="menu-academico" ><a href="#"><i class="lnr lnr-layers"></i> <span>Produits</span> <span class="fa fa-angle-right" style="float: right"></span></a>
            <ul id="menu-academico-sub" >
            <li id="menu-academico-avaliacoes" ><a href="${listProduct }">Liste des produits</a></li>
            <li id="menu-academico-boletim" ><a href="${addProduct }">Ajouter un produits</a></li>
            <li id="menu-academico-avaliacoes" ><a href="${viewCategorie }">Liste des catalogues</a></li>
            </ul>
            </li>
            <li><a href="listClient.jsp"><i class="lnr lnr-book"></i> <span>Clients</span></a></li>
            <li><a href="message.jsp"><i class="lnr lnr-envelope"></i> <span>Messages</span></a></li>
            <li><a href="addAdmin.jsp"><i class="lnr lnr-pencil"></i> <span>Administrateurs</span></a></li>
            <li ><a href="${calend }"><i class="fa fa-table"></i> <span>Calendrier</span> </a></li>
        </ul>
            </div>
							  </div>
							  <div class="clearfix"></div>
							</div>
							<script>
							var toggle = true;

							$(".sidebar-icon").click(function() {
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }

											toggle = !toggle;
										});
							</script>
<!--js -->
<!--Calender-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/clndr.css" type="text/css" />
<script src="${pageContext.request.contextPath}/resources/admin/js/underscore-min.js" type="text/javascript"></script>
<script src= "${pageContext.request.contextPath}/resources/admin/js/moment-2.2.1.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/clndr.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/site.js" type="text/javascript"></script>
<!--End Calender-->
<script src="${pageContext.request.contextPath}/resources/admin/js/jquery.nicescroll.js"></script>
<script src="${pageContext.request.contextPath}/resources/admin/js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->
   <!-- real-time -->
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/resources/admin/js/jquery.flot.js"></script>
	<script type="text/javascript">

	$(function() {

		// We use an inline data source in the example, usually data would
		// be fetched from a server

		var data = [],
			totalPoints = 300;

		function getRandomData() {

			if (data.length > 0)
				data = data.slice(1);

			// Do a random walk

			while (data.length < totalPoints) {

				var prev = data.length > 0 ? data[data.length - 1] : 50,
					y = prev + Math.random() * 10 - 5;

				if (y < 0) {
					y = 0;
				} else if (y > 100) {
					y = 100;
				}

				data.push(y);
			}

			// Zip the generated y values with the x values

			var res = [];
			for (var i = 0; i < data.length; ++i) {
				res.push([i, data[i]])
			}

			return res;
		}

		// Set up the control widget

		var updateInterval = 30;
		$("#updateInterval").val(updateInterval).change(function () {
			var v = $(this).val();
			if (v && !isNaN(+v)) {
				updateInterval = +v;
				if (updateInterval < 1) {
					updateInterval = 1;
				} else if (updateInterval > 2000) {
					updateInterval = 2000;
				}
				$(this).val("" + updateInterval);
			}
		});

		var plot = $.plot("#placeholder", [ getRandomData() ], {
			series: {
				shadowSize: 0	// Drawing is faster without shadows
			},
			yaxis: {
				min: 0,
				max: 100
			},
			xaxis: {
				show: false
			}
		});

		function update() {

			plot.setData([getRandomData()]);

			// Since the axes don't change, we don't need to call plot.setupGrid()

			plot.draw();
			setTimeout(update, updateInterval);
		}

		update();

		// Add the Flot version string to the footer

		$("#footer").prepend("Flot " + $.plot.version + " &ndash; ");
	});

	</script>
<!-- /real-time -->
<script src="${pageContext.request.contextPath}/resources/admin/js/jquery.fn.gantt.js"></script>
    <script>

		$(function() {

			"use strict";

			$(".gantt").gantt({
				source: [{
					name: "Sprint 0",
					desc: "Analysis",
					values: [{
						from: "/Date(1320192000000)/",
						to: "/Date(1322401600000)/",
						label: "Requirement Gathering",
						customClass: "ganttRed"
					}]
				},{
					name: " ",
					desc: "Scoping",
					values: [{
						from: "/Date(1322611200000)/",
						to: "/Date(1323302400000)/",
						label: "Scoping",
						customClass: "ganttRed"
					}]
				},{
					name: "Sprint 1",
					desc: "Development",
					values: [{
						from: "/Date(1323802400000)/",
						to: "/Date(1325685200000)/",
						label: "Development",
						customClass: "ganttGreen"
					}]
				},{
					name: " ",
					desc: "Showcasing",
					values: [{
						from: "/Date(1325685200000)/",
						to: "/Date(1325695200000)/",
						label: "Showcasing",
						customClass: "ganttBlue"
					}]
				},{
					name: "Sprint 2",
					desc: "Development",
					values: [{
						from: "/Date(1326785200000)/",
						to: "/Date(1325785200000)/",
						label: "Development",
						customClass: "ganttGreen"
					}]
				},{
					name: " ",
					desc: "Showcasing",
					values: [{
						from: "/Date(1328785200000)/",
						to: "/Date(1328905200000)/",
						label: "Showcasing",
						customClass: "ganttBlue"
					}]
				},{
					name: "Release Stage",
					desc: "Training",
					values: [{
						from: "/Date(1330011200000)/",
						to: "/Date(1336611200000)/",
						label: "Training",
						customClass: "ganttOrange"
					}]
				},{
					name: " ",
					desc: "Deployment",
					values: [{
						from: "/Date(1336611200000)/",
						to: "/Date(1338711200000)/",
						label: "Deployment",
						customClass: "ganttOrange"
					}]
				},{
					name: " ",
					desc: "Warranty Period",
					values: [{
						from: "/Date(1336611200000)/",
						to: "/Date(1349711200000)/",
						label: "Warranty Period",
						customClass: "ganttOrange"
					}]
				}],
				navigate: "scroll",
				scale: "weeks",
				maxScale: "months",
				minScale: "days",
				itemsPerPage: 10,
				onItemClick: function(data) {
					alert("Item clicked - show some details");
				},
				onAddClick: function(dt, rowId) {
					alert("Empty space clicked - add an item!");
				},
				onRender: function() {
					if (window.console && typeof console.log === "function") {
						console.log("chart rendered");
					}
				}
			});

			$(".gantt").popover({
				selector: ".bar",
				title: "I'm a popover",
				content: "And I'm the content of said popover.",
				trigger: "hover"
			});

			prettyPrint();

		});

    </script>
		   <script src="${pageContext.request.contextPath}/resources/admin/js/menu_jquery.js"></script>

</body>
</html>
