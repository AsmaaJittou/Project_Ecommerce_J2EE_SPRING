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
	    
</head>

<body>
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

				<div class="col-md-3 top-info-cart text-right mt-lg-4">
					<ul class="nav navbar-nav navbar-right">
					<c:set var = "panierProduct" scope = "session" value ="${selectedProducts}"/>
					<c:if test="${not empty panierProduct}">
				
	 <li class="dropdown">
          <a href="#"  aria-expanded="false" style=" background-color: #D8BFD8 ;"> <span class="glyphicon glyphicon-shopping-cart"></span><h6 style="color: #D8BFD8 ;" > Panier-${selectedProducts.size() } </h6></a>
		 <c:forEach var="produit" items="${selectedProducts}" varStatus="status">
        <ul class="dropdown-menu dropdown-cart" role="menu"  style=" background-color: #D8BFD8 ;">
              <li>
                  <spn class="item" style=" color: #D8BFD8 ;">
                    <span class="item-left" style=" background-color: #D8BFD8 ; ">
                        <img src="${pageContext.request.contextPath}/resources/images/${produit.photo}" class="img-responsive" style:" height= 50 px; width = 50 px ;" />
                        <span class="item-info">
                            <span><h6 style=" color: #282C34 ;">${produit.nomProduit }</h6></span> 
                            <span style=" color: #282C34 ;">${produit.prix}</span>
                        </span>
                    </span>
                </span> 
              </li>
           </ul> 
          </c:forEach>
          </c:if>
          <c:if test="${empty panierProduct}">
          <h6 style='margin-right : 40% ;'>Aucun produit selection&eacute.</h6>
          </c:if>
            <spring:url value="/card" var="addURL"></spring:url>
            <spring:url value="/propos" var="propos"></spring:url>
              <spring:url value="/accueil" var="accueil"></spring:url>
                <spring:url value="/inscrire" var="inscrire"></spring:url>
             
				<ul class="dropdown-menu dropdown-cart" role="menu"  style=" background-color: #D8BFD8 ;">	<li>  <a href="${addURL}" ><h6 style="color: black ;" >Voir Panier </h6></a></li></ul>
			</li>
          </ul>
					<!---->
					<div class="overlay-login text-left">
						<button type="button" class="overlay-close1">
							<i class="fa fa-times" aria-hidden="true"></i>
						</button>
					
					</div>
					<!---->
				</div>
			</div>
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
		<!-- //header -->
		<!-- banner -->
		<div class="banner">
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="carousel-item active">
						<div class="carousel-caption text-center">
							<h3>Caftan Marocain
								<span>Symbole de la F&eacuteminit&eacute</span>
							</h3>
							<a href="shop.html" class="btn btn-sm animated-button gibson-three mt-4">Achetez maintenant</a>
						</div>
					</div>
					<div class="carousel-item item2">
						<div class="carousel-caption text-center">
							<h3>Tagin Marocain
								<span>Pour les plats  d&eacutelicieux</span>
							</h3>
							<a href="shop.html" class="btn btn-sm animated-button gibson-three mt-4">Achetez maintenant</a>

						</div>
					</div>
					<div class="carousel-item item3">
						<div class="carousel-caption text-center">
							<h3>Huiles D'argane
								<span>pour Cuisson & pour votre beaut&eacute</span>
							</h3>
							<a href="shop.html" class="btn btn-sm animated-button gibson-three mt-4">Achetez maintenant</a>

						</div>
					</div>

				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">pr&eacutec&eacutedent</span>
				</a>
				<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">suivant</span>
				</a>
			</div>
			<!--//banner -->
		</div>
	</div>
	<!--//banner-sec-->
	<section class="banner-bottom-wthreelayouts py-lg-5 py-3">
		<div class="container-fluid">
			<div class="inner-sec-shop px-lg-4 px-3">
				<h3 class="tittle-w3layouts my-lg-4 my-4" style=" color: #D8BFD8 ;">Nous vous recommandons </h3>
				<div class="row">
					<!-- /womens -->
				 <c:forEach var="produit" items="${listProduct}" varStatus="status">
					<div class="col-md-3 product-men women_two">
						<div class="product-googles-info googles">
							<div class="men-pro-item">
								<div class="men-thumb-item">
									<img src="${pageContext.request.contextPath}/resources/images/${produit.photo}" class="img-fluid" style:" height= 900 px; width = 900 px" alt="">
									<div class="men-cart-pro">
										<div class="inner-men-cart-pro">
										   <spring:url value="/single/${produit.idProduit}" var="single"></spring:url>
											<a href="${single}" class="link-product-add-cart">Voir le produit</a>
										</div>
									</div>
								</div>
								<div class="item-info-product">
									<div class="info-product-price">
										<div class="grid_meta">
											<div class="product_price">
												<h4>
													<a href="SingleServlet?id=9&action=show">${produit.nomProduit}</a>
												</h4>
												<div class="grid-price mt-2">
													<span class="money ">${produit.prix} </span>
												</div>
											</div>
										</div>
								
									 <form action="accueil" method="post">
									
										<input type="hidden" name="idProduit" value="${produit.idProduit }">
										<button type="submit" class="googles-cart pgoogles-cart"  value="cart">
											<i class="fas fa-cart-plus"></i>
										</button>
									</form>
							
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>	
				</c:forEach>
				</div>

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
						<p>N 56 block 11, Avenue Riad Elssalam, AGADIR.</p>
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
							<a href="shop.html">Cat&eacutegorie</a>
						</li>
						<li>
							<a href="contact.html">Contactez Nous</a>
						</li>
					</ul>
				</div>
				<div class="col-lg-3 footer-grid-w3ls">
					<div class="footer-title">
						<h3>Inscrivez-vous pour vos offres</h3>
					</div>
					<div class="footer-text">
						<p>En vous inscrivant au notre liste de diffusion, vous obtiendrez toujours les derni&egraveres nouvelles et mises &agrave jour de notre part.</p>
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
				<p class="copy-right text-center ">&copy; 2019 MOROCCO BEING. Tous droits r&eacuteserv&eacutes </p>


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
	<script>
		googles.render();

		googles.cart.on('googles_checkout', function (evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {}
			}
		});
	</script>
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
	<script> (function(){
		 
		  $("#cart").on("click", function() {
		    $(".shopping-cart").fadeToggle( "fast");
		  });
		  
		})();</script>
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
