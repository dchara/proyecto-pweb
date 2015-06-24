<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel=stylesheet href="estilo.css" type="text/css">
<title>Insert title here</title>
</head>
<BODY background="imagenes/fondoContenido.jpg" opacity="0.4" filter="alpha(opacity=40)">
       <fieldset>
       <legend>INICIO SESION</legend>
       <form action="servlet" >
	   <table>
			<td><img src="imagenes/usuario.png" width="100px" heigth="100px" padding-lefth="30px">
		<tr>
			<td><h4>USUARIO</h4></td><td><input type="text" name="gmail"></td>
		</tr>
		<tr>
			<td><h4>PASSWORD</h4></td><td><input type="text" name="password"></td>
		</tr>
		<tr>
			<td><input  type="reset" value="limpiar" class="boton"></td><td><input type="submit" value="ingresar" class="boton2">
		</tr>
		</table>
		</form>
		</fieldset>
    </BODY>

</html>