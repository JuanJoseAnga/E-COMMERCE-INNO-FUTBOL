<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"
	%>
<!DOCTYPE html>
<html lang="es">
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
            <div class="agrupar">
                <section>
                   <%Producto prod = new Producto();
			out.println(prod.buscarProductoCategoria(Integer.parseInt(request.getParameter("cmbCategoria")))); 
			  %>
                </section>
                <aside>
                </aside>
            </div>
            
            <footer>
    			<a href="https://www.facebook.com/innovation.futbol" target="_blank"><img src="img/facebook.png" class="logo-footer"></a>
                <a href="https://www.instagram.com/innovation_futbol/" target="_blank"><img src="img/instagram.png" class="logo-footer"></a>
                <a href="https://wa.me/593986987431?text=¡Hola!%20Quiero%20información%20sobre%20un%20producto." target="_blank"><img src="img/whatsapp.png" class="logo-footer"></a>
                <a href="https://www.tiktok.com/@innovation.futbol" target="_blank"><img src="img/tiktok.png" class="logo-footer"></a>
        <br><p>DERECHOS � 2023 INNOVATION FUTBOL.</p>
    </footer>
      </main>
    </body>
</html>