<%--  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<!DOCTYPE html>
<%@page import="com.cricket.match.entity.GroupDetails"%>
<%@page import="com.cricket.match.entity.Tournaments"%>
<%@page import="com.cricket.match.entity.Country"%>
<%@page import="com.cricket.match.entity.Matches"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Cricket Match</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/global.css" rel="stylesheet">
<link href="css/index.css" rel="stylesheet">
<link href="css/element.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link href="https://fonts.googleapis.com/css?family=Alata&display=swap"
	rel="stylesheet">


<script src="js/jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/ekko-lightbox.js"></script>
<style type="text/css">
#blink {
	transition: 0.5s;
}
</style>
</head>

<body data-spy="scroll" data-target=".navbar" data-offset="50">

	<section id="header">
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header page-scroll">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand"
						href="${pageContext.request.contextPath }/home"><i
						class="fa fa-trophy fa-cog fa-spin"></i> <span class="col ">Chitrakoot
					</span> Cricket</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right">
						<li><a class="m_tag"
							href="${pageContext.request.contextPath }/home">Home</a></li>

						<li class=""><a class="m_tag" href="#upcoming">Matches</a></li>

						<li><a class="m_tag" href="#shop_h">Tournaments</a></li>

						<!-- <li><a class="m_tag" href="#players">Team</a></li>

						<li><a class="m_tag" href="#gallery">ICC RANKING</a></li>



						<li><a class="m_tag" href="#news">News</a></li>
 -->

						<li><a class="m_tag"
							href="${pageContext.request.contextPath }/login"
							style="background: maroon; color: white;">Login</a></li>


					</ul>


				</div>

				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	</section>
	<section id="center" class="center_home">
		<div class="center_home_m clearfix">
			<div class="container">
				<div class="row">
					<div class="center_home_1 clearfix">
						<div class="col-sm-12">
							<h2 class="col_1">TEAM</h2>
							<h1 class="col">INDIA</h1>
						</div>
					</div>
					<div class="center_home_2 clearfix">
						<div class="col-sm-6">
							<div class="center_home_2l clearfix">
								<h4>
									<a class="col_1" href="#">chitrakootinfo@gmail.com</a>
								</h4>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="center_home_2r text-right clearfix">
								<ul class="social-network social-circle">
									<li><a href="#" class="icoRss" title="Rss"><i
											class="fa fa-rss"></i></a></li>
									<li><a href="#" class="icoFacebook" title="Facebook"><i
											class="fa fa-facebook"></i></a></li>
									<li><a href="#" class="icoTwitter" title="Twitter"><i
											class="fa fa-twitter"></i></a></li>
									<li><a href="#" class="icoGoogle" title="Google +"><i
											class="fa fa-google-plus"></i></a></li>
									<li><a href="#" class="icoLinkedin" title="Linkedin"><i
											class="fa fa-linkedin"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="preview">
		<div class="preview_1 clearfix">
			<div class="col-sm-6 space_all">
				<div class="preview_1l clearfix">
					<div class="col-sm-5">
						<%
						//session.getAttribute();
						List<Matches> allmatches12 = (List<Matches>) request.getAttribute("Matches");

						for (Matches matches : allmatches12) {

							/* String name = (String) session.getAttribute("Hello"); */
						%>
						<div class="preview_1li clearfix">

							<h3 id="blink" style="font-size: 30px; color: fuchsia;">NEXT
								MATCH</h3>
							<p class="small col_1" style="font-size: 20px;"><%=matches.getMatchName()%></p>
							<p style="font-size: 20px; margin-left: 40px; color: white;"><%=matches.getMatchTime()%></p>
							<p style="font-size: 20px; margin-left: 44px; color: green;"><%=matches.getMatchLocation()%></p>
							<%
							}
							%>
						</div>
					</div>

					<div class="col-sm-7">
						<div class="preview_1li1 clearfix">
							<ul class="mgt">
								<li>Day <span id="days" style="font-size: 20px;">DAYS</span></li>
								<li>Hours <br> <span id="hours"
									style="font-size: 20px;">HOURS</span></li>
								<li>Min <br> <span id="minutes"
									style="font-size: 20px;">MINUTES</span></li>
								<li>Sec <br> <span id="seconds"
									style="font-size: 20px;">SECONDS</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-6 space_all">
				<div class="preview_1r clearfix">
					<img src="img/3.jpg" class="iw" alt="abc">
				</div>
			</div>
		</div>
	</section>

	<section id="upcoming">
		<div class="upcoming_m clearfix">
			<div class="container">
				<div class="row">
					<div class="upcoming_1 text-center clearfix">
						<div class="col-sm-12">
							<h3 class="mgt col">UPCOMING MATCHES</h3>

						</div>
					</div>
					<%
					//List<Matches> allmatches = (List<Matches>) session.getAttribute("Matches");
					List<Matches> allmatches = (List<Matches>) request.getAttribute("Matches");

					for (Matches matches : allmatches) {

						/* String name = (String) session.getAttribute("Hello"); */
					%>
					<div class="upcoming_2 clearfix">
						<!-- Slider ADDED   -->
						<div class="col-sm-6">
							<div class="upcoming_2i clearfix">
								<div class="upcoming_2i1 clearfix">
									<h4 class="mgt text-center"><%=matches.getGroupDetails().getGroupDetailsName()%></h4>
								</div>
								<div class="upcoming_2i2 text-center clearfix">
									<h4 class="col mgt"><%=matches.getMatchDate()%></h4>
									<h6 class="col_1" style="font-size: 30px;"><%=matches.getMatchDay()%></h6>
									<br> <span class="col_1"><i
										style="font-size: 30px;"><%=matches.getMatchTime()%></i></span>
									<h3 class="col_3">
										<%=matches.getMatchName()%>
									</h3>
									<br> <span class="col_1"><i
										style="font-size: 30px;"> <%=matches.getMatchLocation()%>
									</i></span>
								</div>
								<div class="upcoming_2i3 text-center clearfix">
									<h5 class="mgt">
										<a class="button_1 mgt" href="#">BUY TICKET</a>
									</h5>
								</div>
							</div>
						</div>


						<!-- Slider end  -->
					</div>

					<%
					}
					%>
				</div>
			</div>
		</div>
	</section>

	<section id="counting">
		<div class="container">
			<div class="row">
				<div class="counting_1 clearfix">
					<div class="col-sm-3">
						<%
						//List<Tournaments> tournaments = (List<Tournaments>) session.getAttribute("allTournamnet");
						List<Tournaments> tournaments = (List<Tournaments>) request.getAttribute("allTournamnet");
						%>
						<div class="counting_1 text-center clearfix">
							<span><i class="fa fa-gamepad"></i></span>
							<h1><%=tournaments.size()%></h1>
							<h4>Tournaments</h4>
						</div>
					</div>
					<%
					//List<GroupDetails> groupDetails = (List<GroupDetails>) session.getAttribute("allGroups");
					List<GroupDetails> groupDetails = (List<GroupDetails>) request.getAttribute("allGroups");
					%>
					<div class="col-sm-3">
						<div class="counting_1 text-center clearfix">
							<span><i class="fa fa-fire"></i></span>
							<h1><%=groupDetails.size()%></h1>
							<h4>Groups</h4>
						</div>
					</div>
					<%

					%>
					<div class="col-sm-3">
						<div class="counting_1 text-center clearfix">
							<span><i class="fa fa-shield"></i></span>
							<h1><%=allmatches.size()%></h1>
							<h4>Matches</h4>
						</div>
					</div>
					<%
					//List<Country> countries = (List<Country>) session.getAttribute("allCountry");
					List<Country> countries = (List<Country>) request.getAttribute("allCountry");
					%>
					<div class="col-sm-3">
						<div class="counting_1 text-center clearfix">
							<span><i class="fa fa-globe"></i></span>
							<h1><%=allmatches.size()%></h1>
							<h4>TEAMS</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="shop_h">
		<div class="shop_hm clearfix">
			<div class="container">
				<div class="row">
					<div class="upcoming_1 text-center clearfix">
						<div class="col-sm-12">
							<h3 class="mgt col">UPCOMING TOURNAMENTS</h3>

						</div>
					</div>
					<%
					List<Tournaments> allTournaments = (List<Tournaments>) request.getAttribute("allTournamnet");
					List<GroupDetails> groupDetails1 = (List<GroupDetails>) request.getAttribute("allGroups");
					List<Country> countries1 = (List<Country>) request.getAttribute("allCountry");

					for (GroupDetails details : groupDetails1) {

						for (Tournaments tournaments2 : allTournaments) {
					%>
					<div class="shop_h_1  clearfix">
						<div class="col-sm-3">
							<div class="shop_h_1i clearfix">
								<span class="col_1 span_1"><i class="fa fa-shield"></i></span>
								<h4 class="col"><%=details.getTournaments().getTournamentName()%></h4>
								<h6 class="col_2">
									<span class="fa fa-clock-o col_1 me_1" style="padding: 13px;">START
										DATE- </span>
									<%=tournaments2.getTournamentStarDate()%>

									<span class="fa fa-clock-o col_1 me_1">END DATE- </span>
									<%=tournaments2.getTournamentEndDate()%>
								</h6>
								<p class="col_3">
									MATCH FORMAT-
									<%=tournaments2.getTournamentFormat()%></p>
								<hr>
								<%-- <p class="col_3">  </p>
								<%=%> --%>
								<div class="col_3"
									style="border-color: lime; border-style: dotted; color: white; padding: 12px;">
									Group Name-
									<%=details.getGroupDetailsName()%></p>

									<p class="col_3">
										Team Names
										<%
									for (Country country : countries1) {
									%>
									
									<p
										style="border: solid; border-color: lime; border-style: dotted; color: white;"><%=country.getCountryName()%></p>

									<%
									}
									%>
								</div>
							</div>



						</div>
						<%
						}
						}
						%>
					</div>
				</div>
			</div>
	</section>

	<!-- <section id="players">
		<div class="container">
			<div class="row">
				<div class="upcoming_1 text-center clearfix">
					<div class="col-sm-12">
						<h3 class="mgt">TEAMS</h3>
						<p>
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
							eiusmod tempor incididunt ut labore et dolore magna <br>
							aliqua. Quis ipsum suspendisse ultrices gravida. Risus commodo
							viverra maecenas accumsan lacus vel facilisis.
						</p>
					</div>
				</div>
				<div class="players_1 clearfix">
					<div class="col-sm-3">
						<div class="players_1i text-center clearfix">
							<img src="img/10.jpg" class="iw" alt="abc">
							<h3 class="bold col_1">Praesent Libero</h3>
							<h5>GOALKEEPER</h5>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="players_1i text-center clearfix">
							<img src="img/11.jpg" class="iw" alt="abc">
							<h3 class="bold col_1">Ante Dapibus</h3>
							<h5>ATTACKER</h5>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="players_1i text-center clearfix">
							<img src="img/12.jpg" class="iw" alt="abc">
							<h3 class="bold col_1">Nulla Quis</h3>
							<h5>DEFENDER</h5>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="players_1i text-center clearfix">
							<img src="img/13.jpg" class="iw" alt="abc">
							<h3 class="bold col_1">Sed Augue</h3>
							<h5>MIDFIELDER</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="gallery">
		<div class="gallery_m clearfix">
			<div class="container">
				<div class="row">
					<div class="upcoming_1 text-center clearfix">
						<div class="col-sm-12">
							<h3 class="mgt col">ICC RANKING PLAYRES</h3>

						</div>
					</div>
					<div class="gallery clearfix">
						<article class="col-sm-4">
							<div class="panel panel-default">
								<div class="panel-body">
									<a href="img/21.jpg" title="Sport Portfolio" class="zoom"
										data-title="Sport" data-footer="Sport World" data-type="image"
										data-toggle="lightbox"> <img src="img/14.jpg"
										alt="Nature Portfolio"> <span class="overlay"><i
											class="glyphicon glyphicon-fullscreen"></i></span>
									</a>
								</div>

							</div>
						</article>

						<article class="col-sm-4">
							<div class="panel panel-default">
								<div class="panel-body">
									<a href="img/22.jpg" title="Sport Portfolio" class="zoom"
										data-title="Sport" data-footer="Sport World" data-type="image"
										data-toggle="lightbox"> <img src="img/15.jpg"
										alt="Food Portfolio"> <span class="overlay"><i
											class="glyphicon glyphicon-fullscreen"></i></span>
									</a>
								</div>

							</div>
						</article>

						<article class="col-sm-4">
							<div class="panel panel-default">
								<div class="panel-body">
									<a href="img/23.jpg" title="Sport Portfolio" class="zoom"
										data-title="Sport" data-footer="Sport World" data-type="image"
										data-toggle="lightbox"> <img src="img/16.jpg"
										alt="Sports Portfolio"> <span class="overlay"><i
											class="glyphicon glyphicon-fullscreen"></i></span>
									</a>
								</div>

							</div>
						</article>

					</div>
					<div class="gallery clearfix">
						<article class="col-sm-4">
							<div class="panel panel-default">
								<div class="panel-body">
									<a href="img/24.jpg" title="Sport Portfolio" class="zoom"
										data-title="Sport" data-footer="Sport World" data-type="image"
										data-toggle="lightbox"> <img src="img/17.jpg"
										alt="Nature Portfolio"> <span class="overlay"><i
											class="glyphicon glyphicon-fullscreen"></i></span>
									</a>
								</div>

							</div>
						</article>

						<article class="col-sm-4">
							<div class="panel panel-default">
								<div class="panel-body">
									<a href="img/25.jpg" title="Sport Portfolio" class="zoom"
										data-title="Sport" data-footer="Sport World" data-type="image"
										data-toggle="lightbox"> <img src="img/18.jpg"
										alt="Food Portfolio"> <span class="overlay"><i
											class="glyphicon glyphicon-fullscreen"></i></span>
									</a>
								</div>

							</div>
						</article>

						<article class="col-sm-4">
							<div class="panel panel-default">
								<div class="panel-body">
									<a href="img/20.jpg" title="Sport Portfolio" class="zoom"
										data-title="Sport" data-footer="Sport World" data-type="image"
										data-toggle="lightbox"> <img src="img/19.jpg"
										alt="Sports Portfolio"> <span class="overlay"><i
											class="glyphicon glyphicon-fullscreen"></i></span>
									</a>
								</div>

							</div>
						</article>

					</div>
				</div>
			</div>
		</div>
	</section>
 -->
	<!-- <section id="tuned">
		<div class="container">
			<div class="row">
				<div class="tuned_1 text-center clearfix">
					<div class="col-sm-12">
						<h3 class="mgt col">STAY TUNED</h3>
						<p class="col_3">Subscribe my newsletter and don’t miss any
							update on new products, promotions or even career .</p>
						<br> <input placeholder="ENTER YOUR EMAIL ADDRESS"
							class="form-control text-center" type="text">
						<h5>
							<a class="button_1 block" href="#">SUBSCRIBE TO NEWSLETTER</a>
						</h5>
						<p class="col_3">
							<input type="checkbox"> I read and accept the privacy
							policy
						</p>
					</div>
				</div>
			</div>
		</div>
	</section> -->

	<!-- <section id="news">
		<div class="container">
			<div class="row">
				<div class="upcoming_1 text-center clearfix">
					<div class="col-sm-12">
						<h3 class="mgt">LATEST NEWS</h3>

					</div>
				</div>
				<div class="news_1 clearfix">
					<div class="col-sm-4">
						<div class="news_1i clearfix">
							<a href="#"><img src="img/18.jpg" class="iw" alt="abc"></a>
							<h6 class="col_1">Champions League 20 April, 2020</h6>
							<h4>
								<a href="#">Ogbonna blasts virus response</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua.</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news_1i clearfix">
							<a href="#"><img src="img/16.jpg" class="iw" alt="abc"></a>
							<h6 class="col_1">Premier League 19 April, 2020</h6>
							<h4>
								<a href="#">Liverpool title will be special</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua.</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news_1i clearfix">
							<a href="#"><img src="img/14.jpg" class="iw" alt="abc"></a>
							<h6 class="col_1">Football 18 April, 2020</h6>
							<h4>
								<a href="#">Moyes self as precaution</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua.</p>
						</div>
					</div>
				</div>
				<div class="news_1 clearfix">
					<div class="col-sm-4">
						<div class="news_1i clearfix">
							<a href="#"><img src="img/17.jpg" class="iw" alt="abc"></a>
							<h6 class="col_1">Champions League 20 April, 2020</h6>
							<h4>
								<a href="#">Ogbonna blasts virus response</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua.</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news_1i clearfix">
							<a href="#"><img src="img/19.jpg" class="iw" alt="abc"></a>
							<h6 class="col_1">Premier League 19 April, 2020</h6>
							<h4>
								<a href="#">Liverpool title will be special</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua.</p>
						</div>
					</div>
					<div class="col-sm-4">
						<div class="news_1i clearfix">
							<a href="#"><img src="img/15.jpg" class="iw" alt="abc"></a>
							<h6 class="col_1">Football 18 April, 2020</h6>
							<h4>
								<a href="#">Moyes self as precaution</a>
							</h4>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
								sed do eiusmod tempor incididunt ut labore et dolore magna
								aliqua.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section> -->

	<section id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="col-sm-3">
						<div class="footer_1">
							<h4 class="col_1 mgt">CONTACT US</h4>
							<p class="col_3">SUBSCRIBE FOR LETEST UPDATE</p>
							<div id="custom-search-input">
								<div class="input-group col-sm-12">
									<input type="text" class="  search-query form-control"
										placeholder="Enter Your Email..."> <span
										class="input-group-btn">
										<button class="btn btn-danger" type="button">
											<span>Subscribe</span>
										</button>
									</span>
								</div>

							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="footer_2">
							<h4 class="col_1 mgt">
								<a href="https://chitrakoot.nic.in/" style="color: white;"
									target="">ABOUT CHITRAKOOT</a>
							</h4>
							<p class="col_3">Chitrakoot means the 'Hill of many wonders'.
								Chitrakoot falls in the northern Vindhya range of mountains
								spread over the states of Uttar Pradesh.</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="footer_4">
							<h4 class="col_1 mgt">STADIUM</h4>
							<ul>
								<li><a href="#">RANCHI</a></li>
								<li><a href="#">WANKHERE</a></li>
								<li><a href="#">INDORE</a></li>
								<li><a href="#">LUCKNOW</a></li>
								<li><a href="#">NEW DELHI</a></li>
								<li><a href="#">GUJRAT</a></li>
								<li><a href="#">MUMBAI</a></li>
								<li><a href="#">HYDERABAD</a></li>
								<li><a href="#">CHENNAI</a></li>
								<li><a href="#">VISHAKHAPATNAM</a></li>


							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
	</section>

	<section id="footer_bottom">
		<div class="container">
			<div class="row">
				<div class="footer_bottom_1 clearfix">
					<div class="col-sm-6">
						<div class="footer_bottom_1i1 clearfix">
							<p class="col_3">
								© 2024 Chitrakoot Cricket. All Rights Reserved | Vivek Raikawar
								| <a class="col_1" href="https://github.com/vivekgithub1997">GITHUB</a>
							</p>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="footer_bottom_1i2 text-center clearfix">
							<ul class="social-network social-circle mgt">
								<li><a href="#" class="icoRss" title="Rss"><i
										class="fa fa-rss"></i></a></li>
								<li><a href="#" class="icoFacebook" title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="icoTwitter" title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="icoGoogle" title="Google +"><i
										class="fa fa-google-plus"></i></a></li>
								<li><a href="#" class="icoLinkedin" title="Linkedin"><i
										class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="footer_bottom_1i3 text-right clearfix">
							<h6 class="col_2">
								<a class="col_3" href="#">PRIVACY POLICY</a> | <a class="col_3"
									href="#">TERMS & CONDITIONS</a>
							</h6>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<div id="toTop" class="btn btn-info"
		style="display: block; background: #d40722; color: #fff; border: none;">
		<span class="fa fa-chevron-up"></span>
	</div>

	<script>
		$(document)
				.ready(
						function() {
							$('body')
									.append(
											'<div id="toTop" class="btn btn-info"><span class="glyphicon glyphicon-chevron-up"></span> Back to Top</div>');
							$(window).scroll(function() {
								if ($(this).scrollTop() != 0) {
									$('#toTop').fadeIn();
								} else {
									$('#toTop').fadeOut();
								}
							});
							$('#toTop').click(function() {
								$("html, body").animate({
									scrollTop : 0
								}, 600);
								return false;
							});
						});
	</script>

	<script src="js/classie.js"></script>

	<script src="js/cbpAnimatedHeader.js"></script>

	<script type="text/javascript">
		$(document).ready(
				function() {
					$('i.glyphicon-thumbs-up, i.glyphicon-thumbs-down').click(
							function() {
								var $this = $(this), c = $this.data('count');
								if (!c)
									c = 0;
								c++;
								$this.data('count', c);
								$('#' + this.id + '-bs3').html(c);
							});
					$(document).delegate('*[data-toggle="lightbox"]', 'click',
							function(event) {
								event.preventDefault();
								$(this).ekkoLightbox();
							});
				});

		/* TIMER COUNT START  */

		// Set the date we're counting down to
		var countDownDate = new Date("Jul 5, 2024 15:37:25").getTime();

		// Update the count down every 1 second
		var x = setInterval(function() {

			// Get today's date and time
			var now = new Date().getTime();

			// Find the distance between now and the count down date
			var distance = countDownDate - now;

			// Time calculations for days, hours, minutes and seconds
			var days = Math.floor(distance / (1000 * 60 * 60 * 24));
			var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
					/ (1000 * 60 * 60));
			var minutes = Math.floor((distance % (1000 * 60 * 60))
					/ (1000 * 60));
			var seconds = Math.floor((distance % (1000 * 60)) / 1000);

			// Display the result in the element with id="demo"
			document.getElementById("days").innerHTML = days;
			document.getElementById("hours").innerHTML = hours;
			document.getElementById("minutes").innerHTML = minutes;
			document.getElementById("seconds").innerHTML = seconds;

			// If the count down is finished, write some text
			if (distance < 0) {
				clearInterval(x);
				document.getElementById("demo").innerHTML = "EXPIRED";
			}
		}, 1000);

		var blink = document.getElementById('blink');
		setInterval(function() {
			blink.style.opacity = (blink.style.opacity == 0 ? 1 : 0);
		}, 500);

		/* TIME COUNT END */
	</script>
</body>

</html>
