<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Useraccount Page</title>

<link rel="stylesheet" href="allcovers.css">
<link rel="stylesheet" href="up.de.in.css">

	<style type="text/css"> 
		
		table, th, td {border: 1px solid black; border-spacing: 5px;}
		
		th, td {padding: 15px; text-align: left;}
		
		th {background-color:#b3b3cc; color: black;}
		
		.table{margin-left: auto; margin-right: auto;}
	
	</style>
	 
</head>
<body>
	
	<h1> Online Property Management </h1>
	<ul>
	  <li style="float:left"><a href="view.jsp">Delete</a></li>
	  <li style="float:left"><a href="insertnew.jsp">Insert</a></li>
	  <li style="float:left"><a href="view.jsp">Update</a></li>
	  <li>	
	  		<a href="login.jsp">
			<img src="${pageContext.request.contextPath}/pic/home.png"  width="20px" height="15px" >
			</a>
	  </li>
	</ul>
	
	<br><br>
	
	<div class="form">
	<p class="headline"> View Room Details </p>
	
	<table class="table">
		
	
	<tr>
		<th>Schedule No</th>
		<th>Room No </th>
		<th>Room Type </th>
		<th>Customer Name </th>
		<th>Room Occupancy </th>
		<th>Room Status </th>
		<th>Date </th>
		<th>Time </th>
		<th>Room Keeper ID </th>
	</tr>
	
	<c:forEach var="mng" items="${roomDetails}">
	<tr>
		<td>${mng.scheduleNo}</td>
		<td>${mng.roomNo}</td>
		<td>${mng.roomType}</td>
		<td>${mng.customerName}</td>
		<td>${mng.occupancy}</td>
		<td>${mng.roomStatus}</td>
		<td>${mng.date}</td>
		<td>${mng.time}</td>
		<td>${mng.keeperID}</td>
	</tr>
		
	</c:forEach>
	</table>
	</div>
	<br><br>
	<footer class="footer"> 
		<hr>
	</footer>

</body>
</html>
