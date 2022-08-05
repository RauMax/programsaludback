<%@page import="java.util.List"%>
<%@page import="model.Turnos"%>
<%@page import="DAO.TurnosDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../CSS/Styles.css" />
<title>Insert title here</title>
</head>
<body>

	<table class="table table-hover table-sm">
      <thead class="thead-dark">
        <tr>
          <th>Especialidad</th>
          <th>Nom_prof</th>
          <th>Fecha</th>
          <th>Hora</th>
          <th>Consultorio</th>
  
        </tr>
      </thead>
      <tbody>

        <%
	TurnosDAO prueba = new TurnosDAO();
	List<Turnos> resultado = prueba.Turnos();

	for (Turnos turnos: resultado) {
		out.println("<tr>");

		out.println("<td>");
		out.println(turnos.getEspecialidad());
		out.println("<br");
		out.println("</td>");

		out.println("<td>");
		out.println(turnos.getNom_prof());
		out.println("<br");
		out.println("</td>");

		out.println("<td>");
		out.println(turnos.getFecha());
		out.println("<br");
		out.println("</td>");

		out.println("<td>");
		out.println(turnos.getHora());
		out.println("<br");
		out.println("</td>");

		out.println("<td>");
		out.println(turnos.getConsultorio());
		out.println("<br");
		out.println("<br");
		out.println("</td>");


		out.println("</tr>");

	}
	%>
        
      </tbody>
    </table>









	
</body>
</html>