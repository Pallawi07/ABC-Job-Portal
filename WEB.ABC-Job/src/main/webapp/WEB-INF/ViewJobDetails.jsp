<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<title>Job Details(admin)</title>
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<style>
html, body {
	min-height: 100%;
}

body, div, form, input, select, textarea, label {
	padding: 0;
	margin: 0;
	outline: none;
	font-family: Roboto, Arial, sans-serif;
	font-size: 14px;
	color: #343333;
	line-height: 22px;
	font-weight: normal;
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

.username h3 {
	text-align: right;
	margin-right: -500px;
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

h1 {
	position: absolute;
	margin: 0;
	font-size: 50px;
	color: #fff;
	z-index: 2;
	line-height: 60px;
	top: 185px;
}

legend {
	padding: 10px;
	font-family: Roboto, Arial, sans-serif;
	font-size: 18px;
	width: 20%;
	margin-bottom: 2%;
	color: #fff;
	background-color: #015c63;
}

textarea {
	width: calc(100% - 12px);
	padding: 5px;
}

.testbox {
	display: flex;
	justify-content: center;
	align-items: center;
	height: inherit;
	padding: 20px;
}

form {
	width: 100%;
	padding: 20px;
	border-radius: 6px;
	background: #fff;
}

input, select, textarea {
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

input {
	width: calc(100% - 10px);
	padding: 5px;
}

input[type="date"] {
	padding: 4px 5px;
}

textarea {
	width: calc(100% - 12px);
	padding: 5px;
}

.item:hover p, .item:hover i, .question:hover p, .question label:hover,
	input:hover::placeholder {
	color: #015c63;
}

.item input:hover, .item select:hover, .item textarea:hover {
	border: 1px solid transparent;
	box-shadow: 0 0 3px 0 #015c63;
	color: #015c63;
}

.item {
	position: relative;
	margin: 10px 10px;
}

.item span {
	color: red;
}

.colums {
	display: flex;
	justify-content: space-between;
	flex-direction: row;
	flex-wrap: wrap;
}

.colums div {
	width: 48%;
}

select {
	padding: 7px 0;
	border-radius: 3px;
	border: 1px solid #ccc;
	background: transparent;
}

select, table {
	width: 100%;
}

option {
	background: #fff;
}

.btn-block {
	margin-top: 10px;
	text-align: center;
}

button {
	width: 50%;
	padding: 10px;
	border: none;
	border-radius: 5px;
	background: #a70101;
	font-size: 20px;
	color: #fff;
	margin-top: 10px;
	cursor: pointer;
}

@media ( min-width : 568px) {
	.name-item, .city-item {
		display: flex;
		flex-wrap: wrap;
		justify-content: space-between;
	}
	.name-item input, .name-item div {
		width: calc(50% - 20px);
	}
	.name-item div input {
		width: 97%;
	}
	.name-item div label {
		display: block;
		padding-bottom: 5px;
	}
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
	<div class="testbox">
		<sf:form action="submitJob" method="post" modelAttribute="job">

			<br />
			<fieldset>
				<legend>Job Details</legend>
				<div class="colums">
					<div class="item">
						<label for="author" class="form-label">Name</label>
						<sf:input path="author" name="author" id="name"
							class="form-control" />

					</div>
					<div class="item">
						<label for="email" class="form-label">Email</label>
						<sf:input path="email" type="email" name="email" id="email"
							class="form-control" />
					</div>
					<div class="item">
						<label for="company" class="form-label">Company</label>
						<sf:input path="company" type="text" name="company" id="company"
							class="form-control" />

					</div>
					<div class="item">
						<label for="salary" class="form-label">Salary</label>
						<sf:input path="salary" name="salary" id="salary"
							class="form-control" />
						<sf:errors path="salary" class="errors"></sf:errors>
					</div>
					<div class="item">
						<label for="time" class="form-label">Working Hours</label>
						<sf:input path="working_hours" type="number" name="working_hours"
							id="working_hours" class="form-control" />

					</div>

					<div class="item" id="old_job_title">
						<label for="job_title" class="form-label">Job Title</label>
						<sf:select path="job_Title" class="form-control">
							<sf:option class="text-muted" value="--Select Job Title--">--Select Job Title--</sf:option>
							<sf:option value="Software Engineer">Software Engineer</sf:option>
							<sf:option value="Data Anaylst">Data Analyst</sf:option>
							<sf:option value="Frontend Developer">Frontend Developer</sf:option>
							<sf:option value="Back end Developer">Back end Developer</sf:option>
							<sf:option value="Java Developer">Java Developer</sf:option>
							<sf:option value="Full Stack Web Developer">Full Stack Web Developer</sf:option>
							<option id="other" onclick="change()" value="Any other">Any
								Others</option>
						</sf:select>
					</div>
					<div class="item">
						<label for="desp">Job Details</label><br>
						<sf:textarea path="details" name="detials" id="desp" cols="87"
							rows="3" placeholder="Write Here"></sf:textarea>
					</div>
			</fieldset>


			<sf:form action="/deletejob" method="get">
				<div class="btn-block">
					<button type="submit">Delete</button>
				</div>
			</sf:form>
		</sf:form>
	</div>

</body>

</html>