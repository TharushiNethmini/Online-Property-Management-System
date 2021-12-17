<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="allcovers.css">

<title>Login Page</title>
	<style type="text/css">
		body{	background-image: url("${pageContext.request.contextPath}/pic/login.jpeg"); 
				background-repeat: no-repeat; 
				background-attachment: fixed; 
				background-size: cover;
				}
		
		/*form headline */		
		.topic{color:white;text-align:center;}
		
		.loginform{	max-width: 500px; 
				max-length: 700px; 
				margin: auto; 
				padding: 10px; 
				margin-top:110px;
				background: rgb(0, 0, 0); /* Fallback color */
  				background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
 				color: #f1f1f1;
				}
		
	
		input[type=text] { width: 100%; padding: 12px 20px; margin: 8px 0; box-sizing: border-box;}

		input[type=password] { width: 100%; padding: 12px 20px; margin: 8px 0; box-sizing: border-box;}

		.button1 {	background:black;
	 				padding: 15px 32px;
	 				width: 500px;
	  				text-align: center;
	  				display: inline-block;
	  				font-size: 20px;
	  				margin: 4px 2px;
	  				cursor: pointer; 
	  				border-radius: 12px;
	  				color:white;
	  				}
  				
  		.button1:hover {background:#000066;)
  				
	</style>

</head>
<body>

	<h1> Online Property Management </h1>

	<ul>
	  <li>	
	  		<a href="#">
			<img src="${pageContext.request.contextPath}/pic/home.png"  width="20px" height="15px">
			</a>
	  </li>
	</ul>
	
		<form action="log" method="post" class="loginform">
			<h1 class="topic"> Room Keeper Manager Login </h1>
			
			User Name : <input type="text" name="uid" >    <br><br>
			Password :  <input type="password" name="pass"><br><br>
			
		
		<br><br>
		
			<input type="submit" name="submit" value="Login" class="button1">
		</form>
		
		
		
		<footer class="footer"> 
			<hr>
			
		</footer>

</body>
</html>
