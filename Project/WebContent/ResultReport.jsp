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
	<title>Performance Report</title>

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

<meta charset="ISO-8859-1">
<title>Result Report</title>
</head>
<body onload="Hello();" >
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
	<section class="banner-area relative">
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-white">
						Ready for Results
					</h1><br><br><br>
					<!-- <p>Here are the Some Necessary Instruction for the Quiz test. Please Read It & give Your Exam CareFully.</p> -->
					<div class="link-nav">
						<span class="box">
							<a href="Log_Index.jsp">Home </a>
							<i class="lnr lnr-arrow-right"></i>
							<a href="ResultReport.jsp">Performance Report</a>
						</span>
					</div>
				</div>
			</div>
		</div>
		<div class="rocket-img">
			<img src="img/rocket.png" alt="">
		</div>
	</section>
	<!-- End Banner Area -->
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
				
 				if (name == null) {
  					session.invalidate();	
 					response.sendRedirect("LogIn.jsp");
					
 				}

 				
		%>

    
	<div style="height:30px;">
    </div>

	<!-- Start Faculty Area -->
	<section class="faculty-area section-gap" style="padding:100px;">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8" >
					<div class="section-title text-center" style="padding-bottom: 30px;">
						<h2>Performance Report</h2> <hr>
						
						<center style="font-size:20px;">
						<div style="padding:15px; margin:10px; width:80%; background-color:#283367; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); border-radius:0px;">
						<table style="border: none;" width="50%" height="200px">
							<tr>
								<td align="center" colspan="2"><b>Report of ${name }</b></td>
							</tr>
							<tr>
								<td align="center"><b><font color="white">Date</font></b></td>
								<td align="center"><font color="white"><script>document.write(new Date().getDate()+"/"+(new Date().getMonth()+1)+"/"+new Date().getFullYear()); </script></font></td>
							</tr>
							<tr>
								<td align="center"><b><font color="white">Subject</font></b></td>
								<td align="center"><font color="white">${subject } </font></td>
							</tr>
							<tr>
								<td align="center"><b><font color="white">Points</font></b></td>
								<td align="center"><font color="white">${count } points</font></td>
							</tr>
							<tr>
								<td align="center"><b><font color="white">Correct Answers</font></b></td>
								<td align="center"><font color="white" id="c">${count }</font></td>
							</tr>
							<tr>
								<td align="center"><b><font color="white">Wrong Answers</font></b></td>
								<td align="center"><font color="white">${10-(count+na) }</font></td>
							</tr>
							<tr>
								<td align="center"><b><font color="white">Not Answered</font></b></td>
								<td align="center"><font color="white">${na}</font></td>
							</tr>
							
						</table>
						<script>
						 
						function Hello()  
						{
							
							var c = ${count };
							
							if(c>=8)
							{
								document.getElementById("c1").innerHTML="Very Good";
							}
							else if((c<=8)&&(c>=4))
								document.getElementById("c1").innerHTML="Good";
							else
								document.getElementById("c1").innerHTML="Poor!!!";
							
							//function Solution();
						}
						
						
						</script>
						</div> <br>
						<p align="center"> 
						<u><h2 id="c1">j</h2>
						
						</u>
							
						</p>
		

					</center>                        
					</div>
				</div>
                
                <div class="col-lg-8">
                	<div class="section-title text-center" style="padding-bottom: 30px;">
						<h2>Solutions :</h2> <hr>
					</div>
               
              <p style="text-align:justify;" id="ques0" id="sol0">
             		<b>1.</b> ${quest.get(0)}<br>
             		<b>Ans.</b> ${solut.get(0)}
              </p>
              <p style="text-align:justify;" id="ques1" id="sol1">
             		<b>2.</b> ${quest.get(1)}<br>
             		<b>Ans.</b> ${solut.get(1)}
              </p>
              <p style="text-align:justify;" id="ques2" id="sol2">
             		<b>3.</b> ${quest.get(2)}<br>
             		<b>Ans.</b> ${solut.get(2)}
              </p>
              <p style="text-align:justify;" id="ques3" id="sol3">
             		<b>4.</b> ${quest.get(3)}<br>
             		<b>Ans.</b> ${solut.get(3)}
              </p>
              <p style="text-align:justify;" id="ques4" id="sol4">
             		<b>5.</b> ${quest.get(4)}<br>
             		<b>Ans.</b> ${solut.get(4)}
              </p>
              <p style="text-align:justify;" id="ques5" id="sol5">
             		<b>6.</b> ${quest.get(5)}<br>
             		<b>Ans.</b> ${solut.get(5)}
              </p>
              <p style="text-align:justify;" id="ques6" id="sol6">
             		<b>7.</b> ${quest.get(7)}<br>
             		<b>Ans.</b> ${solut.get(6)}
              </p>
              <p style="text-align:justify;" id="ques7" id="sol7">
             		<b>8.</b> ${quest.get(7)}<br>
             		<b>Ans.</b> ${solut.get(7)}
              </p>
              <p style="text-align:justify;" id="ques8" id="sol8">
             		<b>9.</b> ${quest.get(8)}<br>
             		<b>Ans.</b> ${solut.get(8)}
              </p>
              <p style="text-align:justify;" id="ques9" id="sol9">
             		<b>10.</b> ${quest.get(9)}<br>
             		<b>Ans.</b> ${solut.get(9)}
              </p>
                            
                </div>
			</div>
			
			
			
             
			<div class="row justify-content-center d-flex align-items-center">
				
               
			</div>
            	<!--  <center style="margin-top:30px;"> <!-- <a href="Ques_page.jsp" class="primary-btn">Start Quiz</a> --> 
            	
            		<!--  <form id="myform1" action="S2" method="post" >
                       		 <a href="javascript: submitform1()" class="primary-btn">Start Quiz</a>
                       	</form>
                       	
                       	<script type="text/javascript">
							function submitform1()
							{
									document.forms["myform1"].submit();
							}
						</script>
            		
            	</center>
		</div>-->
	</section>
	<!-- End Faculty Area -->


	

	<div style="height:30px;">
    </div>
    
	<!-- Start Footer Area -->
		<footer style="padding:65px;" class="footer-area section-gap">
		<div style="margin:0px;" class="container">
			
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