<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="indexstyle.css">
</head>
<body>


	<%
	//Retrieve the session object
	HttpSession session2 = request.getSession(false);

	//check if the session is not null and the username attribute is set
	if (session2 != null && session2.getAttribute("username") != null) {

		//get  the username from the session
		String username = (String) session.getAttribute("username");
	%>
	
	<div class="container">
		<h1>Welcome, <%= username %> !</h1>
		<p>We are delighted to have you on our platform. &#9733</p>
		<h3>Explore, learn, and connect with our vibrant community!
			&#128640</h3>
		<p>Feel free to stay as long as you like,and when you're ready,</p>
		you can <a href="logout.jsp">LOGOUT</a> securely
	</div>


	<%
	} else {
	response.sendRedirect("login.jsp");

	}
	%>
	
</body>
</html>