<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="episunsa.*"%>
<%@ page import="java.util.List"%>
<% List<Usuario> usuarios = (List<Usuario>)request.getAttribute("usuarios");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="keywords" content="Google app engine,Servlets,Java,GAE,HTML,CSS,JSP,Eclipse">
<meta http-equiv="Refresh" content="10">
<link rel="icon" type="image/png" href="http://indice-ejemplos.appspot.com/Java-icon.png"> 
<link rel="stylesheet" type="text/css" href="http://indice-ejemplos.appspot.com/miestilo.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>**LISTA USUARIOS**</title>
</head>
<body>
<div class="Table">
	<div class="Title"><p>Mostrando <%= usuarios.size() %> usuarios</p></div>
	<div class="Heading">
		<div class="Cell"><p>CODIGO</p></div>
		<div class="Cell"><p>NOMBRES</p></div>
		<div class="Cell"><p>APELLIDOS</p></div>
		<div class="Cell"><p>DNI</p></div>
		<div class="Cell"><p>GMAIL</p></div>
		<div class="Cell"><p>DIRECCION</p></div>
		<div class="Cell"><p>TELEFONO</p></div>
		<div class="Cell"><p>VENTAS</p></div>
	</div>
	

<%for( Usuario usur : usuarios ) {%>
<div class="Row">
		<div class="Cell"><p><%= usur.getIdUsuario() %></p></div>
		<div class="Cell"><p><%= usur.getNombres() %></p></div>
		<div class="Cell"><p><%= usur.getApellidos() %></p></div>
		<div class="Cell"><p><%= usur.getDni() %></p></div>
		<div class="Cell"><p><%= usur.getGmail() %></p></div>
		<div class="Cell"><p><%= usur.getDireccion() %></p></div>
		<div class="Cell"><p><%= usur.getTelefono() %></p></div>
		<div class="Cell"><p><%= usur.getVentas() %></p></div>
	</div>
<%}%>
</body>
</html>