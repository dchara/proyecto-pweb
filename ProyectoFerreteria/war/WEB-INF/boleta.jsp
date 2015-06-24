<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel=stylesheet href="estilo.css" type="text/css">
</head>
<BODY background="imagenes/fondoContenido.jpg" opacity="0.4" filter="alpha(opacity=40)">
	<div id="Cliente">
		<fieldset>
			<legend>CLIENTE</legend>
			<table>
				<tr>
					<td><h3>NOMBRES:</h3></td>
					<td><input type="text" name="clienteNomb"></td>
					<td><h3>APELLIDOS:</h3></td>
					<td><input type="text" name="clienteApe"></td>
				</tr>
				<tr>
					<td><h3>DIRECCION:</h3></td>
					<td colspan="2"><input type="text" name="direccion"></td>
				</tr>
			</table>
		</fieldset>
	</div>
		<div id="Producto">
		<fieldset>
			<legend>PRODUCTO Y FACTURACION</legend>
						<table>
							<tr>
								<td><h3>No.</h3>
									<input type="text" name="numeroFactura" value=""></td>
								<td><h3>Fecha</h3>
									<input type="text" name="fecha" value="">
								<td>
								<td><h3>Atendido por:</h3>
									<input type="text" name="codigoTrabajador" value=""></td>
							</tr>
							<form action="ventas">
								<tr>
									<td><h3>ID Venta:</h3>
										<input type="text" value=""></td>
									<td><input type="reset" value="Nuevo Producto"
										class="boton"></td>
									<td><input type="submit" value="Agregar" class="boton"></td>
								</tr>
								<tr>
									<td><h3>COD</h3>
										<input type="text" name="codigoProd"></td>
									<td><h3>Producto</h3>
										<input type="text" name="nomProd" value=""></td>
									<td><h3>Valor</h3>
										<input type="text" name="valorTotal" value=""></td>
									<td><h3>Cant</h3>
										<input type="text" name="cantProdt" value=""></td>
								</tr>
							</form>
						</table>
			</fieldset>
		</div>
		<div id="Productos">
			<fieldset>
			<legend>DESCRIPCION</legend>
			<table>
						<tr>
							<td><h3>No.</h3></td>
							<td><h3>idVenta</h3></td>
							<td><h3>COD</h3></td>
							<td><h3>Producto</h3></td>
							<td><h3>Cant</h3></td>
							<td><h3>PrecioUnitario</h3></td>
							<td><h3>Importe</h3></td>
						</tr>
						<tr>
							<td><h3>111</h3></td>
							<td><h3>10334</h3></td>
							<td><h3>356</h3></td>
							<td><h3>LADRILLOS kING kong</h3></td>
							<td><h3>69</h3></td>
							<td><h3>3.50</h3></td>
							<td><h3>670.50</h3></td>
						</tr>
			</table>
			</fieldset>
		</div>
		<div id="botones">
		<fieldset>
		<legend>ACCIONES</legend>
					<table>
						<tr>
							<td><input type="button" value="eliminar" name="eliminar"class="boton"></td>
						</tr>
						<tr>
							<td><input type="button" value="facturar" name="facturar"class="boton"></td>
						</tr>
						<tr>
							<td><h3>TOTAL A PAGAR $$</h3></td>
						</tr>
						<tr>
							<td><input type="text" value="" name="VentaTotal"></td>
						</tr>
					</table>
		</fieldset>
		</div>
</BODY>

</html>