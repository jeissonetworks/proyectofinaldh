package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.Categoria;
import com.dh.proyectointegrador.DigitalBooking.model.CategoriaDTO;
import com.dh.proyectointegrador.DigitalBooking.repository.ICategoriasRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class CategoriaService implements ICategoriaService {
    @Autowired
    private ICategoriasRepository categoriaRepository;
    @Autowired
    private ObjectMapper mapper;

    @Override
    public void CrearCategoria(CategoriaDTO categoriaDTO) {GuardarCategoria(categoriaDTO);}

    private void GuardarCategoria(CategoriaDTO categoriaDTO) {
        Categoria categoria= mapper.convertValue(categoriaDTO, Categoria.class);
        categoriaRepository.save(categoria);
    }

    @Override
    public CategoriaDTO ObtenerCategoria(long categoriaId) {
        Optional<Categoria> categoria = categoriaRepository.findById(categoriaId);
        CategoriaDTO categoriaDTO = new CategoriaDTO();
        if(categoria.isPresent()){
            categoriaDTO = mapper.convertValue(categoria, CategoriaDTO.class);
        }
        return categoriaDTO;
    }

    @Override
    public void ActualizarCategoria(CategoriaDTO categoriaDTO) {
        GuardarCategoria(categoriaDTO);
    }

    @Override
    public void EliminarCategoria(Long categoriaId) {
        categoriaRepository.deleteById(categoriaId);
    }

    @Override
    public List<CategoriaDTO> ObtenerTodos() {
        List<Categoria> categorias = categoriaRepository.findAll(Sort.by(Sort.Direction.ASC,"id"));
        List<CategoriaDTO> categoriasDTO = new ArrayList<>();
        for (Categoria categoria: categorias) {
            CategoriaDTO categoriaDTO = mapper.convertValue(categoria,CategoriaDTO.class);
            categoriasDTO.add(categoriaDTO);
        }
        return categoriasDTO;
    }
}
