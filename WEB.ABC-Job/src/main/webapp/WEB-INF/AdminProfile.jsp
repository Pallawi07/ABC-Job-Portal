
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	font-family: 'Montserrat', sans-serif;
}

body {
	font-family: Montserrat, sans-serif;
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
	font-weight: 10px;
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

.username h3 {
	text-align: right;
	margin-right: -620px;
	font-size: 20px;
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
	grid-template-columns: 70% 25%;
	grid-column-gap: 80px;
	grid-row-gap: 0px;
	margin-top: 0px;
	margin-left: 20px;
}

.grid-container>div {
	background-color: #01494e;
	text-align: center;
	margin-top: 6px;
	font-size: 25px;
	border-radius: 0px;
	height: 100%;
	box-shadow: 6px 7px 10px 3px rgb(5, 124, 118);
}

.col1 img {
	width: 302%;
	height: 639px;
	margin-top: 4px;
}

.job-container {
	display: flex;
	justify-content: center;
	align-items: relative;
	flex-wrap: wrap;
	height: 120px;
	width: 302%;
	background-color: #01494e;
}

.job-container h4 {
	text-align: left;
	color: #ffffff;
	margin-top: 70px;
}

body .container {
	display: flex;
	justify-content: center;
	align-items: relative;
	flex-wrap: wrap;
	max-width: 1200px;
	margin: 15px 0;
}

body .container .card {
	position: relative;
	min-width: 338px;
	height: 145px;
	margin: -5px;
	transition: 0.5s;
}

body .container .card:nth-child(1) .box .content a {
	background: transparent;
	border: 2px solid #ffffff;
}

body .container .card:nth-child(2) .box .content a {
	background: transparent;
	border: 2px solid #ffffff;
}

body .container .card:nth-child(3) .box .content a {
	background: transparent;
	border: 2px solid #ffffff;
}

body .container .card .box {
	position: absolute;
	top: 20px;
	left: 20px;
	right: 20px;
	bottom: 20px;
	background: #01494e;
	border-radius: 0px;
	display: flex;
	justify-content: center;
	align-items: center;
	border-radius: 10px 10px 10px 10px;
	overflow: hidden;
	transition: 0.5s;
}

body .container .card .box .content {
	padding: 20px;
	text-align: center;
}

body .container .card .box .content a {
	position: relative;
	font-family: 'Source Sans Pro', sans-serif;
	font-size: 15px;
	display: inline-block;
	padding: 7px 0px;
	border-radius: 5px;
	text-decoration: none;
	width: 415px;
	height: 38px;
	color: #ffffff;
	margin-top: -30px;
	text-shadow: 0 10px 20px rgb(0 0 0/ 20%);
	transition: 0.5s;
}

body .container .card .box .content a:hover {
	background-color: #ffffff;
	text-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
	font-weight: bolder;
	color: #015c63;
}

.content i {
	color: #fff;
	font-size: 40px;
	padding: 30px 30px 30px 30px;
	margin-bottom: -14px;
	margin-left: 16px;
}

.col2 i {
	size: 100px;
	text-align: center;
}

.col2 {
	margin: 20px 2px;
}

.job-container1 {
	display: flex;
	justify-content: center;
	align-items: relative;
	flex-wrap: wrap;
	height: 120px;
	width: 100%;
	background-color: #01494e;
}

.job-container1 h4 {
	text-align: left;
	color: #ffffff;
	margin-top: 70px;
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
			<li class="navbar-dropdown"><a href="admin"><i
					class="fa fa-home" aria-hidden="true"></i> Home</a></li>
			<li class="navbar-dropdown"><a href="#"><i
					class="fa fa-briefcase" aria-hidden="true"></i> Job</a>
				<div class="dropdown">
					<a href="/createjobs"><b>Post job</b></a> <a href="/viewjobs"><b>View
							Jobs</b></a>
				</div></li>
			<li class="navbar-dropdown"><a href="#"><i
					class="fa fa-user" aria-hidden="true"></i> Manage</a>
				<div class="dropdown">
					<a href="register"><b>Add user</b></a> <a href="search"><b>Search
							user</b></a> <a href="show"><b>View users</b></a> <a href="/sendEmail"><b>Send
							email</b></a>
				</div></li>
			<li class="navbar-dropdown"><a href="/logout"><i
					class="fa fa-arrow-circle-left" aria-hidden="true"></i> Logout</a></li>
		</ul>

		<div class="username">
			<h3>ADMIN</h3>
		</div>

	</nav>

	<div class="grid-container">
		<div class="col1">
			<div style='width: 33%;'>
				<div class="job-container">
					<h4>JOB DETAILS</h4>
				</div>
				<img
					src="https://assets-global.website-files.com/61406f3ccb3988d21a3f0c2c/61406f3ccb398883713f14fb_1_Di1j37SrJrtEvaVoXFON5w.jpeg">
			</div>


		</div>
		<div class="col2">
			<div class="job-container1">
				<h4>DASHBOARD</h4>
			</div>
			<div class="container">

				<div class="card">
					<div class="box">
						<div class="content">
							<i class="fa fa-briefcase" aria-hidden="true"></i> <a
								href="/createjobs"> JOBS</a>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="box">
						<div class="content">
							<i class="fas fa-search" aria-hidden="true"></i> <a href="search">SEARCH
								USER</a>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="box">
						<div class="content">
							<i class="fa fa-users" aria-hidden="true"></i> <a href="show">VIEW
								USERS</a>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="box">
						<div class="content">
							<i class="fa fa-user-plus" aria-hidden="true"></i> <a
								href="register">ADD USERS</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style='clear: both;'></div>
	</div>

</body>
</html>
