<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>

<head>
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>

<style>
* {
	margin: 0;
	padding: 0;
	outline: none;
	box-sizing: border-box;
	font-family: 'Montserrat', sans-serif;
}

body {
	font-family: Montserrat, sans-serif;
	background-size: cover;
	background-position: center;
	min-height: 450px;
	height: 100vh;
}

nav {
	margin: 0 auto;
	width: 100%;
	height: 95px;
	background: #37bc9b;
}

nav .logo {
	text-align: left;
	color: #ffffff;
	font-size: 21px;
	margin: 13px 41px 31px -44px;
	font-family: Aclonica;
	text-shadow: 5px 1px 4px rgb(4, 4, 5);
}

.nav-items {
	margin: 0 auto;
	width: 100%;
	height: auto;
	background: #37bc9b;
}

.nav-items ul {
	margin-left: 195px;
	list-style-type: none;
	display: inline-block;
	margin-top: -60px;
}

.nav-items ul li {
	position: relative;
	margin: 0 20px 0 0;
	float: left;
	display: inline-block;
}

.navbar {
	display: flex;
	align-items: center;
	width: 100vw;
	background-color: #fff;
	box-shadow: 0px 10px 10px 3px rgba(0, 0, 0, 0.3);
	position: relative;
	padding: 0px 70px;
	background-color: #015c63;
}

.navbar-links {
	list-style-type: none;
	display: flex;
}

.navbar-links li a {
	display: block;
	text-decoration: none;
	color: rgb(255, 255, 255);
	padding: 20px 20px;
	font-size: 15px;
	transition: 0.4s all;
}

.navbar-links li.navbar-dropdown {
	position: relative;
}

.navbar-links li.navbar-dropdown:hover .dropdown {
	visibility: visible;
	opacity: 1;
	transform: translateY(0px);
}

.navbar-links li.navbar-dropdown .dropdown {
	visibility: hidden;
	opacity: 0;
	position: absolute;
	padding: 20px 0;
	top: 100%;
	transform: translateY(50px);
	left: 0;
	width: 150px;
	background-color: #015c63;
	box-shadow: 0px 10px 10px 3px rgba(0, 0, 0, 0.3);
	border-bottom-left-radius: 3px;
	border-bottom-right-radius: 3px;
	z-index: 111;
	transition: 0.4s all;
}

.navbar-links li.navbar-dropdown .dropdown a {
	padding-top: 10px;
	padding-bottom: 10px;
	font-weight: 400;
}

.navbar-dropdown .dropdown a:hover {
	padding-left: 30px;
}

.navbar-links li a:hover {
	color: #83f7ff;
}

.username {
	text-align: right;
	margin-right: -800px;
	font-size: medium;
	color: #ffffff;
}

li>a:after {
	content: ' »';
}

/* Change this in order to change the Dropdown symbol */
li>a:only-child:after {
	content: '';
}

.nav-items ul li a {
	padding: 20px;
	display: inline-block;
	color: white;
	text-decoration: none;
}

.nav-items ul li a:hover {
	opacity: 0.5;
}

.nav-items ul li ul {
	display: none;
	position: absolute;
	left: 0;
	background: #37bc9b;
	float: left;
}

.nav-items ul li ul li {
	width: 100%;
	border-bottom: 1px solid rgba(255, 255, 255, .3);
}

.nav-items ul li:hover ul {
	display: block;
}

.grid-container {
	display: grid;
	grid-template-columns: 30% 64%;
	grid-column-gap: 50px;
	grid-row-gap: 10px;
	margin-top: 0px;
	padding: 10px;
	margin-left: 12px;
}

.grid-container>div {
	background-color: rgb(231, 252, 252);
	text-align: left;
	padding: 20px 0;
	margin-top: 6px;
	font-size: 30px;
	border-radius: 20px;
	height: 105%;
	box-shadow: 6px 7px 10px 3px rgb(5, 124, 118);
}

.user-container i {
	size: 100px;
	margin-top: 11px;
	margin-left: -170px;
	border: 4px #015c63 solid;
	border-radius: 75px;
	color: rgb(231, 252, 252);
}

.user-container {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: wrap;
	border-radius: 20px 20px 0px 0px;
	margin-top: -20px;
}

.user-container img {
	margin-left: 120px;
	margin-top: 1PX;
	width: 140%;
	height: 400px;
}

.card-btn {
	font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
	display: block;
	width: 82%;
	padding: 0.4rem;
	font-size: 22PX;
	text-align: center;
	background: transparent;
	color: rgb(3, 147, 167);
	transition: 0.2s;
	cursor: pointer;
	letter-spacing: 0.1rem;
	margin-top: -63px;
	margin-left: 25px;
}

.card-btn:hover {
	background-color: #053235;
	color: #ffffff;
}

.col1 h6 {
	margin-left: 20px;
	margin-top: 45px;
}

.col1 p {
	font-size: 16px;
	margin-left: 20px;
	margin-right: 30px;
	margin-top: 10px;
}

.user-container1 {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: wrap;
	height: 80px;
	width: 100%;
	border-radius: 20px 20px 0px 0px;
	background-color: #01494e;
	margin-top: -20px;
	margin-bottom: 20px;
}

.numbers {
	position: relative;
	display: block;
	margin: 0 auto;
	width: 100%;
	height: auto;
	margin-left: -25px;
	margin-top: 10px;
	top: -6%;
	color: #053235;
}

#stats {
	color: #000000;
	height: auto;
	position: relative;
	width: 65%;
	top: 76px;
	text-align: left;
	margin-bottom: 10px;
	display: block;
	margin: 0 auto;
	font-size: 17px;
}

.line-1 {
	height: 1.5px;
	background: black;
	width: 90%;
	margin-left: 15px;
	margin-bottom: 10px;
}

.col2 h6 {
	margin-left: 20px;
	margin-top: 0px;
}

.col2 p {
	font-size: 16px;
	margin-left: 20px;
	margin-right: 30px;
}

.col2 ul {
	font-size: 16px;
	margin-left: 40px;
	margin-right: 30px;
}
</style>
</head>

<body>

	<nav class="navbar">
		<div class="logo">
			<span style='font-size: 60px; color: #06bdca;'>&#8501;</span> ABC
			JOBS
		</div>
		<ul class="navbar-links">
			<li class="navbar-dropdown"><a href="User"><i
					class="fa fa-home" aria-hidden="true"></i> Home</a></li>
			<li class="navbar-dropdown"><a href="/viewjobsUser"><i
					class="fa fa-briefcase" aria-hidden="true"></i> Jobs</a></li>
			<li class="navbar-dropdown"><a href="contact"><i
					class="fa fa-phone" aria-hidden="true"></i> Contact</a></li>
			<li class="navbar-dropdown"><a href="search"><i
					class="fa fa-search" aria-hidden="true"></i> Search</a></li>
						<li class="navbar-dropdown"><a href="/logout"><i
					class="fa fa-arrow-circle-left" aria-hidden="true"></i> Logout</a></li>
		</ul>
		<form method="get" action="/dataupdate">
			<div class="username">
				<h3>${usr.first_name }${usr.last_name }</h3>
			</div>
		</form>
	</nav>


	<div class="grid-container">

		<div class="col1">
			<div style='width: 72%;'>
				<div class="user-container">
					<img
						src="https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80">
				</div>
			</div>
			<a style="text-decoration: none; color: #007d86;" href="profile"><button
					class="card-btn">UPDATE PROFILE</button></a>

			<h6>ABOUT</h6>

			<p>
				I have been working in this field since 4years, when website were
				build with table-layout, <br> creative professionals wore
				hawaiian shirts and everyone felt cool taking about web 2.0. I like
				to define myself as a multidisciplinary, results-oriented and
				passionate designer.
			</p>

			<div class="numbers">
				<table id="stats">
					<tbody>
						<tr>
							<td>ARTICLES :</td>
							<td style="color: blue;"><b>14</b></td>
						</tr>
						<tr>
							<td>FOLLOWERS :</td>
							<td style="color: blue;"><b>171</b></td>
						</tr>
						<tr>
							<td>FOLLOWING :</td>
							<td style="color: blue;"><b>100</b></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<div class="col2">
			<div class="user-container1"></div>

			<h6>WORK EXPERIENCE</h6>
			<div class="line-1"></div>
			<p>American Heart Association March 2015 - current Dallas, TX
				Developed and maintained 50+ applications and Web API's using
				Microsoft and other client languages Designed 50+ software artifacts
				based on requirements, solution architecture, application
				architecture, and development standards Implemented testing
				requirements for 100% of software in unit and integrated testing
				cycles Supported 100% of user acceptance testing and defect
				remediation Implemented the clarification and refinement of 60+
				business requirements.</p>
			<br>

			<h6>EDUCATION</h6>
			<div class="line-1"></div>
			<p>
				B.S.<br> Computer Science<br> University of Kansas<br>
				September 2008 - June 2012<br> Lawrence, KS
			</p>
			<br>

			<h6>SKILL</h6>
			<div class="line-1"></div>
			<p>
				Languages: Python, Javascript, HTML5/CSS<br> Frameworks:
				Django, NodeJS, ReactJS<br> Tools: jQuery, Unix, Git, Selenium<br>
				Databases: SQL (PostgreSQL, MySQL), AWS
			</p>
		</div>
	</div>
</body>
</html>