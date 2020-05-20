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
<title>Student Records</title>

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
						<li class="menu-active"><a href="SRecords">Records</a></li>
						<li class="menu-has-children"><a href="Notes.jsp">Notes</a></li>
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
					<h1 class="text-white">Records & Top Rankers</h1>
					<p>
						Sometimes we are tested not to show our weaknesses, but to
						discover our strengths. <br /> Dream it. Believe it. Build it.
					</p>
					<div class="link-nav">
						<span class="box"> <a href="index.jsp">Home </a> <i
							class="lnr lnr-arrow-right"></i> <a href="Records.jsp">Records</a>
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
						<u><h2>Records</h2></u>
						<hr>
					</div>
				</div>

			</div>
			<div style="margin-top: -55px;">

				<center>
					<table align="center" width="50%" height="220px"
						style="padding: 0px; margin: 18px; width: 50%; background-color: #283367; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius: 0px;">
						<tr>
							<th colspan="2">
								<center>
									<font color="cyan"> <b> QUANTITATIVE APTITUDE </b>
									</font>
								</center>
							</th>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Attempted </font></td>
							<td align="center" width="50%"><font color="white">
									${apt.get(0)} </font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Question Attempted </font></td>
							<td align="center" width="50%"><font color="white">${apt.get(1)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">No.
									of Correct Answer </font></td>
							<td align="center" width="50%"><font color="white">${apt.get(2)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Wrong Answer </font></td>
							<td align="center" width="50%"><font color="white">${apt.get(3)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Unanserwed Answer</font></td>
							<td align="center" width="50%"><font color="white">
									${apt.get(4)} </font></td>
						</tr>
					</table>
				</center>

				<center>
					<table align="center" width="50%" height="220px"
						style="padding: 0px; margin: 18px; width: 50%; background-color: #283367; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius: 0px;">
						<tr>
							<th colspan="2">
								<center>
									<font color="cyan"> <b> LOGICAL REASONING </b>
									</font>
								</center>
							</th>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Attempted </font></td>
							<td align="center" width="50%"><font color="white">
									${logi.get(0)} </font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Question Attempted </font></td>
							<td align="center" width="50%"><font color="white">${logi.get(1)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">No.
									of Correct Answer </font></td>
							<td align="center" width="50%"><font color="white">${logi.get(2)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Wrong Answer </font></td>
							<td align="center" width="50%"><font color="white">${logi.get(3)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Unanserwed Answer</font></td>
							<td align="center" width="50%"><font color="white">
									${logi.get(4)} </font></td>
						</tr>
					</table>
				</center>

				<center>
					<table align="center" width="50%" height="220px"
						style="padding: 0px; margin: 18px; width: 50%; background-color: #283367; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius: 0px;">
						<tr>
							<th colspan="2">
								<center>
									<font color="cyan"> <b> JAVA PROGRAMMING </b>
									</font>
								</center>
							</th>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Attempted </font></td>
							<td align="center" width="50%"><font color="white">
									${java.get(0)} </font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Question Attempted </font></td>
							<td align="center" width="50%"><font color="white">${java.get(1)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">No.
									of Correct Answer </font></td>
							<td align="center" width="50%"><font color="white">${java.get(2)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Wrong Answer </font></td>
							<td align="center" width="50%"><font color="white">${java.get(3)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Unanserwed Answer</font></td>
							<td align="center" width="50%"><font color="white">
									${java.get(4)} </font></td>
						</tr>
					</table>
				</center>
				<center>
					<table align="center" width="50%" height="220px"
						style="padding: 0px; margin: 18px; width: 50%; background-color: #283367; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius: 0px;">
						<tr>
							<th colspan="2">
								<center>
									<font color="cyan"> <b> C++ Programming</b>
									</font>
								</center>
							</th>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Attempted </font></td>
							<td align="center" width="50%"><font color="white">
									${cpp.get(0)} </font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Question Attempted </font></td>
							<td align="center" width="50%"><font color="white">${cpp.get(1)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">No.
									of Correct Answer </font></td>
							<td align="center" width="50%"><font color="white">${cpp.get(2)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Wrong Answer </font></td>
							<td align="center" width="50%"><font color="white">${cpp.get(3)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Unanserwed Answer</font></td>
							<td align="center" width="50%"><font color="white">
									${cpp.get(4)} </font></td>
						</tr>
					</table>
				</center>
				<center>
					<table align="center" width="50%" height="220px"
						style="padding: 0px; margin: 18px; width: 50%; background-color: #283367; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius: 0px;">
						<tr>
							<th colspan="2">
								<center>
									<font color="cyan"> <b> C PROGRAMMING </b>
									</font>
								</center>
							</th>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Attempted </font></td>
							<td align="center" width="50%"><font color="white">
									${c.get(0)} </font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Question Attempted </font></td>
							<td align="center" width="50%"><font color="white">${c.get(1)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">No.
									of Correct Answer </font></td>
							<td align="center" width="50%"><font color="white">${c.get(2)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Wrong Answer </font></td>
							<td align="center" width="50%"><font color="white">${c.get(3)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Unanserwed Answer</font></td>
							<td align="center" width="50%"><font color="white">
									${c.get(4)} </font></td>
						</tr>
					</table>
				</center>
				<center>
					<table align="center" width="50%" height="220px"
						style="padding: 0px; margin: 18px; width: 50%; background-color: #283367; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius: 0px;">
						<tr>
							<th colspan="2">
								<center>
									<font color="cyan"> <b> PYTHON PROGRAMMING </b>
									</font>
								</center>
							</th>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Attempted </font></td>
							<td align="center" width="50%"><font color="white">
									${pyth.get(0)} </font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Question Attempted </font></td>
							<td align="center" width="50%"><font color="white">${pyth.get(1)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">No.
									of Correct Answer </font></td>
							<td align="center" width="50%"><font color="white">${pyth.get(2)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Wrong Answer </font></td>
							<td align="center" width="50%"><font color="white">${pyth.get(3)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Unanserwed Answer</font></td>
							<td align="center" width="50%"><font color="white">
									${pyth.get(4)} </font></td>
						</tr>
					</table>
				</center>
				<center>
					<table align="center" width="50%" height="220px"
						style="padding: 0px; margin: 18px; width: 50%; background-color: #283367; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius: 0px;">
						<tr>
							<th colspan="2">
								<center>
									<font color="cyan"> <b> RANDOM </b>
									</font>
								</center>
							</th>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Attempted </font></td>
							<td align="center" width="50%"><font color="white">
									${rand.get(0)} </font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Question Attempted </font></td>
							<td align="center" width="50%"><font color="white">${rand.get(1)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">No.
									of Correct Answer </font></td>
							<td align="center" width="50%"><font color="white">${rand.get(2)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Wrong Answer </font></td>
							<td align="center" width="50%"><font color="white">${rand.get(3)}
							</font></td>
						</tr>
						<tr>
							<td align="center" width="50%"><font color="white">
									No. of Unanserwed Answer</font></td>
							<td align="center" width="50%"><font color="white">
									${rand.get(4)} </font></td>
						</tr>
					</table>
				</center>
				<br>

			</div>
			
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="section-title text-center"
						style="padding-bottom: 0px;">
						<u><h2>Performance Graph :</h2></u>
						<hr>
					</div>
				</div>
			</div>
			
			
			
			
			
			
			
			<div style="border: 1px solid; padding:20px;">
			
			
				<canvas id="myChart"></canvas>
			
				<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

				<script>
					var ctx = document.getElementById('myChart').getContext(
							'2d');
					
					
					var q = ( ${apt.get(2)} * 100) / ${apt.get(1)}
					var l = ( ${logi.get(2)} * 100) / ${logi.get(1)}
					var j = ( ${java.get(2)} * 100) / ${java.get(1)}
					var cpp = ( ${cpp.get(2)} * 100) / ${cpp.get(1)}
					var c = ( ${c.get(2)} * 100) / ${c.get(1)}
					var p = ( ${pyth.get(2)} * 100) / ${pyth.get(1)}
					var r = ( ${rand.get(2)} * 100) / ${rand.get(1)}
					
					var chart = new Chart(ctx, {
						// The type of chart we want to create
						type : 'bar',

						// The data for our dataset
						data : {
							labels : [ 'Quantitative Aptitude', 'Logical Reasoning', 'Java Programming', 'C++ Programming',
									'C Programming', 'Python Programming', 'Random' ],
							datasets : [ {
								label : 'Subject Wise Average',
								backgroundColor : ['cyan','orange','green','purple','blue','gray','violet'],
								borderColor : ['cyan','orange','green','purple','blue','gray','violet'],
								data : [ q, l, j, cpp, c, p, r, 0, 100 ]
							} ]
						},

						// Configuration options go here
						options : {}
					});
				</script>


			</div> </br> </br>

			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="section-title text-center"
						style="padding-bottom: 0px;">
						<u><h2>Top Rankers :</h2></u>
						<hr>
					</div>
				</div>
			</div>
			
			<div>
				<center>
					<table align="center" width="50%" height="220px" style="padding: 0px; margin: 18px; width: 55%; background-color: #283367; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius: 0px;">
						<tr>
							<th colspan="3">
								<center>
									<font color="cyan" style="font-size:20px;"> <b> Top 5 Rankers </b>
									</font>
								</center>
							</th>
						</tr>
						<tr>
							<th style="text-align: center; width: 25%;">
							<font color="white"> RANK </font></th>
							<th style="text-align: center; width: 50%;">
							<font color="white"> NAME </font></th>
							<th style="text-align: center; width: 25%;">
							<font color="white"> POINTS </font></th>

						</tr>
						<tr>
							<td style="text-align: center; width: 25%;">
							<font color="white"> 1. </font></td>
							<td style="text-align: center; width: 50%;">
							<font color="white">${tpem.get(0)}</font></td>
							<td style="text-align: center; width: 25%;">
							<font color="white">${tpmk.get(0)}</font></td>
						</tr>
						<tr>
							<td style="text-align: center; width: 25%;">
							<font color="white"> 2. </font></td>
							<td style="text-align: center; width: 50%;">
							<font color="white">${tpem.get(1)}</font></td>
							<td style="text-align: center; width: 25%;">
							<font color="white">${tpmk.get(1)}</font></td>
						</tr>
						<tr>
							<td style="text-align: center; width: 25%;">
							<font color="white"> 3. </font></td>
							<td style="text-align: center; width: 50%;">
							<font color="white">${tpem.get(2)}</font></td>
							<td style="text-align: center; width: 25%;">
							<font color="white">${tpmk.get(2)}</font></td>
						</tr>
						<tr>
							
							<td style="text-align: center; width: 25%;">
							<font color="white"> 4. </font></td>
							<td style="text-align: center; width: 50%;">
							<font color="white">${tpem.get(3)}</font></td>
							<td style="text-align: center; width: 25%;">
							<font color="white">${tpmk.get(3)}</font></td>
						</tr>
						<tr>
							
							<td style="text-align: center; width: 25%;">
							<font color="white"> 5. </font></td>
							<td style="text-align: center; width: 50%;">
							<font color="white">${tpem.get(4)}</font></td>
							<td style="text-align: center; width: 25%;">
							<font color="white">${tpmk.get(4)}</font></td>
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