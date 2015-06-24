<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel=stylesheet href="estilo.css" type="text/css">
</head>
<BODY background="imagenes/fondoContenido.jpg" opacity="0.4" filter="alpha(opacity=40)">
<title>Insert title here</title>
</head>
<body>
	<form action="saveusuario" method="get">
		<table>
			    <tr>
					<td><h3>NOMBRES: </h3></td><td><input type="text" name="nombres"></td>
				</tr>
				<tr>
					<td><h3>APELLIDOS: </h3></td><td><input type="text" name="apellidos"></td>
				</tr>
				
				<tr>
					<td><h3>DNI: </h3></td><td><input type="text" name="dni"></td>
				</tr>
				<tr>
					<td><h3>GMAIL: </h3></td><td><input type="text" name="gmail"></td>
				</tr>
				<tr>
					<td><h3>DIRECCION: </h3></td><td><input type="text" name="direccion"></td>
				</tr>
				<tr>
					<td><h3>TELEFONO: </h3></td><td><input type="text" name="telefono"></td>
				</tr>
				<tr>
					<td><h3>VENTAS: </h3></td><td><input type="text" name="ventas"></td>
				</tr>
				<tr>
					<td><input type="reset" class="boton" value="LIMPIAR"></td><td><input type="submit" class="boton2" value="AGREGAR"></td>
				</tr>
			</table>
	</form>
</body>
</html>