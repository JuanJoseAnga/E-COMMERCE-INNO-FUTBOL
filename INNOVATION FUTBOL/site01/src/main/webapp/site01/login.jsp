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
                   <form action="verificarLogin.jsp" method="POST">
		<label for="username">Usuario:   </label>
		<input type="text" id="username" name="usuario" required><br><br>
		
		<label for="password">Contraseña:</label>
		<input type="password" id="password" name="clave" required><br><br>
		
		<input type="submit" value="Iniciar sesión">
	</form>
	</section>
                <div>
                <p>AUN NO TIENES UNA CUENTA CON NOSOTROS? </p>
                    <h3><a href="registro.jsp">REGISTRATE AQUÍ</a></h3>
                </div>
            </div>
            
           
            
      </main>
      <footer>
                <a href="https://www.facebook.com/innovation.futbol" target="_blank"><img src="img/facebook.png" class="logo-footer"></a>
                <a href="https://www.instagram.com/innovation_futbol/" target="_blank"><img src="img/instagram.png" class="logo-footer"></a>
                <a href="https://wa.me/593986987431?text=Â¡Hola!%20Quiero%20informaciÃ³n%20sobre%20un%20producto." target="_blank"><img src="img/whatsapp.png" class="logo-footer"></a>
                <a href="https://www.tiktok.com/@innovation.futbol" target="_blank"><img src="img/tiktok.png" class="logo-footer"></a>
            </footer>
    </body>
    
</html>