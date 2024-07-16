<%-- 
    Document   : guardarUsuarios
    Created on : 15 jul. 2024, 09:17:55
    Author     : Ruben
--%>

<%@page import="com.mycompany.api.crud.Usuario"%>
<%@page import="java.util.List"%>
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

nav a {
    color: #007bff;
    text-decoration: none;
    font-weight: bold;
}

nav a:hover {
    text-decoration: underline;
}

h1, h2 {
    margin-bottom: 20px;
}

/* Estilos del formulario */
.user-form {
    background: #fff;
    padding: 20px;
    margin-bottom: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.form-group {
    margin-bottom: 15px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

.form-group input {
    width: calc(100% - 20px);
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

.btn {
    background: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
}

.btn:hover {
    background: #0056b3;
}

/* Estilos de la tabla */
.user-list {
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.user-table {
    width: 100%;
    border-collapse: collapse;
}

.user-table th, .user-table td {
    padding: 10px;
    border: 1px solid #ddd;
    text-align: left;
}

.user-table th {
    background: #007bff;
    color: #fff;
    font-weight: bold;
}

.user-table tbody tr:nth-child(even) {
    background: #f4f4f9;
}

.user-table tbody tr:hover {
    background: #e9ecef;
}       
    </style>
    </head>
    <body>
        <header>
        <h1>Guardar Usuario</h1>
        <nav>
            <a href="index.jsp">Regresar al Menú</a>
        </nav>
    </header>
    
    <main>
        <form action="servletusuario" method="POST" class="user-form">
            <div class="form-group">
                <label for="nombres">Nombre:</label>
                <input type="text" name="nombres">
            </div>
            <div class="form-group">
                <label >Apellido:</label>
                <input type="text"  name="apellidos">
            </div>
            <div class="form-group">
                <label >DNI:</label>
                <input type="text" name="DNI">
            </div>
            <button type="submit" name="action" value="guardar" class="btn">Guardar</button>
        </form>
        
       <section class="user-table-section">
            <table class="user-table">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>DNI</th>
                    </tr>
                </thead>

                 
                <tbody>
                                  <%
List<Usuario> usuarios = (List<Usuario>) request.getAttribute("listausuarios");
for (Usuario usuario: usuarios) {
 
%>
                    <tr>
                        <td><%= usuario.getId() %></td>
                        <td><%= usuario.getNombres() %></td>
                        <td><%= usuario.getApellidos() %></td>
                        <td><%= usuario.getDNI() %></td>
                    </tr>
                      <%
                    }
                %>
                </tbody>
              
            </table>
        </section>
    </main>
    </body>
</html>
