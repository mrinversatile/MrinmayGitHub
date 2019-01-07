<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="java.io.*,java.util.*, javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>

<!-- Javascript files -->
<script type="text/javascript" src="assets/js/login.js"></script>
<script type="text/javascript" src="assets/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="assets/js/jquery_leanModal_min.js"></script>
<head>
<meta charset="UTF-8">
<meta name="author" content="Mrinmay Kundu">

<title>IAM M</title>

<!-- Web Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,500,700'
	rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css" />  
<!-- Bootstrap core CSS -->
<link href="assets/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<!-- Font Awesome CSS -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet"
	media="screen">
<!-- Animate css -->
<link href="assets/css/animate.css" rel="stylesheet">
<!-- Magnific css -->
<link href="assets/css/magnific-popup.css" rel="stylesheet">
<!-- Custom styles CSS -->
<link href="assets/css/style.css" rel="stylesheet" media="screen">
<!-- Responsive CSS -->
<link href="assets/css/responsive.css" rel="stylesheet">
<!--bouncingtext-->
<link rel="stylesheet" href="assets/css/reset.css">
<link rel="stylesheet" href="assets/css/bouncingword.css">
<!--login/signup-->
<link type="text/css" rel="stylesheet" href="assets/css/login.css" />


<link rel="shortcut icon" href="assets/images/ico/favicon.png">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/images/ico/apple-touch-icon-57-precomposed.png">



</head>

<body id="page-top" data-spy="scroll" data-target=".navbar">
	<!-- top-bar -->
	<div class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-7">
					<div class="cta-wrapper">
						<ul class="list-inline">
							<li><a href="#"><i class="fa fa-phone"></i>
									+1-(516)-3955958</a></li>
							<li><a
								href="mailto:mrinversatile@gmail.com?Subject=Hello%20again"><i
									class="fa fa-envelope"></i>mkundu@mrinmay.com</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- top-bar end-->
	<!-- Preloader -->
	<div id="tt-preloader">
		<div id="pre-status">
			<div class="preload-placeholder"></div>
		</div>
	</div>

	<!-- Home Section -->
	<section id="home" class="tt-fullHeight"
		data-stellar-vertical-offset="50" data-stellar-background-ratio="0.2">
		<!-- video code -->
		<div class="video-container">
			<video autoplay loop id="bgvid">
				<!-- 	<video  autoplay loop id="bgvid" poster="assets/images/home.jpg">	-->
				<source src="assets/videos/Paint_Splatter.mp4" type="video/mp4">
				<!-- <source src="assets/videos/Paint_Splatter.webm" type="video/webm"/>
    			<source src="assets/videos/Paint_Splatter.ogv" type="video/ogg"/>  -->
			</video>
		</div>
		<!-- video code end-->
		<div class="intro">
			<div class="intro-sub">I am M</div>
			<h1>
				Software <span>Developer</span>
			</h1>
			<p>
				I am a fully professional Software Developer excelling in numerous
				technologies <br> Involving the latest Enterprise Applications
				,web designing and technologies , <br> feel free to contact me.
			</p>

			<div class="social-icons">
				<ul class="list-inline">
					<li><a href="https://www.facebook.com/mrinmay.kundu.1"><i
							class="fa fa-facebook"></i></a></li>
					<li><a href="https://twitter.com/mrinversatile"><i
							class="fa fa-twitter"></i></a></li>
					<li><a
						href="https://www.linkedin.com/in/mrinmay-kundu"><i
							class="fa fa-linkedin"></i></a></li>
				</ul>
			</div>
			<!-- /.social-icons -->
		</div>

		<div class="mouse-icon">
			<div class="wheel"></div>
		</div>
	</section>
	<!-- End Home Section -->




	<!-- Navigation -->
	<header class="header">
		<nav class="navbar navbar-custom" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#custom-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#home"><img
						src="assets/images/logo.png" alt=""></a>
				</div>

				<div class="collapse navbar-collapse" id="custom-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#home">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#resume">Resume</a></li>
						<li><a href="#skills">Skills</a></li>
						<li><a href="#works">Projects</a></li>
						<li><a href="#blog">Blog</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>
				</div>
			</div>
			<!-- .container -->
		</nav>
	</header>
	<!-- End Navigation -->


	<!-- About Section -->
	<section id="about" class="about-section section-padding">
		<div class="container">
			<h2 class="section-title wow fadeInUp">About Me</h2>

			<div class="row">

				<div class="col-md-4 col-md-push-8">
					<div class="biography">
						<div class="myphoto">
							<img src="assets/images/myphoto.jpg" alt="">
						</div>
						<ul>
							<li><strong>Name:</strong> Mrinmay Kundu</li>
							<li><strong>Date of birth:</strong> 17 April 19XX</li>
							<li><strong>Address:</strong> Long Island ,New York, USA</li>
							<li><strong>Nationality:</strong> Indian</li>
							<li><strong>Phone:</strong> (516)-3955958</li>
							<li><strong>Email:</strong> mrinversatile@gmail.com</li>
						</ul>
					</div>
				</div>
				<!-- col-md-4 -->

				<div class="col-md-8 col-md-pull-4">
					<div class="short-info wow fadeInUp">
						<h3>Objective</h3>
						<p>An opportunity to work and upgrade oneself, as well as
							being involved in an organization that believes in gaining a
							competitive edge and giving back to the community. I'm presently
							expanding my solid experience in Enterprise Applications
							Development. I focus on using my interpersonal skills to build
							good user experience and create a strong interest in my
							employers. I hope to develop skills in motion design and my
							knowledge of the Web, and become an honest asset to the business.
							As an individual, I'm self-confident you’ll find me creative,
							funny and naturally passionate. I’m a forward thinker, which
							others may find inspiring when working as a team.</p>
					</div>

					<div class="short-info wow fadeInUp">
						<h3>What I Do ?</h3>
						<p>I am backend developer working in java with spring
							framework, Pl-Sql , B2B messaging and front end development using
							html5,CSS3 and javascript. I love exploring new technologies and
							possibilities to enhance present real world applications. May be
							i am not the best, certainly the coolest!!</p>

						<ul class="list-check">
							<li>Java /J2EE</li>
							<li>Restful Webservices</li>
							<li>Soap Webservices</li>
							<li>Pl-Sql</li>
							<li>HTML5 and CSS3</li>
							<li>XML</li>
							<li>Tibco Business Works</li>
							<li>NodeJs with Express</li>
						</ul>
					</div>

					<div class="my-signature">
						<img src="assets/images/sign.png" alt="">
					</div>

					<div class="download-button">
						<a class="btn btn-info btn-lg" href="#contact"><i
							class="fa fa-paper-plane"></i>Send me message</a> 
						<a	class="btn btn-primary btn-lg" 
							href="assets/resume/MrinmayResume&Cover.zip" ><i
							class="fa fa-download"></i>download my cv</a>
					</div>
				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- End About Section -->

	<!-- slide Section -->
	<section id="video" class="video-section">
		<div class="slider" id="main-slider">
			<!-- outermost container element -->
			<div class="slider-wrapper">
				<!-- innermost wrapper element -->
				<img src="assets/images/slide/img1.jpg" class="slide" /> <img
					src="assets/images/slide/img2.jpg" class="slide" /> <img
					src="assets/images/slide/img3.jpg" class="slide" /> <img
					src="assets/images/slide/img4.jpg" class="slide" /> <img
					src="assets/images/slide/img5.jpg" class="slide" /> <img
					src="assets/images/slide/img6.jpg" class="slide" /> <img
					src="assets/images/slide/img7.jpg" class="slide" /> <img
					src="assets/images/slide/img8.jpg" class="slide" /> <img
					src="assets/images/slide/img9.jpg" class="slide" /> <img
					src="assets/images/slide/img10.jpg" class="slide" /> <img
					src="assets/images/slide/img11.jpg" class="slide" /> <img
					src="assets/images/slide/img12.jpg" class="slide" /> <img
					src="assets/images/slide/img13.jpg" class="slide" /> <img
					src="assets/images/slide/img14.jpg" class="slide" /> <img
					src="assets/images/slide/img15.jpg" class="slide" /> <img
					src="assets/images/slide/img16.jpg" class="slide" /> <img
					src="assets/images/slide/img17.jpg" class="slide" /> <img
					src="assets/images/slide/img18.jpg" class="slide" /> <img
					src="assets/images/slide/img19.jpg" class="slide" /> <img
					src="assets/images/slide/img20.jpg" class="slide" /> <img
					src="assets/images/slide/img21.jpg" class="slide" /> <img
					src="assets/images/slide/img22.jpg" class="slide" /> <img
					src="assets/images/slide/img23.jpg" class="slide" /> <img
					src="assets/images/slide/img24.jpg" class="slide" /> <img
					src="assets/images/slide/img25.jpg" class="slide" />

			</div>
		</div>
	</section>
	<!-- Resume Section -->
	<section id="resume" class="resume-section section-padding">
		<div class="container">
			<h2 class="section-title wow fadeInUp" id="bounceTxt">Resume</h2>

			<div class="row">
				<div class="col-md-12">
					<div class="resume-title">
						<h3>Education</h3>
					</div>
					<div class="resume">
						<ul class="timeline">
							<li>
								<div class="posted-date">
									<span class="month">2005-2009</span>
								</div> <!-- /posted-date -->

								<div class="timeline-panel wow fadeInUp">
									<div class="timeline-content">
										<div class="timeline-heading">
											<h3>Bachelor in Engineering</h3>
											<span>BE(Hons) in Information Technology, University
												of Rajasthan , Jaipur, Rajasthan, India</span>
										</div>
										<!-- /timeline-heading -->

										<div class="timeline-body">
											<p>I have completed Information Technology Engineering
												degree from Rajasthan University, Jaipur, India which was a
												great experience and learning curve.</p>
										</div>
										<!-- /timeline-body -->
									</div>
									<!-- /timeline-content -->
								</div> <!-- /timeline-panel -->
							</li>

							<li class="timeline-inverted">
								<div class="posted-date">
									<span class="month">2002-2004</span>
								</div> <!-- /posted-date -->

								<div class="timeline-panel wow fadeInUp">
									<div class="timeline-content">
										<div class="timeline-heading">
											<h3>Higher Secondary</h3>
											<span>DAV Public School ,Kota ,Rajasthan,India</span>
										</div>
										<!-- /timeline-heading -->

										<div class="timeline-body">
											<p>I got the important lessons in academics as well as lessons of life. Made amazing friends and had superb experiences.</p>
										</div>
										<!-- /timeline-body -->
									</div>
									<!-- /timeline-content -->
								</div> <!-- /timeline-panel -->
							</li>

							<li>
								<div class="posted-date">
									<span class="month">2000-2002</span>
								</div> <!-- /posted-date -->

								<div class="timeline-panel wow fadeInUp">
									<div class="timeline-content">
										<div class="timeline-heading">
											<h3>Secondary school</h3>
											<span>Kendriya Vidhyalaya No1 ,Kota ,Rajasthan,India</span>
										</div>
										<!-- /timeline-heading -->

										<div class="timeline-body">
											<p>I was awesome at science, and feel the charm of
												existence in this spot, which was created for the bliss of
												souls like mine. I am so happy.</p>
										</div>
										<!-- /timeline-body -->
									</div>
									<!-- /timeline-content -->
								</div> <!-- /timeline-panel -->
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /row -->

			<div class="row">
				<div class="col-md-12">
					<div class="resume-title">
						<h3>Experience</h3>
					</div>
					<div class="resume">
						<ul class="timeline">
							<li class="timeline-inverted">
								<div class="posted-date">
									<span class="month">2010-Present</span>
								</div> <!-- /posted-date -->

								<div class="timeline-panel wow fadeInUp">
									<div class="timeline-content">
										<div class="timeline-heading">
											<h3>Technology Analyst</h3>
											<span>Infosys ltd <br> Mellville, Long Island,
												New York
											</span>
										</div>
										<!-- /timeline-heading -->

										<div class="timeline-body">
											<p>There are two ways to write error-free programs; only
												the third one works.</p>
										</div>
										<!-- /timeline-body -->
									</div>
									<!-- /timeline-content -->
								</div> <!-- /timeline-panel -->
							</li>

						</ul>
					</div>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- End Resume Section -->


	<!-- Skills Section -->
	<section id="skills" class="skills-section section-padding">
		<div class="container">
			<h2 class="section-title wow fadeInUp">Skills</h2>

			<div class="row">
				<div class="col-md-6">
					<div class="skill-progress">
						<div class="skill-title">
							<h3>Core Java</h3>
						</div>
						<div class="progress">
							<div class="progress-bar six-sec-ease-in-out" role="progressbar"
								aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
								<span>95%</span>
							</div>
						</div>
						<!-- /.progress -->
					</div>
					<!-- /.skill-progress -->

					<div class="skill-progress">
						<div class="skill-title">
							<h3>Spring Framework</h3>
						</div>
						<div class="progress">
							<div class="progress-bar six-sec-ease-in-out" role="progressbar"
								aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
								<span>70%</span>
							</div>
						</div>
						<!-- /.progress -->
					</div>
					<!-- /.skill-progress -->
					<div class="skill-progress">
						<div class="skill-title">
							<h3>Pl-Sql</h3>
						</div>
						<div class="progress">
							<div class="progress-bar six-sec-ease-in-out" role="progressbar"
								aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
								<span>75%</span>
							</div>
						</div>
						<!-- /.progress -->
					</div>
					<!-- /.skill-progress -->
				</div>
				<!-- /.col-md-6 -->

				<div class="col-md-6">
					<div class="skill-progress">
						<div class="skill-title">
							<h3>Webservices</h3>
						</div>
						<div class="progress">
							<div class="progress-bar six-sec-ease-in-out" role="progressbar"
								aria-valuenow="95" aria-valuemin="0" aria-valuemax="100">
								<span>75%</span>
							</div>
						</div>
						<!-- /.progress -->
					</div>
					<!-- /.skill-progress -->
					<div class="skill-progress">
						<div class="skill-title">
							<h3>HTML5/CSS3</h3>
						</div>
						<div class="progress">
							<div class="progress-bar six-sec-ease-in-out" role="progressbar"
								aria-valuenow="80" aria-valuemin="0" aria-valuemax="100">
								<span>70%</span>
							</div>
						</div>
						<!-- /.progress -->
					</div>
					<!-- /.skill-progress -->
					<div class="skill-progress">
						<div class="skill-title">
							<h3>NodeJs/Express</h3>
						</div>
						<div class="progress">
							<div class="progress-bar six-sec-ease-in-out" role="progressbar"
								aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">
								<span>45%</span>
							</div>
						</div>
						<!-- /.progress -->
					</div>
					<!-- /.skill-progress -->
				</div>
				<!-- /.col-md-6 -->
			</div>
			<!-- /.row -->

			<div class="skill-chart text-center">
				<h3>More skills</h3>
			</div>

			<div class="row more-skill text-center">
				<div class="col-xs-12 col-sm-4 col-md-2">
					<div class="chart" data-percent="58" data-color="e74c3c">
						<span class="percent"></span>
						<div class="chart-text">
							<span>leadership</span>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-2">
					<div class="chart" data-percent="83" data-color="2ecc71">
						<span class="percent"></span>
						<div class="chart-text">
							<span>Creativity</span>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-2">
					<div class="chart" data-percent="67" data-color="3498db">
						<span class="percent"></span>
						<div class="chart-text">
							<span>Management</span>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-2">
					<div class="chart" data-percent="65" data-color="3498db">
						<span class="percent"></span>
						<div class="chart-text">
							<span>Branding</span>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-2">
					<div class="chart" data-percent="68" data-color="3498db">
						<span class="percent"></span>
						<div class="chart-text">
							<span>Marketing</span>
						</div>
					</div>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-2">
					<div class="chart" data-percent="85" data-color="3498db">
						<span class="percent"></span>
						<div class="chart-text">
							<span>Motivation</span>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- /.container -->
	</section>
	<!-- End Skills Section -->


	<!-- Works Section -->
	<section id="works" class="works-section section-padding">
		<div class="container">
			<h2 class="section-title wow fadeInUp">Projects</h2>

			<ul class="list-inline" id="filter">
				<li><a class="active" data-group="all">All</a></li>
				<li><a data-group="design">Client#1</a></li>
				<li><a data-group="web">Client#2</a></li>
				<li><a data-group="interface">Client#3</a></li>
			</ul>

			<div class="row">
				<div id="grid">
					<div class="portfolio-item col-xs-12 col-sm-4 col-md-3"
						data-groups='["all", "identety", "design"]'>
						<div class="portfolio-bg">
							<div class="portfolio">
								<div class="tt-overlay"></div>
								<div class="links">
									<a class="image-link"
										href="assets/images/works/portfolio-1.jpg"><i
										class="fa fa-search-plus"></i></a> <a href="#"><i
										class="fa fa-link"></i></a>
								</div>
								<!-- /.links -->
								<img src="assets/images/works/portfolio-1.jpg" alt="image">
								<div class="portfolio-info">
									<h3>ARROW</h3>
								</div>
								<!-- /.portfolio-info -->
							</div>
							<!-- /.portfolio -->
						</div>
						<!-- /.portfolio-bg -->
					</div>
					<!-- /.portfolio-item -->


					<div class="portfolio-item col-xs-12 col-sm-4 col-md-3"
						data-groups='["all", "identety", "web"]'>
						<div class="portfolio-bg">
							<div class="portfolio">
								<div class="tt-overlay"></div>
								<div class="links">
									<a class="image-link"
										href="assets/images/works/portfolio-2.jpg"><i
										class="fa fa-search-plus"></i></a> <a href="#"><i
										class="fa fa-link"></i></a>
								</div>
								<!-- /.links -->
								<img src="assets/images/works/portfolio-2.jpg" alt="image">
								<div class="portfolio-info">
									<h3>CISCO</h3>
								</div>
								<!-- /.portfolio-info -->
							</div>
							<!-- /.portfolio -->
						</div>
						<!-- /.portfolio-bg -->
					</div>
					<!-- /.portfolio-item -->
					
					<div class="portfolio-item col-xs-12 col-sm-4 col-md-3"
						data-groups='["all", "identety", "web"]'>
						<div class="portfolio-bg">
							<div class="portfolio">
								<div class="tt-overlay"></div>
								<div class="links">
									<a class="image-link"
										href="assets/images/works/portfolio-3.jpg"><i
										class="fa fa-search-plus"></i></a> <a href="#"><i
										class="fa fa-link"></i></a>
								</div>
								<!-- /.links -->
								<img src="assets/images/works/portfolio-3.jpg" alt="image">
								<div class="portfolio-info">
									<h3>CISCO</h3>
								</div>
								<!-- /.portfolio-info -->
							</div>
							<!-- /.portfolio -->
						</div>
						<!-- /.portfolio-bg -->
					</div>
					<!-- /.portfolio-item -->
					
				<div class="portfolio-item col-xs-12 col-sm-4 col-md-3"
						data-groups='["all", "identety", "web"]'>
						<div class="portfolio-bg">
							<div class="portfolio">
								<div class="tt-overlay"></div>
								<div class="links">
									<a class="image-link"
										href="assets/images/works/portfolio-4.jpg"><i
										class="fa fa-search-plus"></i></a> <a href="#"><i
										class="fa fa-link"></i></a>
								</div>
								<!-- /.links -->
								<img src="assets/images/works/portfolio-4.jpg" alt="image">
								<div class="portfolio-info">
									<h3>CISCO</h3>
								</div>
								<!-- /.portfolio-info -->
							</div>
							<!-- /.portfolio -->
						</div>
						<!-- /.portfolio-bg -->
					</div>
					<!-- /.portfolio-item -->
					
					<div class="portfolio-item col-xs-12 col-sm-4 col-md-3"
						data-groups='["all", "identety", "interface"]'>
						<div class="portfolio-bg">
							<div class="portfolio">
								<div class="tt-overlay"></div>
								<div class="links">
									<a class="image-link"
										href="assets/images/works/portfolio-5.jpg"><i
										class="fa fa-search-plus"></i></a> <a href="#"><i
										class="fa fa-link"></i></a>
								</div>
								<!-- /.links -->
								<img src="assets/images/works/portfolio-5.jpg" alt="image">
								<div class="portfolio-info">
									<h3>SEAGATE</h3>
								</div>
								<!-- /.portfolio-info -->
							</div>
							<!-- /.portfolio -->
						</div>
						<!-- /.portfolio-bg -->
					</div>
					<!-- /.portfolio-item -->

				</div>
				<!-- /#grid -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- End Works Section -->


	<!-- Facts Section -->
	<section id="facts" class="facts-section text-center"
		data-stellar-vertical-offset="50" data-stellar-background-ratio="0.2">
		<div class="tt-overlay-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="count-wrap">
							<div class="col-sm-3 col-xs-6 ">
								<i class="fa fa-coffee"></i>
								<h3 class="timer">1249</h3>
								<p>Coffee Cups</p>
							</div>
							<div class="col-sm-3 col-xs-6">
								<i class="fa fa-flask"></i>
								<h3 class="timer">6</h3>
								<p>Years of Experience</p>
							</div>
							<div class="col-sm-3 col-xs-6">
								<i class="fa fa-thumbs-up"></i>
								<h3 class="timer">6</h3>
								<p>Projects Done</p>
							</div>
							<div class="col-sm-3 col-xs-6">
								<i class="fa fa-users"></i>
								<h3 class="timer">3</h3>
								<p>Happy Clients</p>
							</div>
						</div>
						<!-- /count-wrap -->
					</div>
					<!-- /.col-md-12 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
	</section>
	<!-- End Facts Section -->



	<!-- Blog Section -->
	<section id="blog" class="news-section section-padding">
		<div class="container">
			<div class="section-title">
				<h2>
					Latest <span class="light-text">Posts</span>
				</h2>
				<div class="title-border-container">
					<div class="title-border"></div>
				</div>
			</div>

<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://127.10.140.130:3306/blog_development" user="adminTu7eE3C"
		password="6l-a3zAc3w5m" />

	<sql:query var="listPosts" dataSource="${myDS}">
		Select id,name,title,content,DATE_FORMAT(created_at,'%d %b %Y') as created_at,updated_at,category from posts order by updated_at desc limit 3;
    </sql:query>
    
			<div class="row mt-70">
			
			
							
				<div class="col-md-6">
					<ul class="latest-blog-list">
					<c:forEach var="post" items="${listPosts.rows}">

							<sql:query var="noOfComments" dataSource="${myDS}">
        									Select count(*) as count from comments where post_id=${post.id};
    									</sql:query>
							<c:forEach var="comments" items="${noOfComments.rows}">
							<c:set var="title" value="${post.title}"/>
							<c:set var="created_at" value="${post.created_at}"/>
						<li>
							<div class="date">
								<c:out value="${fn:substring(created_at, 0, 2)}" /> <span><c:out value="${fn:substring(created_at, 2, 12)}"/></span>
							</div>
							<div class="blog-post">
								<h3>
									<c:out value="${fn:substring(title, 0,60)}" />
										
								</h3>
								<ul class="post-meta">
									<li>By: <c:out value="${post.name}" /></li>
									<li>Category: <c:out value="${post.category}" /></li>
									<li>Comment:<c:out value="${comments.count}" /></li>
								</ul>
							</div>
						</li>
						</c:forEach>
						</c:forEach>
						</ul>
						</div>
						
				<div class="col-md-6">
					<div class="subscribe-wrapper text-center">
						<h3>Join Me!!</h3><br>
						<form class="subscribe-form mailchimp" role="form" method="post">

							<a id="modal_trigger" href="#modal" class="btn">Click here to
								Login or register</a>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container -->
	</section>
	<!-- End Blog Section -->

	<!--pop up for login and signup-->
	<section id="login-signup">

		<div class="container">
			<div id="modal" class="popupContainer" style="display: none;">
				<header class="popupHeader">
					<span class="header_title">Login</span> <span class="modal_close"><i
						class="fa fa-times"></i></span>
				</header>

				<section class="popupBody">
					<!--  Login -->
					<div class="social_login">
						<div class="action_btns">
							<div class="one_half">
								<a href="#" id="login_form" class="btn">Login</a>
							</div>
							<div class="one_half last">
								<a href="#" id="register_form" class="btn">Sign up</a>
							</div>
						</div>
					</div>

					<!-- Username & Password Login form -->
					<div class="user_login">
						<form action="loginServlet" method="post" data-toggle="validator">
							<fieldset style="width: 300px">
								<legend> Login to App </legend>
								<table>
									<tr>
										<td>User ID</td>
										<td><input type="text" name="username"
											required="required" /></td>
									</tr>
									<tr>
										<td>Password</td>
										<td><input type="password" name="userpass"
											required="required" /></td>
									</tr>

									<tr>
										<td>
											<div style="clear: both;">&nbsp;</div>
											<div>
												<input id="abc" class="btn btn_red" type="submit"
													value=" Login " /> <input id="abc" class="btn back_btn"
													type="submit" value="<< Back " />
											</div>
										</td>
									</tr>

								</table>
							</fieldset>
						</form>
						<a href="passwordRetrieval.jsp" class="forgot_password">Forgot
							password?</a>
					</div>

					<!-- Register Form -->
					<div class="user_register">
						<form action="registerServlet" method="post">
							<fieldset style="width: 300px">
								<legend> Register </legend>
								<table>
									<tr>
										<td>User ID</td>
										<td><input type="text" name="usernameregister"
											required="required" /></td>
									</tr>
									<tr>
										<td>Password</td>
										<td><input type="password" name="userpassregister"
											required="required" /></td>
									</tr>
									<tr>
										<td>Email Id</td>
										<td><input type="email" name="useremailregister"
											required="required" /></td>
									</tr>
									<tr>
										<td>
											<div style="clear: both;">&nbsp;</div>
											<div>
												<input id="abc" class="btn btn_red" type="submit"
													value=" Register" /> <input id="abc" class="btn back_btn"
													type="submit" value="<< Back " />
											</div>
										</td>
									</tr>
								</table>
							</fieldset>
						</form>
					</div>
				</section>
			</div>
		</div>

	</section>


	<!-- Hire Section -->
	<section class="hire-section text-center"
		data-stellar-vertical-offset="50" data-stellar-background-ratio="0.2">
		<div class="hire-section-bg">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2>I would like to help your organization grow and be a part
							of it</h2>
						<a href="mailto:mrinversatile@gmail.com?Subject=Hello%20again"
							class="btn btn-default">Get Hired</a>
					</div>
					<!-- /.col-md-12 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.hire-section-bg -->
	</section>
	<!-- End Hire Section -->



	<!-- Contact Section -->
	<section id="contact" class="contact-section section-padding">
		<div class="container">
			<h2 class="section-title wow fadeInUp">Get in touch</h2>

			<div class="row">
				<div class="col-md-6">
					<div class="contact-form">
						<strong>Send me a message</strong>
						<form name="contact-form" id="contactForm"
							action="EmailSendingServlet" method="post"
							 onsubmit="alert('Message sent successfully');">
							<div class="form-group">
								<label for="name">Name</label> <input type="text" name="name"
									class="form-control" id="name" required>
							</div>

							<div class="form-group">
								<label for="email">Email</label> <input type="email"
									name="email" class="form-control" id="email" required>
							</div>

							<div class="form-group">
								<label for="subject">Subject</label> <input type="text"
									name="subject" class="form-control" id="subject">
							</div>

							<div class="form-group">
								<label for="message">Message</label>
								<textarea name="message" class="form-control" id="message"
									rows="5" required></textarea>
							</div>

							<button type="submit" name="submit" class="btn btn-primary">
								<p style="color: black;">Send Message</p>
							</button>
						</form>

					</div>
					<!-- /.contact-form -->
				</div>
				<!-- /.col-md-6 -->

				<div class="col-md-6">
					<div class="row center-xs">
						<div class="col-sm-6">
							<i class="fa fa-map-marker"></i>
							<address>
								<strong>Address/Street</strong> Long Island,<br> New York,
								USA<br>
							</address>
						</div>

						<div class="col-sm-6">
							<i class="fa fa-mobile"></i>
							<div class="contact-number">
								<strong>Phone Number</strong> (516) 3955958
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-12">
							<div class="location-map">
								<div id="mapCanvas" class="map-canvas"></div>
							</div>
						</div>
					</div>

				</div>
			</div>
			<!-- /.row -->
		</div>
		<!-- /.container -->
	</section>
	<!-- End Contact Section -->


	<!-- Footer Section -->
	<footer class="footer-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="copyright text-center">
						<p>Copyright &copy;Mrinmay.com 2016. All rights reserved.</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End Footer Section -->


	<!-- Scroll-up -->
	<div class="scroll-up">
		<a href="#home"><i class="fa fa-angle-up"></i></a>
	</div>



	<!-- Javascript files -->
	<script>
		function preventBack() {
			window.history.forward();
		}
		setTimeout("preventBack()", 0);
		window.onunload = function() {
			null
		};
	</script>
	<script type="text/javascript" src="assets/js/login.js"></script>
	<script src="assets/js/bouncingtext.js"></script>
	<script src="assets/js/slideshow.js"></script>
	<script src="assets/js/jquery.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/jquery.stellar.min.js"></script>
	<script src="assets/js/jquery.sticky.js"></script>
	<script src="assets/js/smoothscroll.js"></script>
	<script src="assets/js/wow.min.js"></script>
	<script src="assets/js/jquery.countTo.js"></script>
	<script src="assets/js/jquery.inview.min.js"></script>
	<script src="assets/js/jquery.easypiechart.js"></script>
	<script src="assets/js/jquery.shuffle.min.js"></script>
	<script src="assets/js/jquery.magnific-popup.min.js"></script>
	<script src="http://a.vimeocdn.com/js/froogaloop2.min.js"></script>
	<script src="assets/js/jquery.fitvids.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
	<script src="assets/js/scripts.js"></script>
	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-79825890-1', 'auto');
  ga('send', 'pageview');

</script>
</body>
</html>