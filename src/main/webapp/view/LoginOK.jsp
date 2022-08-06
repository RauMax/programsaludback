<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="DAO.AccederUsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<nav></nav>

	
	<%
	Integer dni = Integer.parseInt(request.getParameter("dni"));

	Integer id = Integer.parseInt(request.getParameter("id"));
	
	
	

	out.println("<h2>"+dni+"</h2>");
	out.println("<a href='./MiPerfil.jsp?dni="+dni+"&id="+id+"'>Mi perfil</a>");
	out.println("<a href='./Turnos.jsp?dni="+dni+"&id="+id+"'>Turnos disponibles</a>");
	out.println("<a href='./MisTurnosAsignados.jsp?dni="+dni+"&id="+id+"'>Turnos disponibles</a>");
	%>
	

</body>
</html>