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
	HttpSession currentsession = request.getSession(false);

	if(currentsession !=null){
		
		currentsession.invalidate();
		
	}
	
	response.sendRedirect("index.html");

	%>
	
</body>
</html>