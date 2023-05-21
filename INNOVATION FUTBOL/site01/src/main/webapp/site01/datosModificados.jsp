<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="com.productos.negocio.Producto"%>
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

<%
int cod = Integer.parseInt(request.getParameter("editarcod"));
String des = request.getParameter("editardesc");
float pre = Float.parseFloat(request.getParameter("editarprec"));
int can = Integer.parseInt(request.getParameter("editarcant"));
Producto mp = new Producto();
boolean actualizado = mp.ModificarProducto(cod, des, pre, can);
if (actualizado == true){
	response.sendRedirect("catalogo.jsp");
}else{
	out.println("algo salio mal");
}


%>

</body>
</html>