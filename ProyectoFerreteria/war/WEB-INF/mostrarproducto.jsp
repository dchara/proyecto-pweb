<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="episunsa.*"%>
<%@ page import="java.util.*;"%>
<% List<Producto> producto = (List<Producto>)request.getAttribute("productos");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>PRODUCTO ENCONTRADO</title>
</head>
<body>

<table>

<%for( Producto c : producto) {%>
<tr>
	<td><h2>Codigo: </h2></td><td><h3><%= c.getIdProducto() %></h3></td>
</tr>
<tr>
	<td><h2>NOMBRE: </h2></td><td><h3><%= c.getNombre() %></h3></td>
</tr>	

<tr>
	<td><h2>MARCA: </h2></td><td><h3><%= c.getMarca() %></h3></td>
</tr>	
<tr>
	<td><h2>MODELO: </h2></td><td><h3><%= c.getModelo() %></h3></td>
</tr>	


<tr>
	<td><h2>ESPECIFICACIONES: </h2></td><td><h3><%= c.getEspecificaciones() %></h3></td>
</tr>	
<tr>
	<td><h2>GARANTIA: </h2></td><td><h3><%= c.getGarantia() %></h3></td>
</tr>	
<tr>
	<td><h2>STOCK: </h2></td><td><h3><%= c.getStock() %></h3></td>
</tr>	
<tr>
	<td><h2>PRECIO DE COMPRA: </h2></td><td><h3><%= c.getPrecioCompra() %></h3></td>
</tr>
<tr>
	<td><h2>PRECIO DE VENTA: </h2></td><td><h3><%= c.getPrecioVenta() %></h3></td>
</tr>
<tr>
	<td><h2>GANANCIA: </h2></td><td><h3><%= c.getGanancia() %></h3></td>
</tr>
<tr>
	<td><h2>PRECIO X MAYOR: </h2></td><td><h3><%= c.getPrecioxMayor() %></h3></td>
</tr>	

<%}%>
</table>
</body>
</html>