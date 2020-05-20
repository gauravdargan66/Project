<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
<!-- Author Meta -->
<meta name="author" content="codepixer">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>Notes</title>

<!--
			Google Font
			============================================= -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,500,600"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500i"
	rel="stylesheet">

<!--
			CSS
			============================================= -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main.css">

<style>
/* width */
::-webkit-scrollbar {
	width: 17px;
}

/* Track */
::-webkit-scrollbar-track {
	box-shadow: inset 0 0 5px grey;
	border-radius: 5px;
}

/* Handle */
::-webkit-scrollbar-thumb {
	background: #3279bb;
	border-radius: 5px;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
	background: #6f42c1;
}
</style>
</head>

<body>

	<!-- Start Header Area -->
	<header id="header">
		<div class="container">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="Log_Index.jsp"><img src="img/logo.png" alt="" title="" /></a>
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li><a href="Log_Index.jsp">Home</a></li>
						<li><a href="Log_About.jsp">About</a></li>
						<li><a href="SRecords">Records</a></li>
					
						<li class="menu-active"><a href="Notes.jsp">Notes</a></li>

						<li><a href="Log_Contact.jsp">Contact</a></li>
						<li>
							<form id="myform" action="LogoutServlet" method="post">
								<a href="javascript: submitform()">Log Out</a>
							</form> <script type="text/javascript">
								function submitform() {
									document.forms["myform"].submit();
								}
							</script>
						</li>

					</ul>
				</nav>
				<!-- #nav-menu-container -->
			</div>
		</div>
	</header>
	<!-- End Header Area -->


	<!-- Start Banner Area -->
	<section class="banner-area relative">
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-white">Study Material & Notes</h1>
					<p>
						The more that you read, the more things you will know. The more that you learn, the more places you will go.
					</p>
					<div class="link-nav">
						<span class="box"> <a href="index.jsp">Home </a> <i
							class="lnr lnr-arrow-right"></i> <a href="Notes.jsp">Notes</a>
						</span>
					</div>
				</div>
			</div>
		</div>
		<%
			response.setHeader("Cache-Control", "no-cache");

			//Forces caches to obtain a new copy of the page from the origin server
			response.setHeader("Cache-Control", "no-store");

			//Directs caches not to store the page under any circumstance
			response.setDateHeader("Expires", 0);

			//Causes the proxy cache to see the page as "stale"
			response.setHeader("Pragma", "no-cache");
			//HTTP 1.0 backward enter code here

			//String userName = (String) session.getAttribute("plno");
			String name = (String) session.getAttribute("name");
			if (null == name) {
				session.invalidate();
				response.sendRedirect("Log_Index.jsp");
				//request.setAttribute("Error", "Session has ended.  Please logenter code herein.");
				//RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
				//rd.include(request, response);
				//out.println("Session has ended.  Please login.");
			}
		%>
		<div class="rocket-img">
			<img src="img/rocket.png" alt="">
		</div>
	</section>
	<!-- End Banner Area -->




	<!-- Start About Area -->

	<section class="faculty-area section-gap" style="padding: 100px;">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="section-title text-center"
						style="padding-bottom: 60px;">
						<u><h2>Study Material</h2></u>
						<hr>
					</div>
				</div>

			</div>
			<div style="margin-top: -55px;">

											
				<center>
					<table align="center" width="60%" height="240px"
						style="padding: 0px; margin: 18px; width: 60%;  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius: 0px;">
						<tr>
							<th colspan="2">
								<center>
									<u><h3>Notes</h3></u>
								</center>
							</th>
						</tr>
						<tr>
							<td align="center" width="50%"><h4>
									Java Programming</h4></td>
							<td align="center" width="50%">
									<a href="NotesDown?id=1" class="primary-btn" style="height:38px" >Click to Download</a></td>
						</tr>
						<tr>
							<td align="center" width="50%"><h4>
									C++ Programming</h4></td>
							<td align="center" width="50%">
									<a href="NotesDown?id=2" class="primary-btn" style="height:38px">Click to Download</a></td>
						</tr>
						<tr>
							<td align="center" width="50%"><h4>
									C Programming</h4></td>
							<td align="center" width="50%">
									<a href="NotesDown?id=3" class="primary-btn" style="height:38px">Click to Download</a></td>
						</tr>
						<tr>
							<td align="center" width="50%"><h4>
									Python Programming</h4></td>
							<td align="center" width="50%">
									<a href="NotesDown?id=4" class="primary-btn" style="height:38px">Click to Download</a></td>
						</tr>
						<tr style="height:20px;">
						</tr>
						
					</table>
				</center>	
				

			</div>



		</div>



	</section>
	<!-- End About Area -->



	<!-- Start Footer Area -->
	<footer style="padding: 65px;" class="footer-area section-gap">
		<div style="margin: 0px;" class="container">
			<!--<div class="row">
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Top Products</h4>
					<ul>
						<li><a href="#">Managed Website</a></li>
						<li><a href="#">Manage Reputation</a></li>
						<li><a href="#">Power Tools</a></li>
						<li><a href="#">Marketing Service</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Quick Links</h4>
					<ul>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Brand Assets</a></li>
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Terms of Service</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Features</h4>
					<ul>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Brand Assets</a></li>
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Terms of Service</a></li>
					</ul>
				</div>
				<div class="col-lg-2 col-md-6 single-footer-widget">
					<h4>Resources</h4>
					<ul>
						<li><a href="#">Guides</a></li>
						<li><a href="#">Research</a></li>
						<li><a href="#">Experts</a></li>
						<li><a href="#">Agencies</a></li>
					</ul>
				</div>
				<div class="col-lg-4 col-md-6 single-footer-widget">
					<h4>Newsletter</h4>
					<p>You can trust us. we only send promo offers,</p>
					<div class="form-wrap" id="mc_embed_signup">
						<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
						 method="get" class="form-inline">
							<input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
							 required="" type="email">
							<button class="click-btn btn btn-default"><span class="lnr lnr-arrow-right"></span></button>
							<div style="position: absolute; left: -5000px;">
								<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
							</div>

							<div class="info"></div>
						</form>
					</div>
				</div>
			</div>-->
			<div style="margin: 0px;"
				class="footer-bottom row align-items-center">
				<p class="footer-text m-0 col-lg-8 col-md-12">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright &copy;
					<script>
						document.write(new Date().getFullYear());
					</script>
					All rights reserved | This Web Application is made with <i
						class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#"
						target="_blank">AttBoyz</a>
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
				<div class="col-lg-4 col-md-12 footer-social">
					<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
						class="fa fa-twitter"></i></a> <a href="#"><i
						class="fa fa-dribbble"></i></a> <a href="#"><i
						class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer Area -->

	<!-- ####################### Start Scroll to Top Area ####################### -->
	<div id="back-top">
		<a title="Go to Top" href="#"></a>
	</div>
	<!-- ####################### End Scroll to Top Area ####################### -->

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/owl-carousel-thumb.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/parallax.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>
</body>

</html>