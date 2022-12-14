package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.CiudadDTO;

import java.util.List;

public interface ICiudadService {
    void CrearCiudad(CiudadDTO ciudadDTO);

    CiudadDTO ObtenerCiudad(long l);

    void ActualizarCiudad(CiudadDTO ciudadDTO);

    void EliminarCiudad(Long ciudadId);

    List<CiudadDTO> ObtenerTodos();
}
