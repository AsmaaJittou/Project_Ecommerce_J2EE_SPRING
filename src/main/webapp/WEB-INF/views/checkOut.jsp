		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		    pageEncoding="ISO-8859-1"%>
		 <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	 
		<!DOCTYPE html>
		<html lang="zxx">
		
		<head>
			<title>CHECKOUT</title>
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<meta charset="utf-8">
		  <link href="/docs/4.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		
		
		    <style>
		      .bd-placeholder-img {
		        font-size: 1.125rem;
		        text-anchor: middle;
		        -webkit-user-select: none;
		        -moz-user-select: none;
		        -ms-user-select: none;
		        user-select: none;
		      }
		
		      @media (min-width: 768px) {
		        .bd-placeholder-img-lg {
		          font-size: 3.5rem;
		        }
		      }
		    </style>
		    <!-- Custom styles for this template -->
		    <link href="form-validation.css" rel="stylesheet">
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
		   <spring:url value="/card" var="addURL"></spring:url>
            <spring:url value="/propos" var="propos"></spring:url>
              <spring:url value="/accueil" var="accueil"></spring:url>
                <spring:url value="/inscrire" var="inscrire"></spring:url>
			 <spring:url value="/checkout" var="checkout"></spring:url>
			
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
					<div class="banner">
					
					
					  <div class="container">
		  <div class="py-5 text-center">
		    <h2 style=" color:#D8BFD8">Checkout form</h2>
		     </div>
		
		  <div class="row">
		    <div class="col-md-4 order-md-2 mb-4">
		      <h4 class="d-flex justify-content-between align-items-center mb-3">
		        <span class="text-muted">Ton Panier</span>
		        <span class="badge badge-secondary badge-pill">${selectedProducts.size()}</span>
		      </h4>
		      <ul class="list-group mb-3">
		       <c:forEach var="cproduct" items="${selectedProducts}" varStatus="status">
		        <li class="list-group-item d-flex justify-content-between lh-condensed">
		          <div>
		            <h6 class="my-0" style=" color:#D8BFD8">${cproduct.nomProduit } </h6>
		          </div>
		          <span class="text-muted">${cproduct.prix}</span>
		        </li>
		 </c:forEach>
		        <li class="list-group-item d-flex justify-content-between bg-light">
		          <div class="text-success">
		          <c:set var = "price" scope = "session" value ="${totalPrice}"/>
		            <h6 class="my-0">${totalPrice }</h6>
		            <small>EXAMPLECODE</small>
		          </div>
		        </li>
		       
		      </ul>
		
		     
		    </div>
		    <div class="col-md-8 order-md-1">
		      <h4 class="mb-3">Adresse de Facturation</h4>
		      <form class="needs-validation" action="CommandeServlet" method="post">
		        <div class="row">
		          <div class="col-md-6 mb-3">
		            <label for="firstName">Nom</label>
		            <input type="text" class="form-control" id="firstName" name="nom" placeholder="" required>
		            <div class="invalid-feedback">
		              Obligatoire.
		            </div>
		          </div>
		          <div class="col-md-6 mb-3">
		            <label for="lastName">Prénom</label>
		            <input type="text" class="form-control" id="lastName" name="prenom" placeholder=""  required>
		            <div class="invalid-feedback">
		              Obligatoire.
		            </div>
		          </div>
		        </div>
		
		        <div class="mb-3">
		          <label for="email">Email <span class="text-muted">(Optional)</span></label>
		          <input type="email" class="form-control" name="email" id="email" placeholder="you@example.com">
		          <div class="invalid-feedback">
		             S'il vous plait entrer votre Email.
		          </div>
		        </div>
		
		        <div class="mb-3">
		          <label for="address">Adresse</label>
		          <input type="text" class="form-control" id="address" placeholder="adresse" name="adresse" required>
		          <div class="invalid-feedback">
		            S'il vous plait entrer votre Adresse.
		          </div>
		        </div>
		
		        <div class="row">
		          <div class="col-md-5 mb-3">
		            <label for="country">Pays</label>
		            <input type="text" class="form-control" id="address" placeholder="pays" name="pays" required>
		           
		          </div>
		            <div class="col-md-4 mb-3">
		            <label for="state">Telephone</label>
		            <input type="text" class="form-control" id="address" placeholder="telephone" name="tel" required>
		            
		          </div>
		          <div class="col-md-4 mb-3">
		            <label for="state">Ville</label>
		            <input type="text" class="form-control" id="address" placeholder="ville" name="ville" required>
		            
		          </div>
		          <div class="col-md-3 mb-3">
		            <label for="zip">Zip</label>
		            <input type="text" class="form-control" id="zip" placeholder="" name="zip" required>
		            <div class="invalid-feedback">
		             Code ZIP obligatoir
		            </div>
		          </div>
		        </div>

		        <hr class="mb-4">
		        <button class="btn btn-primary btn-lg btn-block" type="submit" style=" background-color: #D8BFD8; ">Continue to checkout</button>
		      </form>
		    </div>
		  </div>
		
		 
		</div>	
					</div>	
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
		<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
		      <script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script>
		        <script src="form-validation.js"></script>
		</body>
		</html>