<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="episunsa.*"%>
<%@ page import="java.util.*;"%>
<% List<Usuario> usuario = (List<Usuario>)request.getAttribute("usuarios");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PRODUCTO ENCONTRADO</title>
</head>
<body>

<table>

<%for( Usuario us : usuario) {%>
<tr>
	<td> <h2>ID USUARIO:</h2></td>
	<td>
	<%="<input type=\"text\" name=\"id\" value=\""+us.getIdUsuario()+"\"></td><br\>" %>
</tr>
<tr>
	<td><h2>NOMBRE: </h2></td><td><h3><%= us.getNombres() %></h3></td>
</tr>	

<tr>
	<td><h2>APELLIDOS: </h2></td><td><h3><%= us.getApellidos() %></h3></td>
</tr>	
<tr>
	<td><h2>DNI: </h2></td><td><h3><%= us.getDni() %></h3></td>
</tr>	


<tr>
	<td><h2>GMAIL: </h2></td><td><h3><%= us.getGmail() %></h3></td>
</tr>	
<tr>
	<td><h2>DIRECCION: </h2></td><td><h3><%= us.getDireccion() %></h3></td>
</tr>	
<tr>
	<td><h2>TELEFONO: </h2></td><td><h3><%= us.getTelefono() %></h3></td>
</tr>	
<tr>
	<td><h2>VENTAS: </h2></td><td><h3><%= us.getVentas() %></h3></td>
</tr>

<%}%>
</table>
</body>
</html>