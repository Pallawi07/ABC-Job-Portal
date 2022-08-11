<!doctype html>
<html lang="en">
<head>

<title>ContactUs</title>
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>
	
<style>
body, html {
	font-family: 'Source Sans Pro', sans-serif;
	padding: 0;
	margin: 0;
	font-family: 'Roboto', sans-serif;
	font-weight: 400;
	background: #ffffff;
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

*:focus {
	outline: 0;
}

h3 {
	text-align: center;
}

.container {
	padding: 12px 24px 24px 24px;
	margin: 48px 12px;
	background: #E3F2FD;
	border-radius: 4px;
	width: 70%;
	align-items: center;
	margin-left: 14%;
	box-shadow: 3px 1px 3px 2px rgb(72, 74, 80);
}

label {
	font-size: 0.85em;
	margin-left: 12px;
}

input[type=text], input[type=email], textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
	resize: vertical;
}

input[type=text]:focus, input[type=email]:focus, textarea:focus {
	border: 1px solid #015c63;
}

.center {
	text-align: center;
}

#contact-submit {
	background: #015c63;
	margin: 0 auto;
	outline: 0;
	color: white;
	border: 0;
	width: 200px;
	padding: 12px 24px;
	border-radius: 4px;
	transition: all ease-in-out 0.1s;
	align-content: center;
	display: inline-block;
	cursor: pointer;
	text-align: center;
}

#contact-submit:focus {
	background: #015c63;
	color: whitesmoke;
}

#contact-submit:hover {
	background: #018791;
}

</style>
</head>

<body>
	<div id="abc">
		<div class="container1">
			<nav>
				<div class="logo">
					<a href="Homepage.html"></a> <span
						style='font-size: 60px; color: #007d86;'>&#8501;</span> ABC JOBS
				</div>
			</nav>
		</div>
	</div>
	
	<div class="container">
		<h3>CONTACT FORM</h3>
		<form id="contact" action="" method="post" name="contact_form">
			<label for="first_name">First Name</label> <input name="first_name"
				type="text" required placeholder="First name" /> <br>
				
				 <label for="last_name">Last Name</label> <input name="last_name"
				type="text" required placeholder="Last name" /> <br>
				
				 <label for="email">Email</label> <input name="email" type="email" required
				placeholder="email@domain.com" /> <br> 
				
				<label for="message">Message</label><br>
			<textarea name="message" cols="25" rows="10"
				placeholder="Enter your message here ..." required> </textarea>
				
			<div class="center">
				<button name="center" type="submit" id="contact-submit">
				<a style="color: white; text-decoration: none;" href="User">Submit</a></button>
			</div>
		</form>
	</div>
</body>
</html>