		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		    pageEncoding="ISO-8859-1"%>
	
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
		
		<!DOCTYPE html>
		<html lang="zxx">
		
		
<head>
	<title>MOROCCO BEING</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">

	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/resources/css/login_overlay.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/resources/css/style6.css" rel='stylesheet' type='text/css' />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/shop.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.css" type="text/css" media="all">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.theme.css" type="text/css" media="all">
	<link href="${pageContext.request.contextPath}/resources/css/style.css" rel='stylesheet' type='text/css' />
	<link href="${pageContext.request.contextPath}/resources/css/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Inconsolata:400,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800"
	    rel="stylesheet">
	    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
</head>
		
	<c:set var = "panierProduct" scope = "session" value ="${selectedProducts}"/>
		<body style=" background-color: #282C34;">
			<div class="banner-top container-fluid" id="home">
				<!-- header -->
			<header>
			<div class="row">
				<div class="col-md-3 top-info text-left mt-lg-4">
					<h6>Besoin D'aide</h6>
					<ul>
						<li>
							<i class="fas fa-phone"></i> Appler</li>
						<li class="number-phone mt-3">0665435676</li>
					</ul>
				</div>
				<div class="col-md-6 logo-w3layouts text-center">
					<h1 class="logo-w3layouts">
					<img src="${pageContext.request.contextPath}/resources/images/logolittel.png" class="img-fluid" alt="">
					</h1>
				</div>
				
			</div>
			   <spring:url value="/card" var="addURL"></spring:url>
            <spring:url value="/propos" var="propos"></spring:url>
              <spring:url value="/accueil" var="accueil"></spring:url>
                <spring:url value="/inscrire" var="inscrire"></spring:url>
			 <spring:url value="/checkout" var="checkout"></spring:url>
			<label class="top-log mx-auto"></label>
					<nav class="navbar navbar-expand-lg navbar-light bg-light top-header mb-2">

				<button class="navbar-toggler mx-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
				    aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon">

					</span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav nav-mega mx-auto">
						<li class="nav-item active">
							<a class="nav-link ml-lg-0" href="${accueil }">Accueil
								<span class="sr-only">(current)</span>
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${propos }">A propos</a>
						</li>

						<li class="nav-item dropdown">
							<a  class="nav-link" href="catalogue.jsp">Cat&eacutegorie</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="${inscrire}">Contactez-Nous</a>
						</li>
					</ul>
					</div>
			</nav>
		
		</header>
					<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
					<div class="container-fluid">
					<div class="container">
	                <table id="cart" class="table table-hover table-condensed"  >
    				<thead>
						<tr style="background-color : #F5F5F5 ;">
							<th style="width:50%; background-color : #F5F5F5 ;">Product</th>
							<th style="width:10%; background-color : #F5F5F5 ;">Price</th>
							<th style="width:8% ;  background-color : #F5F5F5 ;" >Quantity</th>
							<th style="width:22% ; background-color : #F5F5F5 ;" class="text-center">Subtotal</th>
							<th style="width:10% ; background-color : #F5F5F5 ;"></th>
						</tr>
					</thead>
						<c:if test="${not empty panierProduct}">
						 <c:forEach var="cproduct" items="${selectedProducts}" varStatus="status">
					<tbody>
						<tr style="background-color : #F5F5F5 ;" >
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img src="${pageContext.request.contextPath}/resources/images/${ cproduct.photo}" class="img-responsive" /></div>
									<div class="col-sm-10">
										<h4 class="nomargin">${cproduct.nomProduit}</h4>
										<p>${cproduct.description}</p>
									</div>
								</div>
							</td>
							<td data-th="Price">${ cproduct.prix}</td>
							<td data-th="Quantity">
							<spring:url value="/cardChange/${cproduct.idProduit}" var="cardChange"></spring:url>
						
								
							</td>
							<td data-th="Subtotal" class="text-center">${ cproduct.prix}</td>
							<td class="actions" data-th="">
								
					<form action="${cardChange }" method="get">	<button type="submit" class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button></form>									
							</td>
						</tr>
							 
					</tbody>
					</c:forEach>
					</c:if>
					<c:if test="${empty panierProduct}">
				<h2>No product is selected.</h2>");
					</c:if>
					<tfoot>
						<tr>
							<td style="background-color: #F5F5F5 ;"><a href="${accueil }" class="btn btn-warning"><i class="fa fa-angle-left" ></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<c:set var = "price" scope = "session" value ="${totalPrice}"/>
						
							<td class="hidden-xs text-center"><strong><c:out value="${totalPrice}"/>$</strong></td>
								<td style="background-color: #F5F5F5 ;">
								<a href="${checkout}" class="btn btn-success btn-block" style="background-color: #D8BFD8 ;">Checkout <i class="fa fa-angle-right"></i></a></td>
							
						</tr>
					</tfoot>
				</table>
                </div>
					</div>
					</section>
						
			<!--footer -->
			<footer class="py-lg-5 py-3">
				<div class="container-fluid px-lg-5 px-3">
					<div class="row footer-top-w3layouts">
						<div class="col-lg-3 footer-grid-w3ls">
							<div class="footer-title">
								<h3>Administrateurs du site</h3>
							</div>
							<div class="footer-text">
								<h6>ABOUDRAR FatimaZahra</h6><br>
								<h6>JITTOU Asmaa</h6>
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
						<div class="col-lg-3 footer-grid-w3ls">
							<div class="footer-title">
								<h3>Contactez-nous</h3>
							</div>
							<div class="contact-info">
								<h4>Location :</h4>
								<p>N� 56 block 11, Avenue Riad Elssalam, AGADIR.</p>
								<div class="phone">
									<h4>Contact :</h4>
									<p>Phone : +212 066678554</p>
									<p>Email :
										<a href="mailto:info@example.com">MorrocoBeing@gmail.com</a>
									</p>
								</div>
							</div>
						</div>
						<div class="col-lg-3 footer-grid-w3ls">
							<div class="footer-title">
								<h3>Liens </h3>
							</div>
							<ul class="links">
								<li>
									<a href="index.html">Acceuil</a>
								</li>
								<li>
									<a href="about.html">A Prpoos</a>
								</li>
								<li>
									<a href="shop.html">Catalogue</a>
								</li>
								<li>
									<a href="contact.html">Contact Nous</a>
								</li>
							</ul>
						</div>
						<div class="col-lg-3 footer-grid-w3ls">
							<div class="footer-title">
								<h3>Inscrivez-vous pour vos offres</h3>
							</div>
							<div class="footer-text">
								<p>En vous inscrivant � notre liste de diffusion, vous obtiendrez toujours les derni�res nouvelles et mises � jour de notre part.</p>
								<form action="#" method="post">
									<input class="form-control" type="email" name="Email" placeholder="Entrer votre email..." required="">
									<button class="btn1">
										<i class="far fa-envelope" aria-hidden="true"></i>
									</button>
									<div class="clearfix"> </div>
								</form>
							</div>
						</div>
					</div>
					<div class="copyright-w3layouts mt-4">
						<p class="copy-right text-center ">&copy; 2019 Goggles. Tous droits r�serv�s </p>
		
		
					</div>
				</div>
			</footer>
			<!-- //footer -->
		
			<!--jQuery-->
			<script src="${pageContext.request.contextPath}/resources/js/jquery-2.2.3.min.js"></script>
			<!-- newsletter modal -->
			<!-- Modal -->
			<!-- Modal -->
			
			<script>
				$(document).ready(function () {
					$("#myModal").modal();
				});
			</script>
			<!-- // modal -->
		
			<!--search jQuery-->
			<script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/classie-search.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/demo1-search.js"></script>
			<!--//search jQuery-->
			<!-- cart-js -->
			<script src="${pageContext.request.contextPath}/resources/js/minicart.js"></script>
			
			<!-- //cart-js -->
			<script>
				$(document).ready(function () {
					$(".button-log a").click(function () {
						$(".overlay-login").fadeToggle(200);
						$(this).toggleClass('btn-open').toggleClass('btn-close');
					});
				});
				$('.overlay-close1').on('click', function () {
					$(".overlay-login").fadeToggle(200);
					$(".button-log a").toggleClass('btn-open').toggleClass('btn-close');
					open = false;
				});
			</script>
			<!-- carousel -->
			<!-- Count-down -->
			<script src="${pageContext.request.contextPath}/resources/js/simplyCountdown.js"></script>
			<link href="${pageContext.request.contextPath}/resources/css/simplyCountdown.css" rel='stylesheet' type='text/css' />
			<script>
				var d = new Date();
				simplyCountdown('simply-countdown-custom', {
					year: d.getFullYear(),
					month: d.getMonth() + 2,
					day: 25
				});
			</script>
			<!--// Count-down -->
			<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.js"></script>
			<script>
				$(document).ready(function () {
					$('.owl-carousel').owlCarousel({
						loop: true,
						margin: 10,
						responsiveClass: true,
						responsive: {
							0: {
								items: 1,
								nav: true
							},
							600: {
								items: 2,
								nav: false
							},
							900: {
								items: 3,
								nav: false
							},
							1000: {
								items: 4,
								nav: true,
								loop: false,
								margin: 20
							}
						}
					})
				})
			</script>
		
			<!-- //end-smooth-scrolling -->
		
		
			<!-- dropdown nav -->
			<script>
				$(document).ready(function () {
					$(".dropdown").hover(
						function () {
							$('.dropdown-menu', this).stop(true, true).slideDown("fast");
							$(this).toggleClass('open');
						},
						function () {
							$('.dropdown-menu', this).stop(true, true).slideUp("fast");
							$(this).toggleClass('open');
						}
					);
				});
			</script>
			<!-- //dropdown nav -->
		  <script src="${pageContext.request.contextPath}/resources/js/move-top.js"></script>
		    <script src="${pageContext.request.contextPath}/resources/js/easing.js"></script>
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
		    <!--// end-smoth-scrolling -->
		
			<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
			<!-- js file -->
		</body>
		
		</html>
		
		
		</body>
		</html>
