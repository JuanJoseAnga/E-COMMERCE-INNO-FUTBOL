<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import="com.productos.negocio.*"%>
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

<!-- CAPTURAR DATOS DEL REQUEST -->
		<%
			String valorc=request.getParameter("cmbCategoria");
			String[][] items = {
			    {"1", "LA LIGA SANTANDER"},
			    {"2", "PREMIER LEAGUE"},
			    {"3", "SERIE A"},
			    {"4", "BUNDESLIGA"},
			    {"5", "LIGA PRO ECUADOR"}
			};
			String nombrec = "Nombre por defecto"; // Valor por defecto si no se encuentra una coincidencia
			for (int i = 0; i < items.length; i++) {
			    String[] item = items[i];
			    if (item[0].equals(valorc)) {
			        nombrec = item[1];
			        break;
			    }
			}
			String nombre = request.getParameter("txtNombre");
			String cantidad = request.getParameter("nCantidad");
			String precio = request.getParameter("nPrecio");
			String imagen;
			Producto p = new Producto();
			String result = p.ingresarProducto(p.verificarCategoria(nombrec), nombre, Integer.parseInt(cantidad), Double.parseDouble(precio));			
			
		%>
		<jsp:forward page="nuevoProducto.jsp">
		<jsp:param name="result"
			value= "<%=result %>" />
	</jsp:forward>

</body>
</html>