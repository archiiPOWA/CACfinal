<%-- 
    Document   : mostrarUsuarios
    Created on : 15 jul. 2024, 09:09:33
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
    color: #fff;
    background-color: #007bff;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s ease;
}

nav a:hover {
    background-color: #0056b3;
}

h1 {
    margin-bottom: 20px;
}

/* Estilos de la sección de la tabla */
.user-table-section {
    background: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Estilos de la tabla */
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
    
    <header>
        <h1>Tabla de Usuarios</h1>
        <nav>
            <a href="index.jsp" class="btn">Regresar al Menú</a>
        </nav>
    </header>
    
    <main>
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
</html>
