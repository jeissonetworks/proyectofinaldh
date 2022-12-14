package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.ProductoDTO;

import java.util.Calendar;
import java.util.Collection;
import java.util.List;
import java.util.Set;

public interface IProductoService {
    void CrearProducto(ProductoDTO productosDTO);

    ProductoDTO ObtenerProducto(long l);

    void ActualizarProducto(ProductoDTO productosDTO);

    void EliminarProducto(Long productosId);

    Set<ProductoDTO> ObtenerTodos();

    List<ProductoDTO> ObtenerTodos(Long ciudadId);

    List<ProductoDTO> ObtenerDisponiblesPorFechas(String rangoInicial, String rangoFinal);

    List<ProductoDTO> ObtenerDisponiblesPorCiudadYFechas(Long ciudadId, String rangoIni, String rangoFin);
}
