package com.dh.proyectointegrador.DigitalBooking.model;

import java.util.List;
import java.util.Set;

public class ProductoDTO {
    private Long id;
    private String nombre;
    private String tituloDescripcion;
    private String descripcion;
    private String ubicacion;
    private String coordenadas;
    private String detalleUbicacion;
    private Categoria categoria;
    private Ciudad ciudad;
    private List imagenes;
    private Set<Caracteristica> caracteristicas;
    private List<Puntaje> puntajes;
    private List<Politica> politicas;
    private List<Reservacion> reservas;
    private String latitud;
    private String longitud;

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

    public String getTituloDescripcion() {
        return tituloDescripcion;
    }

    public void setTituloDescripcion(String tituloDescripcion) {
        this.tituloDescripcion = tituloDescripcion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public String getCoordenadas() {
        return coordenadas;
    }

    public void setCoordenadas(String coordenadas) {
        this.coordenadas = coordenadas;
    }

    public String getDetalleUbicacion() {
        return detalleUbicacion;
    }

    public void setDetalleUbicacion(String detalleUbicacion) {
        this.detalleUbicacion = detalleUbicacion;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public Ciudad getCiudad() {
        return ciudad;
    }

    public void setCiudad(Ciudad ciudad) {
        this.ciudad = ciudad;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public List getImagenes() {
        return imagenes;
    }

    public void setImagenes(List imagenes) {
        this.imagenes = imagenes;
    }

    public Set getCaracteristicas() {
        return caracteristicas;
    }

    public void setCaracteristicas(Set caracteristicas) {
        this.caracteristicas = caracteristicas;
    }

    public List getPuntajes() {
        return puntajes;
    }

    public void setPuntajes(List puntajes) {
        this.puntajes = puntajes;
    }

    public List getPoliticas() {
        return politicas;
    }

    public void setPoliticas(List politicas) {
        this.politicas = politicas;
    }

    public List getReservas() {
        return reservas;
    }

    public void setReservas(List reservas) {
        this.reservas = reservas;
    }

    public String getLatitud() {
        return latitud;
    }

    public void setLatitud(String latitud) {
        this.latitud = latitud;
    }

    public String getLongitud() {
        return longitud;
    }

    public void setLongitud(String longitud) {
        this.longitud = longitud;
    }
}
