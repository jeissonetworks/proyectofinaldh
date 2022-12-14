package com.dh.proyectointegrador.DigitalBooking.controller;

import com.dh.proyectointegrador.DigitalBooking.model.CategoriaDTO;
import com.dh.proyectointegrador.DigitalBooking.service.ICategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@RestController
@RequestMapping("/categorias")
@CrossOrigin
public class CategoriasController {

    @Autowired
    ICategoriaService categoriasService;

    @PostMapping
    public ResponseEntity<?> crearCategoria(@RequestBody CategoriaDTO categoriaDTO){
        categoriasService.CrearCategoria(categoriaDTO);
        return ResponseEntity.ok(HttpStatus.OK);
    }

    @GetMapping("/{categoriaId}")
    public CategoriaDTO obtenerCategoria(@PathVariable Long categoriaId){
        return categoriasService.ObtenerCategoria(categoriaId);
    }

    @PutMapping
    public ResponseEntity<?> actualizarCategoria(@RequestBody CategoriaDTO categoriaDTO){
        categoriasService.ActualizarCategoria(categoriaDTO);
        return ResponseEntity.ok(HttpStatus.OK);
    }

    @DeleteMapping("/{categoriaId}")
    public ResponseEntity<?> eliminarCategoria(@PathVariable Long categoriaId){
        categoriasService.EliminarCategoria(categoriaId);
        return ResponseEntity.ok(HttpStatus.OK);
    }

    @GetMapping
    public Collection<CategoriaDTO> obtenerTodos(){
        return categoriasService.ObtenerTodos();
    }
}
