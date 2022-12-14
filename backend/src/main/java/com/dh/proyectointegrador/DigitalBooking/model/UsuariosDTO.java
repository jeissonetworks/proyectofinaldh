package com.dh.proyectointegrador.DigitalBooking.model;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.List;

public class UsuariosDTO {
    private Long id;
    private String nombre;
    private String apellido;
    private String email;
    private String contrasenia;
    private String ciudad;
    private Roles roles;
    private List<Reservacion> reservas;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = new BCryptPasswordEncoder().encode(contrasenia);
    }


    public Roles getRoles() {
        return roles;
    }


    public void setRoles(Roles roles) {
        this.roles = roles;
    }

    public List getReservas() {
        return reservas;
    }

    public void setReservas(List reservas) {
        this.reservas = reservas;
    }
}
