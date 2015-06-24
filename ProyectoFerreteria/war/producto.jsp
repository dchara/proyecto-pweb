<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>AgregarProducto</title>
<link rel=stylesheet href="estilo.css" type="text/css">
</head>
<BODY background="imagenes/fondoContenido.jpg" opacity="0.4" filter="alpha(opacity=40)">

<ul class="navbar">
  <li><a href="/index.html">Regresar...</a>
  <li><a href="/listproducto">Lista</a>
</ul>
	<fieldset> 
	<legend>AGREGAR PRODUCTO</legend>
	
       <form action="guardarproducto" method="get"> 
			<table>
			    <tr>
					<td><h3>CODIGO: </h3></td><td><input type="text" name="codProd"></td>
				</tr>
				<tr>
					<td><h3>NOMBRE: </h3></td><td><input type="text" name="nombProd"></td>
				</tr>
				
				<tr>
					<td><h3>MARCA: </h3></td><td><input type="text" name="marcaProd"></td>
				</tr>
				<tr>
					<td><h3>MODELO: </h3></td><td><input type="text" name="modProd"></td>
				</tr>
				<tr>
					<td><h3>ESPECIFICACIONES: </h3></td><td><input type="text" name="espProd"></td>
				</tr>
				<tr>
					<td><h3>GARANTIA: </h3></td><td><input type="text" name="garantProd"></td>
				</tr>
				<tr>
					<td><h3>STOCK: </h3></td><td><input type="text" name="stockProd"></td>
				</tr>
				<tr>
					<td><h3>PRECIO COMPRA: </h3></td><td><input type="text" name="pcProd"></td>
				</tr>
				<tr>
					<td><h3>PRECIO VENTA: </h3></td><td><input type="text" name="pvProd"></td>
				</tr>
				<tr>
					<td><h3>GANANCIA: </h3></td><td><input type="text" name="ganProd"></td>
				</tr>
				<tr>
					<td><h3>PRECIO X MAYOR: </h3></td><td><input type="text" name="pmayProd"></td>
				</tr>
		
				
				<tr>
					<td><input type="reset" class="boton" value="LIMPIAR"></td><td><input type="submit" class="boton2" value="AGREGAR"></td>
				</tr>
			</table>
			</form>
		</fieldset>
		
    </BODY>
</html>