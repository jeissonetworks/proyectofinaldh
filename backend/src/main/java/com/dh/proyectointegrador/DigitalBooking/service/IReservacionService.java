package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.ReservacionDTO;

import java.util.Collection;
import java.util.List;
import java.util.Set;

public interface IReservacionService {
    void CrearReservacion(ReservacionDTO reservacionDTO);

    ReservacionDTO ObtenerReservacion(long l);

    void ActualizarReservacion(ReservacionDTO reservacionDTO);

    void EliminarReservacion(Long reservacionId);

    Set<ReservacionDTO> ObtenerTodos();

    List<ReservacionDTO> ObtenerReservacionPorProducto(Long productId);

    List<ReservacionDTO> ObtenerReservacionPorUsuario(Long usuarioId);
}
