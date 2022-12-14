package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.PuntajeDTO;

import java.util.Set;

public interface IPuntajeService {
    void CrearPuntaje(PuntajeDTO puntajeDTO);

    PuntajeDTO ObtenerPuntaje(long l);

    void ActualizarPuntaje(PuntajeDTO puntajeDTO);

    void EliminarPuntaje(Long puntajeId);

    Set<PuntajeDTO> ObtenerTodos();
}
