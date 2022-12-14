package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.Producto;
import com.dh.proyectointegrador.DigitalBooking.model.Reservacion;
import com.dh.proyectointegrador.DigitalBooking.model.ReservacionDTO;
import com.dh.proyectointegrador.DigitalBooking.model.Usuarios;
import com.dh.proyectointegrador.DigitalBooking.repository.IProductosRepository;
import com.dh.proyectointegrador.DigitalBooking.repository.IReservacionesRepository;
import com.dh.proyectointegrador.DigitalBooking.repository.IUsuariosRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ReservacionService implements IReservacionService {
    @Autowired
    private IReservacionesRepository reservacionRepository;

    @Autowired
    private IProductosRepository productoRepository;

    @Autowired
    private IUsuariosRepository usuarioRepository;

    @Autowired
    private ObjectMapper mapper;

    private String mensajeAuxiliar = "";

    @Override
    public void CrearReservacion(ReservacionDTO reservacionDTO) {GuardarReservacion(reservacionDTO);}

    private void GuardarReservacion(ReservacionDTO reservacionDTO) {
        Reservacion reservacion= mapper.convertValue(reservacionDTO, Reservacion.class);
        reservacion.setProducto(reservacionDTO.getProducto());
        reservacion.setUsuarios(reservacionDTO.getUsuarios());

        if (!ValidarReserva(reservacion))
            throw new RuntimeException("Argumento no válido. " + mensajeAuxiliar);
        reservacionRepository.save(reservacion);
    }

    private boolean ValidarReserva(Reservacion reservacion) {
        this.mensajeAuxiliar="";

        if (!productoRepository.existsById(reservacion.getProducto().getId())){
             mensajeAuxiliar="El producto con Id " + reservacion.getProducto().getId() + " no existe";
             return false;
        }

        if (!usuarioRepository.existsById(reservacion.getUsuarios().getId())){
            mensajeAuxiliar="El usuario con Id " + reservacion.getUsuarios().getId() + " no existe";
            return false;
        }

        if (reservacion.getFechaFinal().compareTo(reservacion.getFechaInicial())<0)
        {
            mensajeAuxiliar="La fecha final es inferior a la fecha inicial";
            return false;
        }

        return true;
    }

    @Override
    public ReservacionDTO ObtenerReservacion(long reservacionId) {
        Optional<Reservacion> reservacion = reservacionRepository.findById(reservacionId);
        ReservacionDTO reservacionDTO = new ReservacionDTO();
        if(reservacion.isPresent()){
            reservacionDTO = mapper.convertValue(reservacion, ReservacionDTO.class);
        }
        return reservacionDTO;
    }

    @Override
    public void ActualizarReservacion(ReservacionDTO reservacionDTO) {
        GuardarReservacion(reservacionDTO);
    }

    @Override
    public void EliminarReservacion(Long reservacionId) {
        reservacionRepository.deleteById(reservacionId);
    }

    @Override
    public Set<ReservacionDTO> ObtenerTodos() {
        List<Reservacion> reservaciones = reservacionRepository.findAll();
        Set<ReservacionDTO> reservacionesDTO = new HashSet<>();
        for (Reservacion reservacion: reservaciones) {
            ReservacionDTO reservacionDTO = mapper.convertValue(reservacion,ReservacionDTO.class);
            reservacionesDTO.add(reservacionDTO);
        }
        return reservacionesDTO;
    }

    @Override
    public List<ReservacionDTO> ObtenerReservacionPorProducto(Long productId) {
        Optional<Producto> producto = productoRepository.findById(productId);
        List<ReservacionDTO> reservacionesDTO = new ArrayList<>();
        if (producto.isPresent()){
            List<Reservacion> reservas = producto.get().getReservas();
            for (Reservacion reservacion: reservas) {
                ReservacionDTO reservacionDTO = mapper.convertValue(reservacion,ReservacionDTO.class);
                reservacionesDTO.add(reservacionDTO);
            }
        }
        return reservacionesDTO;
    }

    @Override
    public List<ReservacionDTO> ObtenerReservacionPorUsuario(Long usuarioId) {
        Optional<Usuarios> usuario = usuarioRepository.findById(usuarioId);
        List<ReservacionDTO> reservacionesDTO = new ArrayList<>();
        if (usuario.isPresent()){
            List<Reservacion> reservas = usuario.get().getReservas();
            for (Reservacion reservacion: reservas) {
                ReservacionDTO reservacionDTO = mapper.convertValue(reservacion,ReservacionDTO.class);
                reservacionesDTO.add(reservacionDTO);
            }
        }

        return reservacionesDTO;
    }
}
