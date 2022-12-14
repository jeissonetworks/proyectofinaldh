package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.PoliticaDTO;

import java.util.Set;

public interface IPoliticaService {
    void CrearPolitica(PoliticaDTO politicaDTO);

    PoliticaDTO ObtenerPolitica(long l);

    void ActualizarPolitica(PoliticaDTO politicaDTO);

    void EliminarPolitica(Long politicaId);

    Set<PoliticaDTO> ObtenerTodos();
}
