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
<form method="post" action="ingresoProducto.jsp">
		<div class="ingreso-form">
			Categoria
			<%
				Categoria C = new Categoria();
				out.println(C.mostrarCategoria());
			%>
		</div>
		<div class="ingreso-form">
			Nombre: <input type="text" name="txtNombre" required="required">
		</div>
		<div class="ingreso-form">
			Cantidad <input type="number" name="nCantidad"  min="5"  required="required">
		</div>
		<div class="ingreso-form">
			Precio <input type="number" name="nPrecio" step="0.01" min="1" required="required">
		</div>

		<div class="ingreso-form">
			<input type="submit" value="Ingresar">
		</div>
	</form>
	<%
	String result = request.getParameter("result");
		if (result != null && !result.isEmpty()) {
		%>
			<%=result%>
		<%
		}
	%>
</body>
</html>