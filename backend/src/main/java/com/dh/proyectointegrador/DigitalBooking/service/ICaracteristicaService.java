package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.CaracteristicaDTO;

import java.util.Set;

public interface ICaracteristicaService {
    void CrearCaracteristica(CaracteristicaDTO ciudadDTO);

    CaracteristicaDTO ObtenerCaracteristica(long l);

    void ActualizarCaracteristica(CaracteristicaDTO ciudadDTO);

    void EliminarCaracteristica(Long ciudadId);

    Set<CaracteristicaDTO> ObtenerTodos();
}
