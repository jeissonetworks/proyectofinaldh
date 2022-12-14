package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.CategoriaDTO;

import java.util.List;

public interface ICategoriaService {
    void CrearCategoria(CategoriaDTO categoriaDTO);

    CategoriaDTO ObtenerCategoria(long l);

    void ActualizarCategoria(CategoriaDTO categoriaDTO);

    void EliminarCategoria(Long categoriaId);

    List<CategoriaDTO> ObtenerTodos();
}
