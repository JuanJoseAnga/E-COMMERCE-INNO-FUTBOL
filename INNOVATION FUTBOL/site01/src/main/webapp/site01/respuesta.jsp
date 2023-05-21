<html lang="es">
    <head>
        <meta charset="utf-8">
        <title>INNOVATION FUTBOL</title>
        <!--Enlace css-->
        <link rel="stylesheet" href="css/estilo.css">
        <link rel="shortcut icon" href="img/inno_logo.png" type="image/x-icon">

    </head>

    <body>
        <main>
            <header>
                <a href="index.jsp"><img src="img/innofc.png" alt="Logo de la tienda" id="logo-header"></a>

            </header>
            <nav class="menu">
                <ul class="menu-items">
                    <li><a href="catalogo.jsp">VER PRODUCTOS</a></li>
                    <li><a href="busqueda.jsp">BUSCAR POR COMPETICION</a></li>
                    <li><a href="login.jsp">REGISTRAR</a></li>
                </ul>
            </nav>
            <div id="contenido">
            	<!-- CAPTURAR DATOS DEL REQUEST -->
            	<%
            		String cedula=request.getParameter("txtCedula");
        			String estadoCivil=request.getParameter("cmbECivil");
        			String residencia=request.getParameter("rdResidencia");
        			String foto=request.getParameter("fileFoto");
        			String color=request.getParameter("colorFavorito");
            	%>
            	<!-- MOSTRAR DATOS CAPTURADOS -->
            	<br>Su nombre es: <%=request.getParameter("txtNombre")%>
            	<br>Su Apellido es: <%=request.getParameter("txtApellido") %>
            	<br>Cedula: <%=cedula%>
            	<br>Residencia: <%=request.getParameter("rdResidencia")%>
            	<br>Estado Civil: <%=request.getParameter("cmbECivil") %>
            	<br><%=foto %>
            	<br>Tu fecha de nacimiento es:  <strong> <% out.println(request.getParameter("fecha")); %>  </strong>
            	<br><font color=<%=color%>> Este es tu color favorito</font> 
            	
            	<p id="resultado">
</p>
<script>  
function calcularEdad() {
  var fechaNacimiento = new Date();
  fechaNacimiento.setFullYear(parseInt(<%=request.getParameter("fecha").substring(0,4)%>)
		  ,parseInt(<%=request.getParameter("fecha").substring(5,7)%>)
		  ,parseInt(<%=request.getParameter("fecha").substring(8,10)%>));
  const hoy = new Date();
  var edad = hoy.getFullYear() - fechaNacimiento.getFullYear();
  console.log("f: "+ fechaNacimiento.getMonth());
  if(hoy.getMonth()<fechaNacimiento.getMonth()){
	  edad--;
  }
  document.getElementById("resultado").textContent = "Tienes: " + edad+ " años";
}
calcularEdad();
</script>
            </div>
            
           <nav class="menu">
                <ul class="menu-items">
                    <li> DERECHOS © 2023 INNOVATION FUTBOL.</li>
                </ul>
            </nav>
            
            
            
      </main>
      <footer>
    <a href="https://www.facebook.com/innovation.futbol" target="_blank"><img src="img/facebook.png" class="logo-footer"></a>
                <a href="https://www.instagram.com/innovation_futbol/" target="_blank"><img src="img/instagram.png" class="logo-footer"></a>
                <a href="https://wa.me/593986987431?text=Â¡Hola!%20Quiero%20informaciÃ³n%20sobre%20un%20producto." target="_blank"><img src="img/whatsapp.png" class="logo-footer"></a>
                <a href="https://www.tiktok.com/@innovation.futbol" target="_blank"><img src="img/tiktok.png" class="logo-footer"></a>
        <br><p>DERECHOS © 2023 INNOVATION FUTBOL.</p>
    </footer>
    </body>
</html>