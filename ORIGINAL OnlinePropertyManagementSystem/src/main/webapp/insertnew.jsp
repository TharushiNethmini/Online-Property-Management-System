<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Page</title>

<link rel="stylesheet" href="allcovers.css">
<link rel="stylesheet" href="up.de.in.css">

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
		<li style="float:left"><a href="useraccount.jsp">  Previous Page </a></li>
	</ul>
	
	<div class="container">
			<form action="insert" method="post" class="form">
				
				<p class="headline"> Insert Room Details </p>
			
			 	 <div class="row">
					    <div class="col-25">
					      <label for="rnum">Room Number</label>
					    </div>
					    <div class="col-25">
					      <input type="text" id="rnum" name="rnum" placeholder="Enter here..">
					    </div>
			 	 </div>
			  	
			  	<div class="row">
					    <div class="col-25">
					      <label for="rtype">Room Type</label>
					    </div>
					    <div class="col-25">
					      <select id="rtype" name="rtype">
					       		<option value="King">King</option>
					    		<option value="Queen">Queen</option>
					    		<option value="Double">Double</option>
					    		<option value="Single">Single</option>
					      </select>
					    </div>
			  	</div>
			  	
			  	<div class="row">
					    <div class="col-25">
					      <label for="cusname">Customer Name</label>
					    </div>
					    <div class="col-25">
					      <input type="text" id="cusname" name="cusname" placeholder="Enter here..">
					    </div>
			  	</div>
			  	
			  	<div class="row">
					    <div class="col-25">
					      <label for="occu">Room Occupancy</label>
					    </div>
					    <div class="col-25">
					      <select id="occu" name="occu">
					       		<option value="Checkout">Checkout</option>
			    				<option value="Stayover">Stayover</option>
			    				<option value="Vacant">Vacant</option>
					      </select>
					    </div>
			  	</div>
				
				<div class="row">
					    <div class="col-25">
					      <label for="rstat">Room Status</label>
					    </div>
					    <div class="col-25" align="left">
					      	<input type="radio" id="Clean" name="rstat" value="Clean">  <label for="rstat">Clean</label><br>
							<input type="radio" id="Dirty" name="rstat" value="Dirty"> <label for="rstat">Dirty</label><br>
							<input type="radio" id="Ready" name="rstat" value="Ready to use"> <label for="rstat">Ready to use</label><br>
					    </div>
			  	</div>
			  	
				 <div class="row">
					    <div class="col-25">
					      <label for="dt">Date</label>
					    </div>
					    <div class="col-25">
					      <input type="date" id="dt" name="dt" placeholder="Enter here..">
					    </div>
			  	</div>
			  	
			  	 <div class="row">
					    <div class="col-25">
					      <label for="tm">Time</label>
					    </div>
					    <div class="col-25">
					      <input type="time" id="tm" name="tm" placeholder="Enter here..">
					    </div>
			  	</div>
			  	
			  	 <div class="row">
					    <div class="col-25">
					      <label for="kid">Room Keeper ID</label>
					    </div>
					    <div class="col-25">
					      <input type="text" id="kid" name="kid" placeholder="Enter here..">
					    </div>
			  	</div>
				
				<div class="row">
			  		<input type="submit" name="submit" value="Create" class="button2">
			  </div>
				
				<br>
			  <!--  <div class="row">
			  		<button class="button3" onclick="myFunction1()"> Cancel</button>
			  </div>
			  
			  <script>
					function myFunction1() {
				  		location.replace("useraccount.jsp")
					}
			  </script>-->
				
			</form>
		</div>
		
		<br><br><br>
		<footer class="footer"> 
			<hr>
			
		</footer>
			
</body>
</html>
