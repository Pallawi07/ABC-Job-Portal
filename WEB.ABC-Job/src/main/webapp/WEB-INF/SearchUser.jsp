<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
* {
	box-sizing: border-box;
}

body {
	font-family: 'Source Sans Pro', sans-serif;
	color: #00494e;
	padding: 0;
	margin: 0;
	background-image: url(https://wallpapercave.com/wp/wp8939127.jpg);
	background-size: 120%;
	background-repeat: no-repeat;
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

h1 {
	display: block;
	margin: 0 auto 25px auto;
	text-align: center;
	font-size: 30PX;
	font-weight: 600;
	letter-spacing: -0.055em;
}

h2 {
	display: block;
	margin: 0 auto 60px auto;
	text-align: center;
	font-weight: 400;
	font-size: 1.25em;
	letter-spacing: -0.015em;
}

.container {
	position: relative;
	margin: calc(75px + 2vh + 2vw) auto 0 auto;
	padding: 0;
	width: 100%;
	max-width: 840px;
}

.search-box {
	position: relative;
	width: 100%;
	border-color: #f3cf04;
	max-width: 360px;
	height: 60px;
	border-radius: 120px;
	margin: 0 auto;
}

.search-box .search-container {
	float: right;
	border: rgb(61, 58, 58) solid px;
}

.search-box input[type=text] {
	padding: 14px;
	margin-top: 5px;
	font-size: 17px;
	border: black 7px;
	font-weight: normal;
	width: 280px;
	border-radius: 20px 0px 0px 20px;
}

.search-box .search-container button {
	float: right;
	padding: 12px 13px;
	margin-top: 5px;
	margin-right: 15px;
	height: 48px;
	width: 50px;
	background: #01b7c4;
	font-size: 17px;
	border: none;
	border-radius: 0px 20px 20px 0px;
	cursor: pointer;
}

.search-box .search-container button:hover {
	background: #018892;
}

@media screen and (max-width: 600px) {
	.search-box .search-container {
		float: none;
	}
	.search-box a, .search-box input[type=text], .search-box .search-container button
		{
		float: none;
		display: block;
		text-align: left;
		width: 100%;
		margin: 0;
		padding: 14px;
	}
	.search-box input[type=text] {
		border: 1px solid rgb(75, 49, 49);
	}
}
</style>
</head>

<body>
	<div id="abc">
		<div class="container1">
			<nav>
				<div class="logo">
					<a href="/"></a> <span style='font-size: 60px; color: #007d86;'>&#8501;</span>
					ABC JOBS
				</div>
			</nav>
		</div>
	</div>
	<main>
		<div class="container">
			<h1>YOUR SEARCH ENDS HERE</h1>
			<h2>Try below!</h2>
			<div class="search-box">
				<div class="search-container">

					<sf:form action="/sear" method="post" modelAttribute="searchd">

						<sf:input type="text" placeholder="Username.." name="search"
							path="userName" required="required" />
						<!-- <input class="button-9" type="submit" value="Search learner Details">
 -->
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>

					</sf:form>


					<!--  <input type="text" placeholder="Username.." name="search">
 -->
				</div>
			</div>
		</div>
	</main>


</body>
<script>
	$(document).ready(function() {
		$("#search").focus(function() {
			$(".search-box").addClass("border-searching");
			$(".search-icon").addClass("si-rotate");
		});
		$("#search").blur(function() {
			$(".search-box").removeClass("border-searching");
			$(".search-icon").removeClass("si-rotate");
		});
		$("#search").keyup(function() {
			if ($(this).val().length > 0) {
				$(".go-icon").addClass("go-in");
			} else {
				$(".go-icon").removeClass("go-in");
			}
		});
		$(".go-icon").click(function() {
			$(".search-form").submit();
		});
	});
</script>

</html>