<%-- 
    Document   : modificar
    Created on : 15 jul. 2024, 09:55:02
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
            
            /* Reset de estilos */
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
    text-decoration: none;
    text-align: center;
    display: inline-block;
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
        <h1>Modificar Usuario</h1>
        <nav>
            <a href="index.jsp" class="btn">Regresar al Menú</a>
        </nav>
    </header>
    
    <main>
        <form action="servletusuario" method="POST" class="user-form">
            <div class="form-group">
                <label >Id</label>
                <input type="text" id="id">
            </div>
            <div class="form-group">
                <label>Nombre:</label>
                <input type="text" id="idnombres" >
            </div>
            <div class="form-group">
                <label>Apellido:</label>
                <input type="text" id="idapellidos" >
            </div>
            <div class="form-group">
                <label>DNI:</label>
                <input type="text" id="iddni">
            </div>
            <button type="submit" name="action" value="modificar" class="btn">Modificar</button>
        </form>
        
        <section class="user-list">
            <h2>Lista de Usuarios</h2>
             <section class="user-table-section">
                 
            <table class="user-table" id="mitabla">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>DNI</th>
                        <th>Editar</th>
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
                        <td>
                            <button type="submit" onClick="Seleccionar()">Seleccionar</button>
                        </td>
                    </tr>
                      <%
                    }
                %>
                </tbody>
              
            </table>
        </section>
        </section>
    </main>
    </body>
</html>

<script>
function Seleccionar() {
    var table = document.getElementById("mitabla");
    for (var i = 1; i < table.rows.length; i++) {
        table.rows[i].onclick = function() {
            document.getElementById('id').value = this.cells[0].innerHTML;
            document.getElementById('idnombres').value = this.cells[1].innerHTML;
            document.getElementById('idapellidos').value = this.cells[2].innerHTML;
            document.getElementById('iddni').value = this.cells[3].innerHTML;
        };
    }
}
</script>
