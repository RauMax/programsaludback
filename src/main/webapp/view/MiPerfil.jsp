<%@page import="model.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="DAO.AccederUsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="./Styles.css" />
<title>Insert title here</title>
</head>
<body>
		
		<% 
		Integer dni = Integer.parseInt(request.getParameter("dni"));
		
		 AccederUsuarioDAO prueba = new AccederUsuarioDAO();
	     List<Usuario> resultado = prueba.accederUsuario(dni);

		Integer id = resultado.get(0).getId();
		
		//out.print("<nav class='fondo-claro'>Nombre:"+ resultado.get(0).getNombre()+"</nav>");
		%>
		<h1 class="fondo-claro">hola<%out.println(resultado.get(0).getNombre()) ;%></h1>
		<h1 class="fondo-claro">hola<%out.println(id) ;%></h1>

</body>
</html>