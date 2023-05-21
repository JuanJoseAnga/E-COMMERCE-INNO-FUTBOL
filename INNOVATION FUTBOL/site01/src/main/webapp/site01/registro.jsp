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
               <form action="respuesta.jsp" method="post" id="formulario">
	               <table border=1>
	               <tr><td>Nombre: </td><td><input type="text" name="txtNombre"/></td></tr>
	               <tr><td>Apellido: </td><td><input type="text" name="txtApellido"/></td></tr>
	               <tr><td>Cédula: </td><td><input type="text" name="txtCedula" maxlength="10"/></td></tr>
		           <tr><td>Estado Civil: </td>
		           <td>
		               		<select name ="cmbECivil">
			               		<option value="Soltero">Soltero</option>
			               		<option value="Casado">Casado</option>
			               		<option value="Divorciado">Divorciado</option>
			               		<option value="Viudo">Viudo</option>
			              	</select>
	               	</td></tr>    
		           <tr><td>Lugar de residencia: </td>
		           	   <td><input type="radio" name="rdResidencia" value="Sur"/>Sur
		           	   <input type="radio" name="rdResidencia" value="Norte"/>Norte
		           	   <input type="radio" name="rdResidencia" value="Centro"/>Centro</td>   
		           </tr>
		           <tr><td>Foto: </td><td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png" /></td></tr>
		           <tr><td>Color Favorito: </td><td><input type="color" name="colorFavorito"/></td></tr>
		           <tr><td>Mes y año de nacimiento: </td><td> <input type="date" name="fecha"/> </td></tr>
		           <tr><td><input type="submit"/></td><td><input type="reset"/></td></tr>
	               </table>
               </form>
               
                        <nav class="menu">
                <ul class="menu-items">
                    <li> DERECHOS © 2023 INNOVATION FUTBOL.</li>
                </ul>
            </nav>
            
            <footer>
                <a href="https://www.facebook.com/innovation.futbol" target="_blank"><img src="img/facebook.png" class="logo-footer"></a>
                <a href="https://www.instagram.com/innovation_futbol/" target="_blank"><img src="img/instagram.png" class="logo-footer"></a>
                <a href="https://wa.me/593986987431?text=Â¡Hola!%20Quiero%20informaciÃ³n%20sobre%20un%20producto." target="_blank"><img src="img/whatsapp.png" class="logo-footer"></a>
                <a href="https://www.tiktok.com/@innovation.futbol" target="_blank"><img src="img/tiktok.png" class="logo-footer"></a>
            </footer>
      </main>
    </body>
</html>