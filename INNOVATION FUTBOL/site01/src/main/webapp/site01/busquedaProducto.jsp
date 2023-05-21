<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"
	%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>INNO FUTBOL</title>
    <link rel="shortcut icon" href="img/inno_logo.png" type="image/x-icon">
    <link rel="stylesheet" href="css/estilo.css">
</head>
<body>
    <header>
        <br><a href="index.jsp"><img src="img/innofc.png" alt="Logo INNO FUTBOL"></a>

        <nav>
            <ul>
                <li><a href="catalogo.jsp">VER PRODUCTOS</a></li>
                <li><a href="busqueda.jsp">BUSCAR POR COMPETICION</a></li>
                <li><a href="login.jsp">REGISTRAR</a></li>
            </ul>
        </nav>
    </header>
<body>
<section>
<%
int cod = Integer.parseInt(request.getParameter("cod"));
Producto mp = new Producto();
mp.ConsulEditarProductos(cod);

%>


</section>
<div>
<form action="datosModificados.jsp" method="post">
<table>
<tr>
<td>Codigo Producto:</td>
<td><input type = "text" name="editarcod" value="<%=cod%>"/> </td>
</tr>
<tr>

<td>Caregoria</td>
<td><output><%=mp.getId_cat()%></output></td>
</tr>


<tr>
<td>Descripcion</td>
<td><input type = "text" name="editardesc" value="<%=mp.getDescripcion_pr() %>"/> </td>
</tr>


<tr>
<td>Precios</td>

<td><input type = "text" name="editarprec" value="<%=mp.getPrecio_pr() %>"/> </td>
</tr>

<tr>
<td>Cantidad</td>

<td><input type = "text" name="editarcant" value="<%=mp.getCantidad_pr() %>"/> </td>
</tr>
</table>

<br /> 
<br /> <input type="submit" name="Actualizar" />
</form>

</div>


</body>
</html>