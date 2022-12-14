package com.dh.proyectointegrador.DigitalBooking.controller;

import com.dh.proyectointegrador.DigitalBooking.model.ProductoDTO;
import com.dh.proyectointegrador.DigitalBooking.service.IProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@RestController
@RequestMapping("/productos")
@CrossOrigin
public class ProductosController {

    @Autowired
    IProductoService productoService;

    @PostMapping
    public ResponseEntity<?> crearProducto(@RequestBody ProductoDTO productoDTO){
        productoService.CrearProducto(productoDTO);
        return ResponseEntity.ok(HttpStatus.OK);
    }

    @GetMapping("/{productoId}")
    public ProductoDTO obtenerProducto(@PathVariable Long productoId){
        return productoService.ObtenerProducto(productoId);
    }

    @PutMapping
    public ResponseEntity<?> actualizarProducto(@RequestBody ProductoDTO productoDTO){
        productoService.ActualizarProducto(productoDTO);
        return ResponseEntity.ok(HttpStatus.OK);
    }

    @DeleteMapping("/{productoId}")
    public ResponseEntity<?> eliminarProducto(@PathVariable Long productoId){
        productoService.EliminarProducto(productoId);
        return ResponseEntity.ok(HttpStatus.OK);
    }

    @GetMapping
    public Collection<ProductoDTO> obtenerTodos(){
        return productoService.ObtenerTodos();
    }

    @GetMapping("/ciudad/{ciudadId}")
    public Collection<ProductoDTO> obtenerTodosPorCiudad(@PathVariable Long ciudadId){
        return productoService.ObtenerTodos(ciudadId);
    }

    @GetMapping("/reservas/{rangoIni}/{rangoFin}")
    public Collection<ProductoDTO> obtenerDisponiblesPorFechas(@PathVariable String rangoIni, @PathVariable String rangoFin){
        return productoService.ObtenerDisponiblesPorFechas(rangoIni, rangoFin);
    }

    @GetMapping("/reservas/{ciudadId}/{rangoIni}/{rangoFin}")
    public Collection<ProductoDTO> obtenerDisponiblesPorCiudadYFechas(@PathVariable Long ciudadId, @PathVariable String rangoIni, @PathVariable String rangoFin){
        return productoService.ObtenerDisponiblesPorCiudadYFechas(ciudadId, rangoIni, rangoFin);
    }
}
