<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>

<link rel="stylesheet" href="allcovers.css">
<link rel="stylesheet" href="up.de.in.css">
	
</head>
<body>


	<%
		String scheduleno = request.getParameter("sno");
		String roomno = request.getParameter("rno");
		String roomtype = request.getParameter("rtype");
		String customername = request.getParameter("cname");
		String roomoccupancy = request.getParameter("roccupancy");
		String roomstatus = request.getParameter("rstatus");
		String date = request.getParameter("dtt");
		String time = request.getParameter("tmn");
		String roomkeeperid = request.getParameter("rk");
		
	%>
	
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
		
	<div class="container">
			<form action="update" method="post" class="form">
				
				<p class="headline"> Update Room Details </p>
			
			 	 <div class="row">
					    <div class="col-25">
					      <label for="snum">Schedule No</label>
					    </div>
					    <div class="col-25">
					      <input type="text" name="snum" value="<%= scheduleno%>" readonly>
					    </div>
			 	 </div>
			  	
			  	<div class="row">
					    <div class="col-25">
					      <label for="rnm">Room No</label>
					    </div>
					    <div class="col-25">
					      <input type="text" name="rnm" value="<%= roomno%>" readonly> 
					    </div>
			  	</div>
			  	
			  	<div class="row">
					    <div class="col-25">
					      <label for="rty">Room Type </label>
					    </div>
					    <div class="col-25">
					     <input type="text" name="rty" value="<%= roomtype%>" readonly> 
					    </div>
			  	</div>
			  	
			  	<div class="row">
					    <div class="col-25">
					      <label for="cnme">Customer Name</label>
					    </div>
					    <div class="col-25">
					      <input type="text" name="cnme" value="<%= customername%>">
					    </div>
			  	</div>
			  	
			  	<div class="row">
					    <div class="col-25">
					      <label for="rocc">Room Occupancy</label>
					    </div>
					    <div class="col-25">
					      <input type="text" name="rocc" value="<%= roomoccupancy%>">
					    </div>
			  	</div> 
			  	
				<div class="row">
					    <div class="col-25">
					      <label for="rsts">Room Status</label>
					    </div>
					    <div class="col-25">
					    	<input type="text" name="rsts" value="<%= roomstatus%>">
					    </div>
			  	</div>  
				
				 <div class="row">
					    <div class="col-25">
					      <label for="date">Date</label>
					    </div>
					    <div class="col-25">
							<input type="date" name="date" value="<%= date%>">
					    </div>
			  	</div>
			  	
			  	 <div class="row">
					    <div class="col-25">
					      <label for="time">Time</label>
					    </div>
					    <div class="col-25">
					      <input type="time" name="time" value="<%= time%>">
					    </div>
			  	</div>
			  	
			  	 <div class="row">
					    <div class="col-25">
					      <label for="rkid">Room Keeper ID</label>
					    </div>
					    <div class="col-25">
					      <input type="text" name="rkid" value="<%= roomkeeperid%>">
					    </div>
			  	</div>
				
				<div class="row">
			  		<input type="submit" name="submit" value="Update" class="button2">
			  	</div>
			  
			  	<br>
				 <!--  <div class="row">
				  	<button class="button3" onclick="myFunction()"> Cancel </button>
				 </div>
				  
				 <script>
					function myFunction() {
					  	location.replace("view.jsp")
					}
				 </script>-->
				  
			</form>
		</div>
		
		<footer class="footer"> 
			<hr>
			
		</footer>
</body>
</html>