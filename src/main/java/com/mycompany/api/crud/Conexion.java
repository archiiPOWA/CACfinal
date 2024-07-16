
package com.mycompany.api.crud;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    private static final String url="jdbc:mysql://localhost:3306/bd_usuarios";
    private static final String username = "root";
    private static final String pass = "admin";
    
    public static Connection obtenerConexion(){
        Connection conn= null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, pass);
        }catch (Exception e){
            System.out.println("Error al conectarnos" + e.toString());   
        }
        return conn;
    }
    public static void cerrarConexion(Connection conn){
        try{
            if (conn != null){
                conn.close();
            }
        } catch (Exception e){
            System.out.println("error al conectarnos" + e.toString());
        }
    }
}
