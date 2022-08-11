<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>View Users</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>
<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link
	href="https://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>

<style>
a {
	color: white;
	text-decoration: none;
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

.username {
	text-align: right;
	margin-right: -500px;
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

.row {
	display: flex;
	flex-wrap: wrap;
	margin-top: 40px;
	margin-right: -15px;
	margin-left: -15px;
}

.card {
	background: #fff;
	box-shadow: 1px 1px 19.2px rgb(25, 31, 53);
	margin-bottom: 30px;
	transition: .5s;
	border: 0;
	border-radius: .1875rem;
	display: inline-block;
	position: relative;
	width: 100%;
	box-shadow: none;
}

.card .body {
	font-size: 14px;
	color: #424242;
	padding: 20px;
	box-shadow: 1px 1px 19.2px rgb(25, 31, 53);
	font-weight: 400;
}

.profile-page .profile-header {
	position: relative
}

.profile-page .profile-header .profile-image img {
	width: 150px;
	height: 290px;
	margin-top: -42px;
}

.profile-page .profile-header .social-icon a {
	margin: 0 5px
}

.profile-page .profile-sub-header {
	min-height: 60px;
	width: 100%
}

.profile-page .profile-sub-header ul.box-list {
	display: inline-table;
	table-layout: fixed;
	width: 100%;
	background: #eee
}

.profile-page .profile-sub-header ul.box-list li {
	border-right: 1px solid #e0e0e0;
	list-style: none
}

.profile-page .profile-sub-header ul.box-list li:last-child {
	border-right: none
}

.profile-page .profile-sub-header ul.box-list li a {
	display: block;
	padding: 15px 0;
	color: #424242
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
	</nav>

	<div class="container profile-page">
		<div class="row">
			<dd:forEach var="lear" items="${testv }">
				<div class="col-xl-6 col-lg-7 col-md-12">
					<div class="card profile-header">
						<div class="body">
							<div class="row">
								<div class="col-lg-4 col-md-4 col-12">
									<div class="profile-image float-md-right">
										<img
											src="https://i.pinimg.com/736x/45/43/90/454390931f624845b453ef735c1b7afc.jpg"
											alt="">
									</div>
								</div>
								<div class="col-lg-8 col-md-8 col-12">
									<h4 class="m-t-0 m-b-0">${lear.userName }</h4>
									<p>
										<span class="job_post">Name -<em>
												${lear.first_name } ${lear.last_name } </em></span>
									</p>
									<p>
										ID - <em>${lear.userid }</em>
									</p>
									<p>
										Email - <em>${lear.email }</em>
									</p>
									<p>
										Contact - <em>${lear.phone }</em>
									</p>
									<div>
										<a href="update/${lear.userid}"><button
												class="btn btn-primary btn-round"
												style="background-color: #053235;">Update</a>
										</button>
										<a href="delete/${lear.userid}"><button
												class="btn btn-primary btn-round btn-simple"
												style="background-color: #053235;">Delete</a>
										</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</dd:forEach>
</body>
</html>


