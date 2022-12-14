package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.CategoriaDTO;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.TestPropertySource;

import java.util.List;
import java.util.stream.Collectors;

import static org.junit.jupiter.api.Assertions.assertEquals;

@SpringBootTest
@TestPropertySource(locations="/application-test.properties")
public class CategoriasServiceTest {

    @Autowired
    ICategoriaService categoriasService;

    @Test
    @Order(1)
    public void testCrearCategoria() {
        CategoriaDTO categoriaDTO = new CategoriaDTO();
        categoriaDTO.setTitulo("Coche de Lujo");
        categoriaDTO.setDescripcion("Coches de lujo");
        categoriaDTO.setImagenUrl("https://unsplash.com/photos/i4oWVdzQdqQ");

        categoriasService.CrearCategoria(categoriaDTO);

        CategoriaDTO categoriaCoche = categoriasService.ObtenerCategoria(1L);

        assertEquals(1L,categoriaCoche.getId());
    }

    @Test
    @Order(2)
    public void testEditarCategoria() {
        String descripcionCategoria = "Carro antiguo de lujo";

        CategoriaDTO categoriaCoche = categoriasService.ObtenerCategoria(1L);
        categoriaCoche.setDescripcion(descripcionCategoria);
        categoriasService.ActualizarCategoria(categoriaCoche);

        categoriaCoche = categoriasService.ObtenerCategoria(1L);

        assertEquals(1L,categoriaCoche.getId());
        assertEquals(descripcionCategoria,categoriaCoche.getDescripcion());
    }

    @Test
    @Order(3)
    public void testObtenerTodosCategoria() {
        CategoriaDTO categoriaDTO = new CategoriaDTO();
        categoriaDTO.setTitulo("Carro de Lujo 2");
        categoriaDTO.setDescripcion("Carro antiguo de lujo");
        categoriaDTO.setImagenUrl("https://unsplash.com/photos/i4oWVdzQdqQ");
        categoriasService.CrearCategoria(categoriaDTO);

        List<CategoriaDTO> categorias = categoriasService.ObtenerTodos();

        assertEquals(2,categorias.size());

        assertEquals(1,categorias.stream().filter(c -> c.getId()==1L).collect(Collectors.toList()).size());
        assertEquals(1,categorias.stream().filter(c -> c.getId()==2L).collect(Collectors.toList()).size());
    }
}
