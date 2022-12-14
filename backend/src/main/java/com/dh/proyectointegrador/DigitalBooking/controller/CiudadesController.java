package com.dh.proyectointegrador.DigitalBooking.controller;

import com.dh.proyectointegrador.DigitalBooking.model.CiudadDTO;
import com.dh.proyectointegrador.DigitalBooking.service.ICiudadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@RestController
@RequestMapping("/ciudades")
@CrossOrigin
public class CiudadesController {

    @Autowired
    ICiudadService CiudadesService;

    @GetMapping("/{ciudadId}")
    public CiudadDTO obtenerCiudad(@PathVariable Long ciudadId){
        return CiudadesService.ObtenerCiudad(ciudadId);
    }

    @GetMapping
    public Collection<CiudadDTO> obtenerTodos(){
        return CiudadesService.ObtenerTodos();
    }
}
