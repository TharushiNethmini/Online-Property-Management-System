<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View room details</title>

<link rel="stylesheet" href="allcovers.css">

	<style type="text/css">
		body{   background-image:url("${pageContext.request.contextPath}/pic/view.jpg");
				background-repeat: no-repeat; 
				background-attachment: fixed; 
				background-size: cover;
				}
		
		/*form headline */	
		.topic{color:white;text-align:center;}
		
		.viewform{	max-width: 500px; 
				max-length: 700px; 
				margin: auto; 
				padding: 10px;
				margin-top:110px;
				background: rgb(0, 0, 0); /* Fallback color */
  				background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
 				color: #f1f1f1;
				}
		
		input[type=text] { width: 100%; padding: 12px 20px; margin: 8px 0; box-sizing: border-box; background:#cccccc}
			
		.button1 {background: rgba(0, 0, 0, 0.5);;
 				padding: 15px 32px;
 				width: 500px;
  				text-align: center;
  				display: inline-block;
  				font-size: 20px;
  				margin: 4px 2px;
  				cursor: pointer; 
  				border-radius: 12px;
  				color:white}
  				
  		.button1:hover {background:#000066;}
  		
  		.footer {text-align: center;
				padding: 3px;
				background-color: black;
				color: white;
				width: 100%;
			}
			
			
		ul {
			  list-style-type: none;
			  margin: 0;
			  padding: 0;
			  overflow: hidden;
			  background-color:black;
			  position: -webkit-sticky; /* Safari */
			  position: sticky;
			  top: 0;
			}
		
		li { float: right; }
		
		li a {
		  display: block;
		  color: black;
		  text-align: center;
		  padding: 15px 60px;
		  text-decoration: none;
		}
		
		li a:hover { background-color:#f2f2f2; }
  		
  </style>
  	
</head>
<body>

	<h1> Online Property Management </h1>
	
	<ul>
	  <li>	<a href="login.jsp">
			<img src="${pageContext.request.contextPath}/pic/home.png"  width="20px" height="15px">
			</a>
	  </li>
	  <li style="float:left"><a href="useraccount.jsp">  Previous Page </a></li>
	</ul>
		<form action="view" method="post" class="viewform">
			
			<h1 class="topic">  View Room Details </h1>
			
			Room No :<input type="text" name="rno"><br><br>
			Customer Name : <input type="text" name="cusname"><br><br>
			
			<input type="submit" name="submit" value="View Room Information" class="button1">
		</form>
		
		
		<footer class="footer"> 
			<hr>
			
		</footer>
		
</body>
</html>