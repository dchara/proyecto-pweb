<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="episunsa.*"%>
<%@ page import="java.util.List"%>
<% List<Producto> productos = (List<Producto>)request.getAttribute("productos");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="es">
<head>
<title>Programación Web con Google App Engine</title>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="keywords" content="Google app engine,Servlets,Java,GAE,HTML,CSS,JSP,Eclipse">
<meta http-equiv="Refresh" content="10">
<link rel="icon" type="image/png" href="http://indice-ejemplos.appspot.com/Java-icon.png"> 
<link rel="stylesheet" type="text/css" href="http://indice-ejemplos.appspot.com/miestilo.css">
</head>

<body>
<!-- Menú de navegación del sitio -->

<div class="Table">
	<div class="Title"><p>Mostrando <%= productos.size() %> productos</p></div>
	<div class="Heading">
	<div class="Cell"><p>Código</p></div>
		<div class="Cell"><p>Nombres</p></div>
		<div class="Cell"><p>Marca</p></div>
		<div class="Cell"><p>Modelo</p></div>
		<div class="Cell"><p>Especificaciones</p></div>
		<div class="Cell"><p>Garantia</p></div>
		<div class="Cell"><p>Stock</p></div>
		<div class="Cell"><p>Precio Compra</p></div>
		<div class="Cell"><p>Precio Venta</p></div>
		<div class="Cell"><p>Ganancia</p></div>
		<div class="Cell"><p>Precio x mayor</p></div>
		
		
	</div>

<%for( Producto c : productos ) {%>
	<div class="Row">
		<div class="Cell"><p><%= c.getIdProducto() %></p></div>
		<div class="Cell"><p><%= c.getNombre() %></p></div>
		<div class="Cell"><p><%= c.getMarca() %></p></div>
		<div class="Cell"><p><%= c.getModelo() %></p></div>
		<div class="Cell"><p><%= c.getEspecificaciones() %></p></div>
		<div class="Cell"><p><%= c.getGarantia() %></p></div>
		<div class="Cell"><p><%= c.getStock() %></p></div>
		<div class="Cell"><p><%= c.getPrecioCompra() %></p></div>
		<div class="Cell"><p><%= c.getPrecioVenta() %></p></div>
		<div class="Cell"><p><%= c.getGanancia() %></p></div>
		<div class="Cell"><p><%= c.getPrecioxMayor() %></p></div>

	</div>
	
<%}%>
</div>
</body>
</html>