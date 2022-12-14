package com.dh.proyectointegrador.DigitalBooking.model;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

@Entity
@Table(name = "Productos")
public class Producto {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre;
    private String tituloDescripcion;
    @Lob
    @Column
    private String descripcion;
    private String ubicacion;
    private String detalleUbicacion;
    private String latitud;
    private String longitud;

    @ManyToOne
    @JoinColumn(name = "categoria_id", nullable = false)
    private Categoria categoria;

    @ManyToOne
    @JoinColumn(name = "ciudad_id", nullable = false)
    private Ciudad ciudad;

    @OneToMany( cascade = CascadeType.ALL,
            orphanRemoval = true,
            mappedBy = "producto" )
    private List<Imagen> imagenes;

    @ManyToMany(targetEntity= Caracteristica.class)
    @JoinTable(
            name = "productos_caracteristicas",
            joinColumns = @JoinColumn(name = "producto_id"),
            inverseJoinColumns = @JoinColumn(name = "caracteristica_id"))
    private Set<Caracteristica> caracteristicas;

    @OneToMany( mappedBy = "producto" )
    private List<Puntaje> puntajes;

    @OneToMany(cascade = CascadeType.ALL,
            orphanRemoval = true,
            mappedBy = "producto" )
    private List<Politica> politicas;

    @OneToMany( cascade = CascadeType.ALL,
            orphanRemoval = true,
            mappedBy = "producto" )
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

    public String getDetalleUbicacion() {
        return detalleUbicacion;
    }

    public void setDetalleUbicacion(String detalleUbicacion) {
        this.detalleUbicacion = detalleUbicacion;
    }

    public Categoria getCategoria() {
        return categoria;
    }

    public void setCategoria(Categoria categoria) {
        this.categoria = categoria;
    }

    public Ciudad getCiudad() {
        return ciudad;
    }

    public void setCiudad(Ciudad ciudad) {
        this.ciudad = ciudad;
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
