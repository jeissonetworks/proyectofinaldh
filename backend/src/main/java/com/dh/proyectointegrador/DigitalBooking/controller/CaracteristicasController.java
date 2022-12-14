package com.dh.proyectointegrador.DigitalBooking.controller;

import com.dh.proyectointegrador.DigitalBooking.model.CaracteristicaDTO;
import com.dh.proyectointegrador.DigitalBooking.model.CategoriaDTO;
import com.dh.proyectointegrador.DigitalBooking.service.ICaracteristicaService;
import com.dh.proyectointegrador.DigitalBooking.service.ICategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@RestController
@RequestMapping("/caracteristicas")
@CrossOrigin
public class CaracteristicasController {

    @Autowired
    ICaracteristicaService caracteristicasService;

    @GetMapping("/{caracteristicaId}")
    public CaracteristicaDTO obtenerCaracteristica(@PathVariable Long caracteristicaId){
        return caracteristicasService.ObtenerCaracteristica(caracteristicaId);
    }

    @GetMapping
    public Collection<CaracteristicaDTO> obtenerTodos(){
        return caracteristicasService.ObtenerTodos();
    }
}
