<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">

<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
	<title>Student Dashboard</title>

	<!--
			Google Font
			============================================= -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,500,600" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500i" rel="stylesheet">

	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/themify-icons/0.1.2/css/themify-icons.css">
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
						<li class="menu-has-children"><a href="Notes.jsp">Notes</a></li>
						<li><a href="Log_Contact.jsp">Contact</a></li>
						
						<li>
						<form id="myform" action="LogoutServlet" method="post">
                       		 <a href="javascript: submitform()">Log Out</a>
                       	</form>
                       	
                       	<script type="text/javascript">
							function submitform()
							{
									document.forms["myform"].submit();
							}
						</script>
                       	</li>
					</ul>
				</nav><!-- #nav-menu-container -->
			</div>
		</div>
	</header>
	<!-- End Header Area -->


	<!-- Start Banner Area -->
	<section class="home-banner-area relative">
		<div class="container">
			<div class="row fullscreen d-flex align-items-center justify-content-center">
				<div class="banner-content col-lg-8 col-md-12">
					<h1 class="wow fadeIn" data-wow-duration="4s">We Provides the Best Quizes <br> on the Web</h1>
					<p class="text-white">
						We provide different categories of Quizes in different Programing Languages, Quantitative Aptitude & Logical Reasoning.
					</p>

					<!--<div class="input-wrap">
						<form action="" class="form-box d-flex justify-content-between" style="max-width:none ; width : 750px ">
							<input type="text" placeholder="Enter Name" class="form-control" name="name">
                            <input type="text" placeholder="Enter E-Mail" class="form-control" name="username">
                            <input type="password" placeholder="Enter Password" class="form-control" name="password">
							<button type="submit" class="btn search-btn">SignUp</button>
						</form>
					</div> -->
					<div style="margin-top:15px; margin-bottom:15px;">
						<p align = "center">
							


							
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
String  name = (String) session.getAttribute("name");
 if (null == name) {
  		response.sendRedirect("LogIn.jsp");
	//request.setAttribute("Error", "Session has ended.  Please logenter code herein.");
  //RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
  //rd.include(request, response);
  //out.println("Session has ended.  Please login.");
}
%>
							<b><h4><font color="white" >Welcome ${name} ........ </font></h4></b>
						</p>
					</div>
					<h4 class="text-white">Quiz Categories</h4>

					<div class="courses pt-20">
						<a href="Instruct.jsp?value=aptitude" data-wow-duration="1s" data-wow-delay=".3s" class="primary-btn transparent mr-10 mb-10 wow fadeInDown">Quantitative Aptitude 
							</a>
						<a href="Instruct.jsp?value=logical" data-wow-duration="1s" data-wow-delay=".6s" class="primary-btn transparent mr-10 mb-10 wow fadeInDown">Logical Reasoning</a>
						<a href="Instruct.jsp?value=java" data-wow-duration="1s" data-wow-delay=".9s" class="primary-btn transparent mr-10 mb-10 wow fadeInDown">Java Programming</a>
						<a href="Instruct.jsp?value=cpp" data-wow-duration="1s" data-wow-delay="1.2s" class="primary-btn transparent mr-10 mb-10 wow fadeInDown">C++ Programming
						</a>
						<a href="Instruct.jsp?value=c" data-wow-duration="1s" data-wow-delay="1.5s" class="primary-btn transparent mr-10 mb-10 wow fadeInDown">C Programming</a>
<!-- 						<a href="Instruct.jsp?value=vb" data-wow-duration="1s" data-wow-delay="1.8s" class="primary-btn transparent mr-10 mb-10 wow fadeInDown">VB.NET	
						</a> -->
						<a href="Instruct.jsp?value=python" data-wow-duration="1s" data-wow-delay="2.1s" class="primary-btn transparent mr-10 mb-10 wow fadeInDown">Python</a>
                        <a href="Instruct.jsp?value=random" data-wow-duration="1s" data-wow-delay="2.1s" class="primary-btn transparent mr-10 mb-10 wow fadeInDown">Random</a>
					</div>
				</div>
			</div>
		</div> 
		<div class="rocket-img">
			<img src="img/rocket.png" alt="">
		</div>
	</section>
	<!-- End Banner Area -->


	<!-- Start About Area -->
	<section class="about-area section-gap">
		<div class="container">
			<div class="row align-items-center justify-content-center">
				<div class="col-lg-5 col-md-6 about-left">
					<img class="img-fluid" src="img/about.jpg" alt="">
				</div>
				<div class="offset-lg-1 col-lg-6 offset-md-0 col-md-12 about-right">
					<h2 style="color:#666;">
						Here we are providing five powerful tips to make the competitive exam preparations an easy and effective task:
					</h2><hr>
					<div class="wow fadeIn" data-wow-duration="1s">
						<p>
							<ul style="list-style: circle;">
                            	<li style="font-size: 20px;">  <h4>Know the syllabus, weightage of topics and pattern of exam,</h4> </li>
                                <li style="font-size: 20px;"> <h4>Make and follow a timetable,</h4> </li>
                                <li style="font-size: 20px;"> <h4>Keep a set of reliable study resources,</h4> </li>
                                <li style="font-size: 20px;"> <h4>Eliminate all the exam related fear and stress,</h4> </li>
                                <li style="font-size: 20px;"> <h4>Never try to study anything new in the last few days.</h4> </li>
                            </ul>
						</p>
					</div>
					<!--<a href="courses.html" class="primary-btn">Explore Courses</a> -->
				</div> 
			</div>
		</div>
	</section>
	<!-- End About Area -->


	<!-- Start Courses Area -->
	<!--<section class="courses-area section-gap">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-5 about-right">
					<h1>
						This is Why <br> We have Solid Idea
					</h1>
					<div class="wow fadeIn" data-wow-duration="1s">
						<p>
							There is a moment in the life of any aspiring astronomer that it is time to buy that first telescope. It’s exciting to think
							about setting up your own viewing station. In the life of any aspiring astronomer that it is time to buy that first
							telescope. It’s exciting to think about setting up your own viewing station.
						</p>
					</div>
					<a href="courses.html" class="primary-btn white">Explore Courses</a>
				</div>
				<div class="offset-lg-1 col-lg-6">
					<div class="courses-right">
						<div class="row">
							<div class="col-lg-6 col-md-6 col-sm-12">
								<ul class="courses-list">
									<li>
										<a class="wow fadeInLeft" href="courses.html" data-wow-duration="1s" data-wow-delay=".1s">
											<i class="fa fa-book"></i> Development
										</a>
									</li>
									<li>
										<a class="wow fadeInLeft" href="courses.html" data-wow-duration="1s" data-wow-delay=".3s">
											<i class="fa fa-book"></i> IT & Software
										</a>
									</li>
									<li>
										<a class="wow fadeInLeft" href="courses.html" data-wow-duration="1s" data-wow-delay=".5s">
											<i class="fa fa-book"></i> Photography
										</a>
									</li>
									<li>
										<a class="wow fadeInLeft" href="courses.html" data-wow-duration="1s" data-wow-delay=".7s">
											<i class="fa fa-book"></i> Language
										</a>
									</li>
									<li>
										<a class="wow fadeInLeft" href="courses.html" data-wow-duration="1s" data-wow-delay=".9s">
											<i class="fa fa-book"></i> Life Science
										</a>
									</li>
									<li>
										<a class="wow fadeInLeft" href="courses.html" data-wow-duration="1s" data-wow-delay="1.1s">
											<i class="fa fa-book"></i> Business
										</a>
									</li>
									<li>
										<a class="wow fadeInLeft" href="courses.html" data-wow-duration="1s" data-wow-delay="1.3s">
											<i class="fa fa-book"></i> Socoal Science
										</a>
									</li>
								</ul>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-12">
								<ul class="courses-list">
									<li>
										<a class="wow fadeInRight" href="courses.html" data-wow-duration="1s" data-wow-delay="1.3s">
											<i class="fa fa-book"></i> Data Science
										</a>
									</li>
									<li>
										<a class="wow fadeInRight" href="courses.html" data-wow-duration="1s" data-wow-delay="1.1s">
											<i class="fa fa-book"></i> Design
										</a>
									</li>
									<li>
										<a class="wow fadeInRight" href="courses.html" data-wow-duration="1s" data-wow-delay=".9s">
											<i class="fa fa-book"></i> Training
										</a>
									</li>
									<li>
										<a class="wow fadeInRight" href="courses.html" data-wow-duration="1s" data-wow-delay=".7s">
											<i class="fa fa-book"></i> Humanities
										</a>
									</li>
									<li>
										<a class="wow fadeInRight" href="courses.html" data-wow-duration="1s" data-wow-delay=".5s">
											<i class="fa fa-book"></i> Marketing
										</a>
									</li>
									<li>
										<a class="wow fadeInRight" href="courses.html" data-wow-duration="1s" data-wow-delay=".3s">
											<i class="fa fa-book"></i> Economics
										</a>
									</li>
									<li>
										<a class="wow fadeInRight" href="courses.html" data-wow-duration="1s" data-wow-delay=".1s">
											<i class="fa fa-book"></i> Personal Dev
										</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Courses Area -->


	<!--Start Feature Area -->
	<!-- <section class="feature-area" style="padding-top:0px;">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="section-title text-center">
						<h1>Features That Make Us Hero</h1>
						<p>
							If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for
							as low as $.17 each.
						</p>
					</div>
				</div>
			</div>
			<div class="feature-inner row">
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<i class="ti-crown"></i>
						<h4>Java Programming</h4>
						<div class="wow fadeIn" data-wow-duration="1s" data-wow-delay=".1s">
							<p>
								Java is a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<i class="ti-briefcase"></i>
						<h4>HTML</h4>
						<div class="wow fadeIn" data-wow-duration="1s" data-wow-delay=".3s">
							<p>
								Hypertext Markup Language is the standard markup language for documents designed to be displayed in a web browser, HTML describes the structure of a Web page.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<i class="ti-medall-alt"></i>
						<h4>VB .Net</h4>
						<div class="wow fadeIn" data-wow-duration="1s" data-wow-delay=".5s">
							<p>
								Visual Basic .NET is a multi-paradigm, object-oriented programming language, implemented on the .NET Framework.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<i class="ti-key"></i>
						<h4>C++</h4>
						<div class="wow fadeIn" data-wow-duration="1s" data-wow-delay=".1s">
							<p>
								C++ is a general-purpose programming language created by Bjarne Stroustrup as an extension of the C programming language, or "C with Classes".
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<i class="ti-files"></i>
						<h4>Quantitative Aptitude</h4>
						<div class="wow fadeIn" data-wow-duration="1s" data-wow-delay=".3s">
							<p>
								Quantitative Aptitude - Arithmetic Ability test helps measure one's numerical ability, problem solving and mathematical skills.
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="feature-item">
						<i class="ti-headphone-alt"></i>
						<h4>Logical Reasoning</h4>
						<div class="wow fadeIn" data-wow-duration="1s" data-wow-delay=".5s">
							<p>
								Logical reasoning is the process of using a rational, systematic series of steps based on sound mathematical procedures and given statements to arrive at a conclusion.
                            </p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>-->
	<!-- End Feature Area -->


	<!-- Start Faculty Area -->
	<!--<section class="faculty-area section-gap">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8">
					<div class="section-title text-center">
						<h1>Faculty Members</h1>
						<p>
							If you are looking at blank cassettes on the web, you may be very confused at the difference in price. You may see some for
							as low as $.17 each.
						</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center d-flex align-items-center">
				<div class="col-lg-3 col-md-6 col-sm-12 single-faculty">
					<div class="thumb d-flex justify-content-center">
						<img class="img-fluid" src="img/faculty/f1.jpg" alt="">
					</div>
					<div class="meta-text text-center">
						<h4>Ethel Davis</h4>
						<p class="designation">Sr. Faculty Data Science</p>
						<div class="info wow fadeIn" data-wow-duration="1s" data-wow-delay=".1s">
							<p>
								If you are looking at blank cassettes on the web, you may be very confused at the difference in price.
							</p>
						</div>
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 single-faculty">
					<div class="thumb d-flex justify-content-center">
						<img class="img-fluid" src="img/faculty/f2.jpg" alt="">
					</div>
					<div class="meta-text text-center">
						<h4>Rodney Cooper</h4>
						<p class="designation">Sr. Faculty Data Science</p>
						<div class="info wow fadeIn" data-wow-duration="1s" data-wow-delay=".3s">
							<p>
								If you are looking at blank cassettes on the web, you may be very confused at the difference in price.
							</p>
						</div>
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 single-faculty">
					<div class="thumb d-flex justify-content-center">
						<img class="img-fluid" src="img/faculty/f3.jpg" alt="">
					</div>
					<div class="meta-text text-center">
						<h4>Dora Walker</h4>
						<p class="designation">Sr. Faculty Data Science</p>
						<div class="info wow fadeIn" data-wow-duration="1s" data-wow-delay=".5s">
							<p>
								If you are looking at blank cassettes on the web, you may be very confused at the difference in price.
							</p>
						</div>
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-12 single-faculty">
					<div class="thumb d-flex justify-content-center">
						<img class="img-fluid" src="img/faculty/f4.jpg" alt="">
					</div>
					<div class="meta-text text-center">
						<h4>Lena Keller</h4>
						<p class="designation">Sr. Faculty Data Science</p>
						<div class="info wow fadeIn" data-wow-duration="1s" data-wow-delay=".7s">
							<p>
								If you are looking at blank cassettes on the web, you may be very confused at the difference in price.
							</p>
						</div>
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Faculty Area -->


	<!-- Start Testimonials Area -->
	<!--<section class="testimonials-area section-gap">
		<div class="container">
			<div class="testi-slider owl-carousel" data-slider-id="1">
				<div class="item">
					<div class="testi-item">
						<img src="img/quote.png" alt="">
						<h4>Fanny Spencer</h4>
						<ul class="list">
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
						</ul>
						<div class="wow fadeIn" data-wow-duration="1s">
							<p>
								As conscious traveling Paup ers we must always be oncerned about our dear Mother Earth. If you think about it, you travel
								across her face <br> and She is the host to your journey.
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="testi-item">
						<img src="img/quote.png" alt="">
						<h4>Fanny Spencer</h4>
						<ul class="list">
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
						</ul>
						<div class="wow fadeIn" data-wow-duration="1s">
							<p>
								As conscious traveling Paup ers we must always be oncerned about our dear Mother Earth. If you think about it, you travel
								across her face <br> and She is the host to your journey.
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="testi-item">
						<img src="img/quote.png" alt="">
						<h4>Fanny Spencer</h4>
						<ul class="list">
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
						</ul>
						<div class="wow fadeIn" data-wow-duration="1s">
							<p>
								As conscious traveling Paup ers we must always be oncerned about our dear Mother Earth. If you think about it, you travel
								across her face <br> and She is the host to your journey.
							</p>
						</div>
					</div>
				</div>
				<div class="item">
					<div class="testi-item">
						<img src="img/quote.png" alt="">
						<h4>Fanny Spencer</h4>
						<ul class="list">
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
							<li><a href="#"><i class="fa fa-star"></i></a></li>
						</ul>
						<div class="wow fadeIn" data-wow-duration="1s">
							<p>
								As conscious traveling Paup ers we must always be oncerned about our dear Mother Earth. If you think about it, you travel
								across her face <br> and She is the host to your journey.
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="owl-thumbs d-flex justify-content-center" data-slider-id="1">
				<div class="owl-thumb-item">
					<div>
						<img class="img-fluid" src="img/testimonial/t1.jpg" alt="">
					</div>
					<div class="overlay overlay-grad"></div>
				</div>
				<div class="owl-thumb-item">
					<div>
						<img class="img-fluid" src="img/testimonial/t2.jpg" alt="">
					</div>
					<div class="overlay overlay-grad"></div>
				</div>
				<div class="owl-thumb-item">
					<div>
						<img class="img-fluid" src="img/testimonial/t3.jpg" alt="">
					</div>
					<div class="overlay overlay-grad"></div>
				</div>
				<div class="owl-thumb-item">
					<div>
						<img class="img-fluid" src="img/testimonial/t4.jpg" alt="">
					</div>
					<div class="overlay overlay-grad"></div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Testimonials Area -->


	<!-- Start Footer Area -->
		<footer style="padding:65px;" class="footer-area section-gap">
		<div style="margin:0px;" class="container">
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
			<div style="margin:0px;" class="footer-bottom row align-items-center">
				<p class="footer-text m-0 col-lg-8 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This Web Application  is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="#" target="_blank">AttBoyz</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				<div class="col-lg-4 col-md-12 footer-social">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-dribbble"></i></a>
					<a href="#"><i class="fa fa-behance"></i></a>
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
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