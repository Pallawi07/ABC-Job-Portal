<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<title>Login</title>
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>
<style>
@import
	url('https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400');

body, html {
	font-family: 'Source Sans Pro', sans-serif;
	background-image: url();
	background-size: 80%;
	padding: 0;
	margin: 0;
}

#abc {
	width: 100%;
	background-size: cover;
}

.container1 {
	padding: 30px;
	width: 100%;
	background-color: transparent;
}

nav {
	width: 100%;
	line-height: 4px;
}

nav .logo {
	flex: 2;
	text-align: left;
	margin-top: -6px;
	color: #ffffff;
	font-size: 21px;
	margin-top: 10px;
	margin-left: 6px;
	font-weight: 50px;
	font-family: Aclonica;
	text-shadow: 5px 1px 4px rgb(4, 4, 5);
}

img {
	width: 100%;
}

.login {
	height: 570px;
	width: 85%;
	margin-left: 10%;
	position: relative;
}

.login_box {
	width: 900px;
	height: 450px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background: #fff;
	border-radius: 10px;
	box-shadow: 1px 4px 22px -8px #0004;
	display: flex;
	overflow: hidden;
}

.login_box .left {
	width: 65%;
	height: 100%;
	padding: 25px 25px;
}

.login_box .right {
	width: 59%;
	height: 100%
}

.left .top_link a {
	color: #452A5A;
	font-weight: 400;
}

.left .top_link {
	height: 20px
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
	margin-bottom: 40px;
	font-size: 25px;
}

.left input {
	border: none;
	width: 80%;
	margin: 15px 0px;
	border-bottom: 1px solid black;
	padding: 7px 9px;
	width: 100%;
	overflow: hidden;
	background: transparent;
	font-weight: 600;
	font-size: 16px;
}

.left {
	background: linear-gradient(-45deg, #cbe7e4, #ffffff);
}

button {
	font-size: 15px;
    border: none;
    padding: 10px 120px;
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
		url(https://thumbs.gfycat.com/PassionateAgitatedAntarcticfurseal-size_restricted.gif);
	background-size: 190%, 80%;
	color: #fff;
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
	font-size: 50px;
	font-weight: 500;
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

</style>
</head>
<body>
	<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
		integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
		crossorigin="anonymous">

	<div id="abc">
		<div class="container1">
			<nav>
				<div class="logo">
					<span style='font-size: 60px; color: #007d86;'>&#8501;</span> ABC
					JOBS
				</div>
			</nav>
		</div>
	</div>

	<section class="login">
		<div class="login_box">
			<div class="left">
				<div class="top_link">
					<a href="/"><img
						src="https://drive.google.com/u/0/uc?id=16U__U5dJdaTfNGobB_OpwAJ73vM50rPV&export=download"
						alt="">Return home</a>
				</div>
				<div class="contact">
					<form method="POST" class="box" name='login' action="/login">
						<h3>Sign in to your account</h3>
						<input type="text" path="username" name="username" placeholder="Username" required />
						<sf:errors path="username" class="errors"></sf:errors>
						<input type="password" name="password" placeholder="Passsword"
							id="pwd" path="password" required="required" />
							
						<sf:errors path="password" class="errors"></sf:errors>
						<button class="submit">SIGN-IN</button>
						<h6>
							Not registered? <a href="register">Create an account</a>
						</h6>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</div>
			</div>
			<div class="right">
				<div class="right-text">
					<h2>ABCjobs</h2>
					<h5><b>GROW WITH US</b></h5>
				</div>
				<div class="right-inductor">
					<img
						src="https://lh3.googleusercontent.com/fife/ABSRlIoGiXn2r0SBm7bjFHea6iCUOyY0N2SrvhNUT-orJfyGNRSMO2vfqar3R-xs5Z4xbeqYwrEMq2FXKGXm-l_H6QAlwCBk9uceKBfG-FjacfftM0WM_aoUC_oxRSXXYspQE3tCMHGvMBlb2K1NAdU6qWv3VAQAPdCo8VwTgdnyWv08CmeZ8hX_6Ty8FzetXYKnfXb0CTEFQOVF4p3R58LksVUd73FU6564OsrJt918LPEwqIPAPQ4dMgiH73sgLXnDndUDCdLSDHMSirr4uUaqbiWQq-X1SNdkh-3jzjhW4keeNt1TgQHSrzW3maYO3ryueQzYoMEhts8MP8HH5gs2NkCar9cr_guunglU7Zqaede4cLFhsCZWBLVHY4cKHgk8SzfH_0Rn3St2AQen9MaiT38L5QXsaq6zFMuGiT8M2Md50eS0JdRTdlWLJApbgAUqI3zltUXce-MaCrDtp_UiI6x3IR4fEZiCo0XDyoAesFjXZg9cIuSsLTiKkSAGzzledJU3crgSHjAIycQN2PH2_dBIa3ibAJLphqq6zLh0qiQn_dHh83ru2y7MgxRU85ithgjdIk3PgplREbW9_PLv5j9juYc1WXFNW9ML80UlTaC9D2rP3i80zESJJY56faKsA5GVCIFiUtc3EewSM_C0bkJSMiobIWiXFz7pMcadgZlweUdjBcjvaepHBe8wou0ZtDM9TKom0hs_nx_AKy0dnXGNWI1qftTjAg=w1920-h979-ft"
						alt="">
				</div>
			</div>
		</div>
	</section>
</body>
</html>
