
package com.mycompany.api.crud;

public class Usuario {
    int id;
    String nombres;
    String apellidos;
    String DNI;

    public Usuario() {
    }
    
    
    public Usuario(int id, String nombres, String apellidos, String DNI) {
        this.id = id;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.DNI = DNI;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }
    
    
}
