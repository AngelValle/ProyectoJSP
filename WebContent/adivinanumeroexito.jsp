<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>ADIVINA MI NUMERO</h1>
	<% 
	out.println("Su numero era: " + session.getAttribute("numeromedio")+"."+"<br>"+"Lo hemos conseguido en "+session.getAttribute("numerointentos")+" intentos.");
	out.println("Suerte en la proxima   ;) <br>");
	%>
	<jsp:include page="/ServletConexionesActivas"></jsp:include>
</body>
</html>