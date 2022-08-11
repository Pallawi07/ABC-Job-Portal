<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>View Jobs</title>
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<style>
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

main {
	display: flex;
	align-content: center;
}

table {
	max-width: 100%;
}

tr:nth-child(odd) {
	background-color: #eee;
}

th {
	background-color: rgb(2, 78, 97);
	color: #fff;
}

th, td {
	text-align: left;
	padding: 2px;
	font-weight: bold;
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
					class="fa fa-briefcase" aria-hidden="true"></i> Job</a></li>
			<li class="navbar-dropdown"><a href="contact"><i
					class="fa fa-phone" aria-hidden="true"></i> Contact</a></li>
			<li class="navbar-dropdown"><a href="search"><i
					class="fa fa-search" aria-hidden="true"></i> Search</a></li>
			<li class="navbar-dropdown"><a href="/logout"><i
					class="fa fa-arrow-circle-left" aria-hidden="true"></i> Logout</a></li>
		</ul>
	</nav>

	<main>
		<table class="table table-hover table-bordered" modelAttribute="job">

			<tr>
				<th scope="col">ID</th>
				<th scope="col">Job Author</th>
				<th scope="col">Job Title</th>
				<th scope="col">Comapny</th>
				<th scope="col">Salary</th>
				<th scope="col">Job Details</th>
			</tr>
			<thead>
			<tbody>
				<dd:forEach var="showJobs" items="${showJobs}">

					<tr>
						<td>${showJobs.job_Id}</td>
						<td>${showJobs.author}</td>
						<td>${showJobs.job_Title}</td>
						<td>${showJobs.company}</td>
						<td>${showJobs.salary}</td>
						<td><span style="color: blue; text-decoration: none;"><i
								class="fas fa-book-open fa-lg fa-fw"></i></span><a
							href="/jobDetailsUser/${showJobs.job_Id}"> View </a></td>
					</tr>

				</dd:forEach>
			<tbody>
		</table>
	</main>


</body>

</html>