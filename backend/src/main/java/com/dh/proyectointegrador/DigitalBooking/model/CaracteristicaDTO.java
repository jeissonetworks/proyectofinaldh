package com.dh.proyectointegrador.DigitalBooking.model;

import java.util.Set;

public class CaracteristicaDTO {
    private Long id;
    private String nombre;
    private String icono;
    private Set productos;

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

    public String getIcono() {
        return icono;
    }

    public void setIcono(String icono) {
        this.icono = icono;
    }

    public Set getProductos() {
        return productos;
    }

    public void setProductos(Set productos) {
        this.productos = productos;
    }
}
