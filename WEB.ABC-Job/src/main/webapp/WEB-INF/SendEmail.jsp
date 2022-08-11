<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
<meta charset="utf-8">
<title>EmailSend</title>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap')
	;

* {
	margin: 0;
	padding: 0;
	outline: none;
	font-family: 'Montserrat', sans-serif;
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

img {
	width: 100%;
}

.login {
	height: 660px;
	width: 85%;
	margin-left: 10%;
	position: relative;
}

.login_box {
	width: 1000px;
	height: 500px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #fff;
	border-radius: 10px;
	box-shadow: 24px 24px 41px -37px #0004;
	display: flex;
	overflow: hidden;
}

.login_box .left {
	width: 65%;
	height: 100%;
	padding: 25px 25px;
}

.login_box .right {
	width: 50%;
	height: 100%
}

.left .contact {
	display: flex;
	align-items: center;
	justify-content: center;
	align-self: center;
	height: 100%;
	width: 73%;
	margin: auto;
}

.left h3 {
	text-align: center;
	margin-top: -115px;
	margin-bottom: 16px;
	font-size: 25px;
}

.left input, textarea {
	border: none;
	width: 80%;
	margin: 15px 0px;
	border-left: 1px solid black;
	padding: 7px 9px;
	width: 100%;
	overflow: hidden;
	background: transparent;
	font-weight: 300;
	font-size: 16px;
}

.left {
	background: linear-gradient(-45deg,#ffffff, #d8fbd7);
}

.form-group label {
	color: #043a35;
	font-weight: bold;
	font-size: medium;
}

button {
	font-size: 15px;
	border: none;
	padding: 12px 125px;
	border-radius: 8px;
	display: block;
	margin: auto;
	margin-top: 18px;
	background: #043a35;
	color: #fff;
	font-weight: bold;
}

.right {
	background-repeat: no-repeat;
	background-image:
		url(https://cdn.dribbble.com/users/784413/screenshots/3818347/mail.gif);
	background-size: 100%, 80%;
	color: #015c63;
}

.right .right-text {
	height: 100%;
	position: relative;
	transform: translate(0%, 45%);
}

.right-text h2 {
	display: block;
	width: 100%;
	text-align: center;
	font-size: 30px;
	font-weight: 500;
}

form {
	margin-top: -80px;
}

.right-text h5 {
	display: block;
	width: 100%;
	text-align: center;
	font-size: 19px;
	font-weight: 400;
}

.right .right-inductor {
	position: absolute;
	width: 70px;
	height: 7px;
	background: #fff0;
	left: 50%;
	bottom: 70px;
	transform: translate(-50%, 0%);
}

.top_link img {
	width: 28px;
	padding-right: 7px;
	margin-top: -3px;
}

.errors {
	color: red;
}
.container {
	width: 100%;
	height: 100vh;
	background: #e3ebfe;
	display: flex;
	justify-content: center;
	align-items: center;
}

button {
	width: 270px;
	height: 40px;
	border: none;
	outline: none;
	background: #004b38;
	color: #fff;
	font-size: 16px;
	border-radius: 40px;
	text-align: center;
	box-shadow: 0 6px 20px -5px rgba(0, 0, 0, 0.4);
	position: relative;
	overflow: hidden;
	cursor: pointer;
}

.check-box {
	width: 40px;
	height: 40px;
	border-radius: 40px;
	box-shadow: 0 0 12px -2px rgba(0, 0, 0, 0.5);
	position: absolute;
	top: 0;
	right: -40px;
	opacity: 0;
}

.check-box svg {
	width: 40px;
	margin: 20px;
}

svg path {
	stroke-width: 3;
	stroke: #fff;
	stroke-dasharray: 34;
	stroke-dashoffset: 34;
	stroke-linecap: round;
}

.active {
	background: #028a2b;
	transition: 0.5s;
}

.active .check-box {
	right: 0;
	opacity: 1;
	transition: 0.5s;
}

.active p {
	margin-right: 125px;
	transition: 5s;
}

.active svg path {
	stroke-dashoffset: 0;
	transition: 5s;
	transition-delay: 5s;
}

.line {
	width: 100%;
	height: 0;
	border: 2px solid #015c63;
	margin: 3px;
	margin-top: 30px;
	display: inline-block;
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
					<a href="/createjobs"><b>Post job</b></a> <a href="/viewjobs"><b>View Jobs</b></a>
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

	<section class="login">
		<div class="login_box">
			<div class="right">
				<div class="right-text" style="margin-top: 30px;">
					<h2><b>SEND</b></h2>
					<h2><b>MAILS</b></h2>
					<div class="line"></div>
					<div style="margin-top: 15px;" class="line"></div>
				</div>
				<div class="right-inductor"></div>
			</div>

			<div class="left">

				<div class="contact">
					<sf:form action="/sendEmails" method="post" modelAttribute="emails">

						<div class="form-group" style="display: none;">
							<label for="emailId" class="form-label">Mail Id</label>
							<sf:input path="emailId" name="email_Id" id="emailId"
								class="form-control" placeholder="Write Email Id" />
							<sf:errors path="emailId" class="errors"></sf:errors>
						</div>

						<br>
						<div class="form-group">
							<label for="reciever_emails" class="form-label">Write the
								Email</label>
							<sf:input path="reciever_emails" type="text" name="email"
								id="email" class="form-control" placeholder="Enter Email" />
							<sf:errors path="reciever_emails" class="errors"></sf:errors>
						</div>

						<br>
						<div class="form-group">
							<label for="subject" class="form-label">Subject of the
								Email</label>
							<sf:input path="subject" type="text" name="subject" id="subject"
								class="form-control" placeholder="Enter Subject" />
							<sf:errors path="subject" class="errors"></sf:errors>
						</div>
						<br>

						<div class="form-group">
							<label for="content" class="form-label">Write the Content
								of Mail</label><br>
							<sf:textarea path="content" name="content" id="content"
								class="form-control" rows="3"
								placeholder="Enter the content of the mail"></sf:textarea>
							<sf:errors path="content" class="errors"></sf:errors>
						</div>

						<div class="container1">
							<button id="btn" type="submit" onclick="alert()">
								<p id="btnText">Send</p>
								<div class="check-box">
									<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50">
                    <path fill="transparent"
											d="M14.1 27.2l7.1 7.2 16.7-16.8" />
											
							</button>
							</svg>
						</div>
					</sf:form>

				</div>
			</div>

		</div>
	</section>
</body>
<script type="text/javascript">
	const btn = document.querySelector("#btn");
	const btnText = document.querySelector("#btnText");

	btn.onclick = () => {
		btnText.innerHTML = "Done";
		btn.classList.add("active");
	};
</script>
</html>


<!-- <sf:form action="/sendEmails" method="post" modelAttribute="emails">

		<div class="container" style="margin-top: 25px;">
			<div class="col-md-12">
				<div class="container"
					style="background-color: #f8f9fa; padding: 20px;">

					<div class="form-group" style="display:none;">
						<label for="emailId" class="form-label">Mail Id</label>
						<sf:input path="emailId" name="email_Id" id="emailId"
							class="form-control" placeholder="Write Email Id" />
						<sf:errors path="emailId" class="errors"></sf:errors>
					</div>
						<br>
					<div class="form-group">
						<label for="reciever_emails" class="form-label">Write the
							Email</label>
							<p class="text-muted" id="email_inst">Use(<span id="comma">,</span>) to seprate mail ids without spaces</p>
						<input path="reciever_emails" type="text" name="email"
							id="email" class="form-control" placeholder="Enter Email" />
						<sf:errors path="reciever_emails" class="errors"></sf:errors>
					</div>
						<br>
					<div class="form-group">
						<label for="subject" class="form-label">Subject of the
							Email</label>
						<input path="subject" type="text" name="subject" id="subject"
							class="form-control" placeholder="Enter Subject" />
						<sf:errors path="subject" class="errors"></sf:errors>
					</div>

					<br>

					<div class="form-group">
						<label for="content" class="form-label">Write the Content
							of Mail</label><br>
						<textarea path="content" name="content" id="content"
							class="form-control" rows="5"
							placeholder="Enter the content of the mail"></textarea>
						<sf:errors path="content" class="errors"></sf:errors>
					</div>

					<br>

					<div class="form-group" id="btn">
						<input type="submit" value="Send Email" class="btn btn-primary"
							id="btn" onclick="alert()">
					</div>
				</div>
			</div>
		</div>
	</sf:form> 


</body>

 <script>
	function alert(){
		alert(Email Sent);
		alert("Email Sent")
	}

</script> 

</html>-->
<%-- <!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Email</title>
<link rel="shortcut icon" href="resources\Images\logo_u2.png"
	type="image/x-icon">
<link rel="stylesheet" href="resources\CSS\ViewJobs.css">

<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<style>
.form-label {
	font-family: 'Verdana', 'Georgia', 'Calibri';
	font-size: 18px;
	font-weight: 100px;
}

#btn {margin-left: auto;margin-right: auto;display: flex;}
#email_inst{font-size:12px;line-height:50%;}
#comma{font-size:19px;}
.errors {
	color: red;
}
</style>

</head>

<body>

	<div class="navbar navbar-expand-lg bg-light"
		style="background-color: #f3f3f3; margin-top: 5px;">
		<div class="container-fluid">
			<nav>
				<ul id="menu" class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-items"><a href="/"><img
							src="/resources/Images/logo_u2.png" alt="Logo" id="logo_image"></a></li>
					<span class="main_menu" id="logo_name"><b>ABC Jobs Pte
							Ltd</b></span>
					<div class="cont_1">
						<li class="main_menu"><a href="/">Discover</a></li>
						<li class="main_menu"><a href="/jobs">Jobs</a></li>
						<li class="main_menu"><a href="#">People</a></li>
						<li class="main_menu"><a href="#">Contact Us</a></li>
						<li class="main_menu"><a href="#">About Us</a></li>
					</div>
				</ul>
			</nav>
		</div>
	</div>

	<sf:form action="/sendEmails" method="post" modelAttribute="emails">

		<div class="container" style="margin-top: 25px;">
			<div class="col-md-12">
				<div class="container"
					style="background-color: #f8f9fa; padding: 20px;">

					<div class="form-group" style="display:none;">
						<label for="emailId" class="form-label">Mail Id</label>
						<sf:input path="emailId" name="email_Id" id="emailId"
							class="form-control" placeholder="Write Email Id" />
						<sf:errors path="emailId" class="errors"></sf:errors>
					</div>
						<br>
					<div class="form-group">
						<label for="reciever_emails" class="form-label">Write the
							Email</label>
							<p class="text-muted" id="email_inst">Use(<span id="comma">,</span>) to seprate mail ids without spaces</p>
						<sf:input path="reciever_emails" type="text" name="email"
							id="email" class="form-control" placeholder="Enter Email" />
						<sf:errors path="reciever_emails" class="errors"></sf:errors>
					</div>
						<br>
					<div class="form-group">
						<label for="subject" class="form-label">Subject of the
							Email</label>
						<sf:input path="subject" type="text" name="subject" id="subject"
							class="form-control" placeholder="Enter Subject" />
						<sf:errors path="subject" class="errors"></sf:errors>
					</div>

					<br>

					<div class="form-group">
						<label for="content" class="form-label">Write the Content
							of Mail</label><br>
						<sf:textarea path="content" name="content" id="content"
							class="form-control" rows="5"
							placeholder="Enter the content of the mail"></sf:textarea>
						<sf:errors path="content" class="errors"></sf:errors>
					</div>

					<br>

					<div class="form-group" id="btn">
						<input type="submit" value="Send Email" class="btn btn-primary"
							id="btn" onclick="alert()">
					</div>
				</div>
			</div>
		</div>
	</sf:form>


</body>

<!-- <script>
	function alert(){
		alert(Email Sent);
		alert("Email Sent")
	}

</script> -->

</html> --%>