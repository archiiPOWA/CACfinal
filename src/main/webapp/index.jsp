<%-- 
    Document   : index
    Created on : 15 jul. 2024, 08:42:16
    Author     : Ruben
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    <style>
        
        /* Reset de estilos por defecto */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

/* Estilos generales */
body {
    background-color: #f4f4f9;
    color: #333;
    font-size: 16px;
    line-height: 1.6;
    padding: 20px;
}

header {
    margin-bottom: 20px;
    text-align: center;
}

h1 {
    margin-bottom: 20px;
}

/* Estilos del formulario y botones */
.user-form {
    margin-bottom: 20px;
}

.user-form .form-group {
    display: flex;
    align-items: center;
}

.user-form input[type="text"] {
    flex: 1;
    padding: 10px;
    margin-right: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.btn {
    color: #fff;
    background-color: #007bff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.btn:hover {
    background-color: #0056b3;
}

.button-group {
    display: flex;
    gap: 10px;

       
    </style>
    
    </head>
    <body>
        <header>
        <h1>Aplicación ABML de lista usuarios</h1>
    </header>
    
    <main>
        <section class="abml-section">
            <form action="servletusuario" method="GET" class="user-form">
                <div class="form-group">
                    <a href="servletusuario?action=mostrar" type="submit" class="btn">Mostrar Usuarios</a>
                    <a href="servletusuario?action=guardar" class="btn">Guardar Usuarios</a>
                    <a href="servletusuario?action=modificar" class="btn">Modificar Usuarios</a>
                    <a href="servletusuario?action=eliminar" class="btn">Eliminar Usuarios</a>
                                       
                </div>
            </form>
        </section>
    </main>
</body>
            
        
        
    </body>
</html>
