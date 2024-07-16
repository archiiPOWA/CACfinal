
package com.mycompany.api.crud;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "servletusuario", urlPatterns = {"/servletusuario"})
public class servletusuario extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("mostrar".equals(action)) {
            mostrarUsuarios(request, response);
        }else if ("guardar".equals(action)) {
            mostrarUsuariosGuardar(request, response);
            
        }else if ("modificar".equals(action)) {
            mostrarUsuariosModificar(request, response);
            
        }else if ("eliminar".equals(action)) {
            mostrarUsuariosEliminar(request, response);
            
        }
        
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("guardar".equals(action)){
            guardarUsuarios(request,response);
        }
        else if ("modificar".equals(action)){
            modificarUsuarios(request,response);
        }
        else if ("eliminar".equals(action)){
            eliminarUsuarios(request,response);
        }
    }   
        
    

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    
    //guardar los usuarios
    public void guardarUsuarios(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String DNI = request.getParameter("DNI");
        
        UsuariosCrud usuarioscrud = new UsuariosCrud();
        usuarioscrud.insertarUsuario(nombres, apellidos, DNI);
        mostrarUsuarios(request,response);
        
    }    
    
    //Mostrar Usuarios
    public void mostrarUsuarios(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        UsuariosCrud usuariosCrud = new UsuariosCrud();
        List<Usuario> usuarios = usuariosCrud.obtenerUsuarios();
        
        request.setAttribute("listausuarios", usuarios);
        
        request.getRequestDispatcher("mostrarUsuarios.jsp").forward(request, response);
    
    }    
    
       public void mostrarUsuariosGuardar(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        UsuariosCrud usuariosCrud = new UsuariosCrud();
        List<Usuario> usuarios = usuariosCrud.obtenerUsuarios();
        
        request.setAttribute("listausuarios", usuarios);
        
        request.getRequestDispatcher("guardarUsuarios.jsp").forward(request, response);
    
    }   
    
         public void modificarUsuarios(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
         
        int ID = Integer.parseInt(request.getParameter("ID"));
        
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String DNI = request.getParameter("DNI");
        UsuariosCrud usuarioscrud = new UsuariosCrud();
        usuarioscrud.modificarUsuario(ID, nombres, apellidos, DNI);
        mostrarUsuariosModificar(request,response);
        
    }  
    
         public void mostrarUsuariosModificar(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        UsuariosCrud usuariosCrud = new UsuariosCrud();
        List<Usuario> usuarios = usuariosCrud.obtenerUsuarios();
        
        request.setAttribute("listausuarios", usuarios);
        
        request.getRequestDispatcher("modificar.jsp").forward(request, response);
       
    } 
    
           public void mostrarUsuariosEliminar(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        
        UsuariosCrud usuariosCrud = new UsuariosCrud();
        List<Usuario> usuarios = usuariosCrud.obtenerUsuarios();
        
        request.setAttribute("listausuarios", usuarios);
        
        request.getRequestDispatcher("eliminarUsuarios.jsp").forward(request, response);
       
    } 
           public void eliminarUsuarios(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
        
        int ID = Integer.parseInt(request.getParameter("ID"));
        
        UsuariosCrud usuarioscrud = new UsuariosCrud();
        usuarioscrud.eliminarUsuario(ID);
        mostrarUsuariosEliminar(request,response);
        
    }
    
        
    }
    
    
    
    
    
    

