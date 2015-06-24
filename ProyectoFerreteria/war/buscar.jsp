<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<label>INGRESE EL PRODUCTO A BUSCAR</label>
	<form action="/buscarproducto" method="get">
	<input type="text" name="buscado">
	<input type="submit" value="buscar">
	</form>
</body>
</html>