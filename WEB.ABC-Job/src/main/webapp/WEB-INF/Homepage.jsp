 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="ISO-8859-1">
  <!-- site metas -->
  <title>ABChomepage</title>

  <!-- style css -->
  <link rel="stylesheet" href="css/style.css">
  <link href='https://fonts.googleapis.com/css?family=Akaya Kanadaka' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>

  <style>
    * body {

      background-image: url(https://i.pinimg.com/736x/30/8f/2f/308f2fd627c36e007527bc50337f6c7b.jpg);
      background-size: cover;
      background-repeat: no-repeat;

    }

    #abc {
      width: 100%;
      background-size: cover;
    }

    .container {
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
      margin-top: 5px;
      color: #ffffff;
      size: 20px;
      font-weight: 50px;
      font-family: Aclonica;

    }

    .banner_main {
      padding: 25px 15px 98px 300px;
      display: flex;
      align-items: center;
      background-repeat: no-repeat;
      background-size: 100% 100%;
      background-position: center;
    }

    .text-bg {
      text-align: center;
      max-width: 1000px;
      width: 100%;
    }

    .text-bg h1 {
      font-family: 'Aclonica';
      color: #ccf8f7;
      font-size: 55px;
      padding-top: 50px;
      line-height: 80px;
      padding-bottom: 5px;
      font-weight: bold;
      text-align: center;

    }

    .text-bg span {
      color: #fff;
      font-size: 30px;
      padding-bottom: 10px;
      display: block;
      font-weight: lighter;
    }


    .text-bg a {
      font-size: 20px;
      text-decoration: none;
      background-color: transparent;
      border: #bbf8f6 solid 2px;
      border-radius: 10px;
      color: #bbf8f6;
      margin-top: 25px;
      margin-right: 10px;
      font-weight: 500;
      padding: 15px 11px;
      width: 100%;
      max-width: 178px;
      text-align: center;
      display: inline-block;
      font-family:Verdana, Geneva, Tahoma, sans-serif;
    }

    .text-bg a:hover {
      border: #a3edf7 solid 2px;
      color: rgb(135, 241, 248);

    }

    /* Float four columns side by side */
    .column {
      float: left;
      width: 15%;
      padding: 41px 26px;
      padding-left: 50px;
      padding-right: 50px;
    }

    /* Remove extra left and right margins, due to padding */
    .row {
      margin: -40px 57px;
    }

    /* Clear floats after the columns */
    .row:after {
      content: "";
      display: table;
      clear: both;
    }

    /* Responsive columns */
    @media screen and (max-width: 600px) {
      .column {
        width: 100%;
        display: block;
        margin-bottom: 20px;
      }

    }

    .card {
      border: 0cm;
      padding: 59px;
      height: 45px;
      text-align: center;
      background-color: transparent;
      border-radius: 40px;

    }

    .column h3 {
      font-weight: 100;
      color: #ffffff;
      font-size: 10px;

    }

  </style>
</head>

<body>
  <div id="abc">
    <div class="container">
      <nav>
        <div class="logo">
          <a href="Homepage.html"></a>
          <span style='font-size:50px; color: rgb(255, 255, 255);'>&#8501;</span> ABC JOBS
        </div>
      </nav>
    </div>
  </div>
 
  <section class="banner_main">
    <div class="row d_flex">
      <div class="text-bg">
        <h1>ABC JOBS <i>PTE LTD</i></h1>
        <span>Success is often achieved by those who<br>don't know that failure is inevitable</span>
        <a href="Login">LOGIN</a> <a href="/register">SIGN-IN</a>
      </div>
    </div>
  </section>
  
</body>
</html>