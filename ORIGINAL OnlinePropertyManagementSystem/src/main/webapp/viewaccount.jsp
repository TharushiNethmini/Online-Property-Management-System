<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Account </title>

<link rel="stylesheet" href="allcovers.css">
<link rel="stylesheet" href="up.de.in.css">

<style type="text/css"> 
		table, th, td {border: 1px solid black; border-spacing: 5px;}
		th, td {padding: 15px; text-align: left;}
			
		.table{margin-left: auto; margin-right: auto;}
		.button1 {background: linear-gradient(to bottom, #9966ff 0%, #ff99cc 100%);
 				padding: 20px 40px;
 				width: 250px;
  				text-align: left;
  				display: inline-block;
  				font-size: 16px;
  				margin: 4px 2px;
  				cursor: pointer; 
  				border-radius: 12px;}
  		.button1:hover {background: #000066; color: white; }
  		
		
	</style>
</head>
<body>

	<h1> Online Property Management </h1>
	<ul>
	  <li>	<a href="view.jsp">
			<img src="${pageContext.request.contextPath}/pic/menu.png"  width="20px" height="15px">
			</a>
	  </li>
	  <li>	<a href="login.jsp">
			<img src="${pageContext.request.contextPath}/pic/home.png"  width="20px" height="15px">
			</a>
	  </li>
	  <li style="float:left"><a href="useraccount.jsp"> Previous Page </a></li>
	</ul>
	<br>
	
	<div class="form">
	<p class="headline"> View Room Details </p>
	<table class="table">
	
	<c:forEach var="mng" items="${roomDetails}"> 
	
	<!-- to link the update.jsp page to update the variables -->
	<c:set var="sno" value="${mng.scheduleNo}"></c:set>
	<c:set var="rno" value="${mng.roomNo}"></c:set>
	<c:set var="rtype" value="${mng.roomType}"></c:set>
	<c:set var="cname" value="${mng.customerName}"></c:set>
	<c:set var="roccupancy" value="${mng.occupancy}"></c:set>
	<c:set var="rstatus" value="${mng.roomStatus}"></c:set>
	<c:set var="dtt" value="${mng.date}"></c:set>
	<c:set var="tmn" value="${mng.time}"></c:set>
	<c:set var="rk" value="${mng.keeperID}"></c:set>
	
		<tr> 
			<td>Schedule No</td>
			<td>${mng.scheduleNo}</td>
		</tr>

		<tr> 
			<td>Room No</td>
			<td>${mng.roomNo}</td>
		</tr>	
		<tr> 
			<td>Room Type</td>
			<td>${mng.roomType}</td>
		</tr>	
		<tr> 
			<td>Customer Name </td>
			<td>${mng.customerName}</td>
		</tr>	
		<tr> 
			<td>Room Occupancy</td>
			<td>${mng.occupancy}</td>
		</tr>		
		<tr> 
			<td>Room Status</td>
			<td>${mng.roomStatus}</td>
		</tr>	
		<tr> 
			<td>Date</td>
			<td>${mng.date}</td>
		</tr>
		<tr> 
			<td>Time</td>
			<td>${mng.time}</td>
		</tr>
		<tr> 
			<td>Room Keeper ID </td>
			<td>${mng.keeperID}</td>
		</tr>
	</c:forEach>
	</table>		
	</div>
	<br>
	
	<!-- to link the button to update.jsp -->
	<c:url value="update.jsp" var="roomupdate">
		<c:param name="sno" value="${sno}"/>
		<c:param name="rno" value="${rno}"/>
		<c:param name="rtype" value="${rtype}"/>
		<c:param name="cname" value="${cname}"/>
		<c:param name="roccupancy" value="${roccupancy}"/>
		<c:param name="rstatus" value="${rstatus}"/>
		<c:param name="dtt" value="${dtt}"/>
		<c:param name="tmn" value="${tmn}"/>
		<c:param name="rk" value="${rk}"/>	
	</c:url>
	
	<!--  calling roomupdate -->
	<a href=" ${roomupdate}">
	<input type="button" name="update" value="Update Data" class="button1">
	</a> <br>
	
	<!-- to delete the row of data -->
	<c:url value="delete.jsp" var="roomdelete">
		<c:param name="sno" value="${sno}"/>
		<c:param name="rno" value="${rno}"/>
		<c:param name="rtype" value="${rtype}"/>
		<c:param name="cname" value="${cname}"/>
		<c:param name="roccupancy" value="${roccupancy}"/>
		<c:param name="rstatus" value="${rstatus}"/>
		<c:param name="dtt" value="${dtt}"/>
		<c:param name="tmn" value="${tmn}"/>
		<c:param name="rk" value="${rk}"/>	
	</c:url>
	
	<a href="${roomdelete}">
	<input type="button" name="delete" value="Delete Scheduled Data" class="button1">
	</a>
	
	
	
	<br><br><br><br><br><br>
	
	<footer class="footer"> 
		<hr>
		
	</footer>
	
			

</body>
</html>





















