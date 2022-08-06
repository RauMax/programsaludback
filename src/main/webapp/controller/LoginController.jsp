<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="model.Usuario"%>
<%@page import="DAO.AccederUsuarioDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="DAO.LoginDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	Integer dni = Integer.parseInt(request.getParameter("dni"));
	String contrasenia = request.getParameter("password");
	

	AccederUsuarioDAO accederUsuarioDAO=new AccederUsuarioDAO();
	
	Usuario usuario = new Usuario();
	
	List<Usuario> acceso = new ArrayList();
	

	

	
	
	LoginDAO loginDAO = new LoginDAO();
	Integer id = loginDAO.Login(dni, contrasenia);
	
	
	if(id != null){
		out.print(id);
		//response.sendRedirect("<h1> SI </h1> <br>");
		response.sendRedirect("../view/LoginOK.jsp?dni="+dni+"&id="+id);
		
		
		
	//out.println("<h1>Usuario logueado "+ dni +"</h1>");
		
			
	}else{
		//response.sendRedirect("<h2> NO </h2> <br>");
		response.sendRedirect("../view/LoginFallido.html");
		//out.println("<h1>Usuario o contrasenia incorrecto</h1>");
	}
	%>
</body>
</html>