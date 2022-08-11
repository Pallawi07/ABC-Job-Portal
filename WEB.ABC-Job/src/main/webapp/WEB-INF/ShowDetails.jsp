<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="dd" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
<style>
table, th, td {
  border: 1px solid white;
  border-collapse: collapse;
      width: 78%;
    height: 40.8%;
    margin-left: 11%;
    margin-top: 8%;
}
th, td {
  background-color: #c99fff;
}
h1{
 margin-left: 11%;
 margin-top: 8%;
 color: lightblue;
 }
</style>
</head>
<body style="background-image: url(https://images.pexels.com/photos/2847648/pexels-photo-2847648.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1); background-repeat: no-repeat; background-size: cover;">
<h1>User's Details</h1>
<table>
<tr>
	<th style="padding:10px">UserId</th>
	<th style="padding:10px">UserName</th>
	<th style="padding:10px">Email</th>
	<th style="padding:10px">First Name</th>
	<th style="padding:10px">Last Name</th>
	<th style="padding:10px">Country</th>
	<th style="padding:10px">Phone</th>
</tr> 
<dd:forEach var="lear" items="${testv }">
<tr scope ="col">
	<td style="text-align:center">${lear.userid }</td>
	<td style="text-align:center">${lear.userName }</td>
	<td style="padding:10px">${lear.email}</td>
	<td style="padding:10px">${lear.first_name }</td>
	<td style="padding:10px" >${lear.last_name }</td>
	<td style="padding:10px">${lear.country }</td>
	<td style="padding:10px">${lear.phone}</td>
	<td style="padding:10px"><a href = "update/${lear.userid}">UPDATE</a></td>
</tr>
</dd:forEach>
</body>
</html>