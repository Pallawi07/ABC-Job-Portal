<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/a076d05399.js"></script>


<meta charset="ISO-8859-1">
<title>UserProfile</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Bree+Serif&family=EB+Garamond:ital,wght@0,500;1,800&display=swap')
	;

@import
	url("https://fonts.googleapis.com/css?family=Poppins&display=swap");

* {
	margin: 0;
	padding: 0;
	outline: none;
	box-sizing: border-box;
	font-family: 'Montserrat', sans-serif;
}

html {
	box-sizing: border-box;
	font-size: 62.5%;
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

.grid {
	display: grid;
	width: 114em;
	grid-gap: 6rem;
	grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
	align-items: start;
}

.grid-item {
	background-color: #fff;
	border-radius: 0.4rem;
	overflow: hidden;
	transition: 0.2s;
}

.card-header {
	font-size: 2px;
	color: #0d0d0d;
	margin-bottom: 1.5rem;
}

.card-text {
	font-size: 15px;
	letter-spacing: 0.1rem;
	line-height: 0.5;
	color: #3d3d3d;
	margin-bottom: 2rem;
	margin-right: 4px;
}

.card-btn {
	display: block;
	width: 110%;
	padding: 0.5rem;
	font-size: 16px;
	text-align: center;
	margin-top: 80px;
	background: #053235;
	border: #eefeff solid 0.5px;
	border-radius: 0.4rem;
	transition: 0.2s;
	cursor: pointer;
	letter-spacing: 0.1rem;
}

.card-btn:hover {
	background-color: #014649;
	color: #053235;
}

.card-btn:hover span, .card-btn:active span {
	margin-left: 1.5rem;
}

@media only screen and (max-width: 60em) {
	body {
		padding: 3rem;
	}
	.grid {
		grid-gap: 3rem;
	}
}

#container {
	box-shadow: 0 15px 30px 1px grey;
	background: rgba(255, 255, 255, 0.90);
	text-align: center;
	border-radius: 5px;
	overflow: hidden;
	margin: 5em auto;
	height: 350px;
	width: 700px;
}

.product-details {
	position: relative;
	text-align: left;
	overflow: hidden;
	padding: 28px;
	height: 100%;
	float: left;
	width: 45%;
}

#container .product-details h1 {
	font-family: 'Bebas Neue', cursive;
	display: inline-block;
	position: relative;
	font-size: 30px;
	color: #053235;
	margin-top: 2px;
	margin: 0;
}

.control {
	position: absolute;
	bottom: 20%;
	left: 22.8%;
}

.product-image {
	transition: all 0.3s ease-out;
	display: inline-block;
	position: relative;
	overflow: hidden;
	height: 100%;
	float: right;
	width: 45%;
	display: inline-block;
}

#container img {
	width: 110%;
	height: 106%;
}

.info {
	background: rgba(27, 26, 26, 0.9);
	font-family: 'Bree Serif', serif;
	transition: all 0.3s ease-out;
	transform: translateX(-100%);
	position: absolute;
	line-height: 1.8;
	text-align: left;
	font-size: 105%;
	cursor: no-drop;
	color: #FFF;
	height: 100%;
	width: 100%;
	left: 0;
	top: 0;
}

.product-image:hover img {
	transition: all 0.3s ease-out;
}

.product-image:hover img {
	transform: scale(1.2, 1.2);
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
			<li class="navbar-dropdown"><a href="/logout"><i
					class="fa fa-arrow-circle-left" aria-hidden="true"></i> Logout</a></li>
		</ul>
		<form method="get" action="/dataupdate">
			<div class="username">
				<h3>${usr.first_name }${usr.last_name }</h3>
			</div>
		</form>
	</nav>

	<div id="container">
		<div class="product-details">
			<form method="get" action="/dataupdate">
				<%-- <dd:forEach var="lear" items="${testv }"> --%>
				<div class="grid-item">
					<div class="card">
						<div class="card-content">
							<h1 class="card-header">${usr.userName }</h1>
							<p class="card-text"></p>



							<p class="card-text">
								<strong>UserID : </strong> &nbsp; <em> ${usr.userid } </em>
							</p>

							<p class="card-text">
								<strong>Name : </strong> &nbsp; <em> ${usr.first_name }
									${usr.last_name } </em>
							</p>

							<p class="card-text">
								<strong>Email : </strong> <em>${usr.email }</em>
							</p>

							<p class="card-text">
								<strong>Phone : </strong> &nbsp; <em>${usr.phone}</em>
							</p>

							<a style="text-decoration: none; color: #e7f6f7;"
								href="update/${usr.userid}"><button class="card-btn">
									Update Profile</a>
							</button>

						</div>
					</div>

				</div>
			</form>
			<%-- </dd:forEach> --%>
		</div>

		<div class="product-image">
			<img src="https://image.shutterstock.com/image-vector/man-character-face-avatar-glasses-260nw-562077406.jpg">
		</div>
	</div>
</body>

</html>

