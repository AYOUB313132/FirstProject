<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.DateFormat"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

</head>
<body>
	<%
	DateFormat df = DateFormat.getInstance();
	%>
	<div class="container mt-5">
		<h1 class="text-center text-primary">Mi Tareas</h1>
		<table class="table">
			<thead class="table-dark">
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Descripcion</th>
					<th scope="col">Fecha Inicio</th>
					<th scope="col">Fecha Fin</th>
				</tr>
			</thead>
			<tbody>
				<jsp:useBean id="emp" scope="session"
					class="org.zabalburu.FirstProject.jakarta.modelo.Empleado"></jsp:useBean>

				<%
				for (int i = 0; i < emp.getTareas().size(); i++) {
				%>
				<tr>
					<td><%= emp.getTareas().get(i).getId() %></td>
					<td><%= emp.getTareas().get(i).getDescripcion() %></td>
					<td><%= df.format(emp.getTareas().get(i).getFechaInicio()) %></td>
					<td><%= df.format(emp.getTareas().get(i).getFechaFin()) %></td>
				</tr>
				<%
				}
				%>


			</tbody>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>

</body>
</html>