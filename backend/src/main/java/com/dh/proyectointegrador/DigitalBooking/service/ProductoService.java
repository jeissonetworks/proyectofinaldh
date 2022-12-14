package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.*;
import com.dh.proyectointegrador.DigitalBooking.repository.ICiudadesRepository;
import com.dh.proyectointegrador.DigitalBooking.repository.IProductosRepository;
import com.dh.proyectointegrador.DigitalBooking.util.CalendarUtil;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ProductoService implements IProductoService {
    @Autowired
    private IProductosRepository productoRepository;
    @Autowired
    private ObjectMapper mapper;
    @Autowired
    private ICiudadesRepository ciudadRepository;
    private String mensajeAuxiliar = "";

    @Override
    public void CrearProducto(ProductoDTO productoDTO) {
        GuardarProducto(productoDTO);
    }

    private void GuardarProducto(ProductoDTO productoDTO) {
        Producto producto = mapper.convertValue(productoDTO, Producto.class);

        Set<Caracteristica> caracteristicas = mapper.convertValue(productoDTO.getCaracteristicas(), new TypeReference<HashSet<Caracteristica>>() { });
        producto.setCaracteristicas(caracteristicas);

        List<Politica> politicas = mapper.convertValue(productoDTO.getPoliticas(), new TypeReference<ArrayList<Politica>>() { });
        for (Politica politica: politicas) { politica.setProducto(producto); }
        producto.setPoliticas(politicas);

        List<Reservacion> reservas = mapper.convertValue(productoDTO.getReservas(), new TypeReference<ArrayList<Reservacion>>() { });
        if (reservas != null) for (Reservacion reserva: reservas) { reserva.setProducto(producto); }
        producto.setReservas(reservas);

        List<Imagen> imagenes = mapper.convertValue(productoDTO.getImagenes(), new TypeReference<ArrayList<Imagen>>() { });
        for (Imagen imagen: imagenes) { imagen.setProducto(producto); }
        producto.setImagenes(imagenes);

        producto = productoRepository.save(producto);
    }

    @Override
    public ProductoDTO ObtenerProducto(long productoId) {
        Optional<Producto> producto = productoRepository.findById(productoId);
        ProductoDTO productoDTO = new ProductoDTO();
        if (producto.isPresent()) {
            productoDTO = mapper.convertValue(producto, ProductoDTO.class);
        }
        return productoDTO;
    }

    @Override
    public void ActualizarProducto(ProductoDTO productoDTO) {
        GuardarProducto(productoDTO);
    }

    @Override
    public void EliminarProducto(Long productoId) {
        productoRepository.deleteById(productoId);
    }

    @Override
    public Set<ProductoDTO> ObtenerTodos() {
        List<Producto> productos = productoRepository.findAll();
        Set<ProductoDTO> productosDTO = new HashSet<>();
        for (Producto producto : productos) {
            ProductoDTO productoDTO = mapper.convertValue(producto, ProductoDTO.class);
            productosDTO.add(productoDTO);
        }
        return productosDTO;
    }

    @Override
    public List<ProductoDTO> ObtenerTodos(Long ciudadId) {
        Optional<Ciudad> ciudad = ciudadRepository.findById(ciudadId);
        List<ProductoDTO> productos = new ArrayList<>();

        if (ciudad.isPresent()) {
            for (Producto producto : ciudad.get().getProductos()) {
                productos.add(mapper.convertValue(producto, ProductoDTO.class));
            }
        }
        return productos;
    }

    @Override
    public List<ProductoDTO> ObtenerDisponiblesPorFechas(String rangoInicial, String rangoFinal) {
        Calendar fechaInicial = CalendarUtil.StringToCalendar(rangoInicial);
        Calendar fechaFinal = CalendarUtil.StringToCalendar(rangoFinal);
        if (!ValidarRangoFechas(fechaInicial,fechaFinal)) {
            throw new RuntimeException("Argumento no válido. " + mensajeAuxiliar);
        }
        List<Producto> productos = productoRepository.findByDates(fechaInicial, fechaFinal);
        List<ProductoDTO> productosDTO = new ArrayList<>();
        for (Producto producto : productos) {
            ProductoDTO productoDTO = mapper.convertValue(producto, ProductoDTO.class);
            productosDTO.add(productoDTO);
        }

        return productosDTO;
    }

    @Override
    public List<ProductoDTO> ObtenerDisponiblesPorCiudadYFechas(Long ciudadId, String rangoInicial, String rangoFinal) {
        Calendar fechaInicial = CalendarUtil.StringToCalendar(rangoInicial);
        Calendar fechaFinal = CalendarUtil.StringToCalendar(rangoFinal);
        if (!ValidarRangoFechas(fechaInicial,fechaFinal)) {
            throw new RuntimeException("Argumento no válido. " + mensajeAuxiliar);
        }

        List<Producto> productos = productoRepository.findByCityAndDates(ciudadId, fechaInicial, fechaFinal);
        List<ProductoDTO> productosDTO = new ArrayList<>();
        for (Producto producto : productos) {
            ProductoDTO productoDTO = mapper.convertValue(producto, ProductoDTO.class);
            productosDTO.add(productoDTO);
        }
        return productosDTO;
    }

    private boolean ValidarRangoFechas(Calendar fechaInicial, Calendar fechaFinal) {
        if (fechaInicial.compareTo(fechaFinal)>0){
            this.mensajeAuxiliar = "La fecha inicial es mayor que la final";
            return false;
        }
        return true;
    }
}
