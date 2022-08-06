<%@page import="DAO.TurnosDAO"%>
<%@page import="model.Asignacion"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% 
	Integer id_U = Integer.parseInt(request.getParameter("id_U"));
	Integer id_T = Integer.parseInt(request.getParameter("id_T"));
	String usu_ape = request.getParameter("usu_ape");
	String usu_nom = request.getParameter("usu_nom");
	String turn_esp = request.getParameter("turn_esp");
	String turn_hora = request.getParameter("turn_hora");
	Integer turn_consul = Integer.parseInt(request.getParameter("turn_consul"));
	
	Asignacion asignar = new Asignacion(id_U, id_T, usu_ape ,usu_nom ,turn_esp ,turn_hora ,turn_consul);
	TurnosDAO turno = new TurnosDAO();
	
	
	
	%>
	
</body>
</html>