<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Adivina el numero</title>
	</head>
	
	<body>
		<%
		if(null==request.getParameter("mayoromenor"))
		{
			session.setAttribute("numeromaximo", "100");
			session.setAttribute("numerominimo", "1");
			session.setAttribute("numeromedio", "50");
			session.setAttribute("numerointentos", "0");
		}
		else
		{
			if(request.getParameter("mayoromenor").equals("mayor"))
			{
				session.setAttribute("numerominimo", session.getAttribute("numeromedio").toString());
				
				int numeromaximo = Integer.parseInt(session.getAttribute("numeromaximo").toString());
				int numerominimo = Integer.parseInt(session.getAttribute("numerominimo").toString());
				Integer numeromedio = (numeromaximo+numerominimo)/2;
				session.setAttribute("numeromedio", numeromedio.toString());
				
				// INTENTOS (sumamos 1)
				Integer intentos = Integer.parseInt(session.getAttribute("numerointentos").toString());
				intentos++;
				session.setAttribute("numerointentos", intentos.toString());
			}
			else if(request.getParameter("mayoromenor").equals("menor"))
			{
				session.setAttribute("numeromaximo", session.getAttribute("numeromedio").toString());
				
				int numeromaximo = Integer.parseInt(session.getAttribute("numeromaximo").toString());
				int numerominimo = Integer.parseInt(session.getAttribute("numerominimo").toString());
				Integer numeromedio = (numeromaximo+numerominimo)/2;
				session.setAttribute("numeromedio", numeromedio.toString());
				
				// INTENTOS (sumamos 1)
				Integer intentos = Integer.parseInt(session.getAttribute("numerointentos").toString());
				intentos++;
				session.setAttribute("numerointentos", intentos.toString());
			}
			else if(request.getParameter("mayoromenor").equals("acertado"))
			{
				request.getRequestDispatcher("adivinanumeroexito.jsp").forward(request, response);
			}
		}
		%>
		
		<h1>ADIVINA MI NUMERO</h1>
		
		<table border="1">
			<tr>
				<td>Intentos: </td><td> <%= session.getAttribute("numerointentos") %> </td>
			</tr>
			<tr>
				<td>¿És este tú número?: </td><td> <%= session.getAttribute("numeromedio") %> </td>
			</tr>
		</table>
		
		<form action="adivinanumero.jsp">
			<select name="mayoromenor">
				<option value="mayor">Es mayor</option>
				<option value="menor">Es menor</option>
				<option value="acertado">Acertado</option>
			</select>
			<input type="submit" value="Adivinar">
		</form>
	</body>
</html>