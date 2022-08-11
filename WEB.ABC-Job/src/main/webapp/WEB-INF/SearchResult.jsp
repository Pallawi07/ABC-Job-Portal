<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

<head>
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>

<style>
* {
	box-sizing: border-box;
}

body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
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

main {
	display: flex;
	align-content: center;
	align-items: center;
}

table {
	width: 100%;
	border-spacing: 5px;
	 margin-top: 20px;
}

tr:nth-child(even) {
	background-color: #eee;
}

th {
	background-color: rgb(2, 78, 97);
	color: #fff;
}

th, td {
	text-align: left;
	padding: 0.5em 1em;
	font-weight: bold;
}

h1 {
	font-family: 'Source Sans Pro', sans-serif;
	color: #007d86;
	font-size: 38px;
	padding-top: 0px;
	line-height: 8px;
	padding-bottom: 21px;
	font-weight: bold;
	text-align: center;
}

.btns {
	margin-top: 120px;
}

.card-btn {
	display: block;
	width: 40%;
	padding: 0.5rem;
	font-size: 14px;
	text-align: center;
	margin-left: 32%;
	margin-top: 24px;
	background: #00494e;
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

	<h1>USER DETAILS</h1>
	<main>
		<table>
			<tr>
				<th>FIRSTNAME</th>
				<th>LASTNAME</th>
				<th>EMAIL-ID</th>
				<th>USERNAME</th>
				<th>PHONE NO.</th>
			</tr>
			<%-- <dd:forEach var="arves" items="${arves}"> --%>
			<tr>

				<td>${arves.first_name }</td>
				<td>${arves.last_name }</td>
				<td>${arves.email}</td>
				<td>${arves.userName }</td>
				<td>${arves.phone}</td>
			</tr>
			<%-- </dd:forEach> --%>
		</table>
		<br>

	</main>
	<div class=" btns">

		<a style="text-decoration: none; color: #e7f6f7;" href="search"><button
				class="card-btn">Another Search</a>
		</button>

		<a style="text-decoration: none; color: #e7f6f7;" href="admin"><button
				class="card-btn">Homepage</a>
		</button>


	</div>
</body>
</html>