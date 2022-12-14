package com.dh.proyectointegrador.DigitalBooking.controller;

import com.dh.proyectointegrador.DigitalBooking.model.ReservacionDTO;
import com.dh.proyectointegrador.DigitalBooking.model.UsuariosDTO;
import com.dh.proyectointegrador.DigitalBooking.service.IReservacionService;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@RestController
@RequestMapping("/reservas")
@CrossOrigin
@SecurityRequirement(name = "javainuseapi")
public class ReservasController {

    @Autowired
    IReservacionService reservaService;

    @PostMapping
    public ResponseEntity<?> crearReserva(@RequestBody ReservacionDTO reservacionDTO){
        reservaService.CrearReservacion(reservacionDTO);
        return new ResponseEntity<>(
                "Ok",
                HttpStatus.CREATED);
    }

    @GetMapping("/{reservaId}")
    public ReservacionDTO obtenerReserva(@PathVariable Long reservaId){
        return reservaService.ObtenerReservacion(reservaId);
    }

    @PutMapping
    public ResponseEntity<?> actualizarReserva(@RequestBody ReservacionDTO reservacionDTO){
        reservaService.ActualizarReservacion(reservacionDTO);
        return ResponseEntity.ok(HttpStatus.OK);
    }

    @DeleteMapping("/{reservaId}")
    public ResponseEntity<?> eliminarReserva(@PathVariable Long reservaId){
        reservaService.EliminarReservacion(reservaId);
        return ResponseEntity.ok(HttpStatus.OK);
    }

    @GetMapping
    public Collection<ReservacionDTO> obtenerTodos(){
        return reservaService.ObtenerTodos();
    }

    @GetMapping("/producto/{productId}")
    public Collection<ReservacionDTO> obtenerReservaPorProducto(@PathVariable Long productId){
        return reservaService.ObtenerReservacionPorProducto(productId);
    }

    @GetMapping("/usuario/{usuarioId}")
    public Collection<ReservacionDTO> obtenerReservaPorUsuario(@PathVariable Long usuarioId){
        return reservaService.ObtenerReservacionPorUsuario(usuarioId);
    }
}
