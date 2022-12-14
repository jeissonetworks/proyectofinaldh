package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.ImagenDTO;

import java.util.Set;

public interface IImagenService {
    void CrearImagen(ImagenDTO imagendDTO);

    ImagenDTO ObtenerImagen(long l);

    void ActualizarImagen(ImagenDTO imagendDTO);

    void EliminarImagen(Long imagendId);

    Set<ImagenDTO> ObtenerTodos();
}
