
package com.mycompany.api.crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuariosCrud {
    public void insertarUsuario(String nombres, String apellidos, String DNI){
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try{
            conn = Conexion.obtenerConexion();
            String sql = "INSERT INTO usuarios(Nombre,Apellido,DNI) VALUES (?,?,?);";
            stmt = conn.prepareStatement(sql);
            
            stmt.setString(1, nombres);
            stmt.setString(2, apellidos);
            stmt.setString(3, DNI);
            
            stmt.executeUpdate();
                    
        }catch(Exception e) {
            e.printStackTrace();
            
        }finally{
            Conexion.cerrarConexion(conn);
            try{ 
                if (stmt != null) stmt.close();
               }
            catch(SQLException ex){
                ex.printStackTrace();
        }
      }
    }
    public List<Usuario> obtenerUsuarios(){
        List<Usuario> usuarios = new ArrayList<>();
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs= null;
        
        try {
            conn = Conexion.obtenerConexion();
            String sql = "select * from usuarios;";
            stmt = conn.prepareStatement(sql);
            
            rs = stmt.executeQuery();
            
            //ahora para recorrer todos los registros uso un while
            while(rs.next()){
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("ID"));
                usuario.setNombres(rs.getString("Nombre"));
                usuario.setApellidos(rs.getString("Apellido"));
                usuario.setDNI(rs.getString("DNI"));
                usuarios.add(usuario);
            }
            
        } catch (Exception e){
            e.printStackTrace();
                }
                finally{
                Conexion.cerrarConexion(conn);
                try{
                    if(stmt != null) stmt.close();
                }
              catch(SQLException ex){
                ex.printStackTrace();
                }
                    try{
                        if(rs != null) rs.close();
                    }
                    catch(SQLException ex){
                        ex.printStackTrace();
                    }
        }
                    return usuarios;
        }
    
    
    
    public void modificarUsuario(int ID, String nombres, String apellidos, String DNI){
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try{
            conn = Conexion.obtenerConexion();
            String sql = "UPDATE usuarios set Nombre= ?, Apellido=? , DNI=? WHERE ID=?;";
            stmt = conn.prepareStatement(sql);
            
            
            stmt.setString(1, nombres);
            stmt.setString(2, apellidos);
            stmt.setString(3, DNI);
            stmt.setInt(4, ID);
            
            stmt.executeUpdate();
                    
        }catch(Exception e) {
            e.printStackTrace();
            
        }finally{
            Conexion.cerrarConexion(conn);
            try{ 
                if (stmt != null) stmt.close();
               }
            catch(SQLException ex){
                ex.printStackTrace();
        }
      }
    }
    
    
    public void eliminarUsuario(int ID){
        Connection conn = null;
        PreparedStatement stmt = null;
        
        try{
            conn = Conexion.obtenerConexion();
            String sql = "DELETE from usuarios where id = ?;";
            stmt = conn.prepareStatement(sql);
                        
    
            stmt.setInt(1, ID);
            
            stmt.executeUpdate();
                    
        }catch(Exception e) {
            e.printStackTrace();
            
        }finally{
            Conexion.cerrarConexion(conn);
            try{ 
                if (stmt != null) stmt.close();
               }
            catch(SQLException ex){
                ex.printStackTrace();
        }
      }
    }

}



        
         
    
     
   

