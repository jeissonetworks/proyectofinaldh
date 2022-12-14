package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.Imagen;
import com.dh.proyectointegrador.DigitalBooking.model.ImagenDTO;
import com.dh.proyectointegrador.DigitalBooking.repository.IImagenesRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class ImagenService implements IImagenService {
    @Autowired
    private IImagenesRepository imagenRepository;
    @Autowired
    private ObjectMapper mapper;

    @Override
    public void CrearImagen(ImagenDTO imagenDTO) {GuardarImagen(imagenDTO);}

    private void GuardarImagen(ImagenDTO imagenDTO) {
        Imagen imagen= mapper.convertValue(imagenDTO, Imagen.class);
        imagenRepository.save(imagen);
    }

    @Override
    public ImagenDTO ObtenerImagen(long imagenId) {
        Optional<Imagen> imagen = imagenRepository.findById(imagenId);
        ImagenDTO imagenDTO = new ImagenDTO();
        if(imagen.isPresent()){
            imagenDTO = mapper.convertValue(imagen, ImagenDTO.class);
        }
        return imagenDTO;
    }

    @Override
    public void ActualizarImagen(ImagenDTO imagenDTO) {
        GuardarImagen(imagenDTO);
    }

    @Override
    public void EliminarImagen(Long imagenId) {
        imagenRepository.deleteById(imagenId);
    }

    @Override
    public Set<ImagenDTO> ObtenerTodos() {
        List<Imagen> imagenes = imagenRepository.findAll();
        Set<ImagenDTO> imagenesDTO = new HashSet<>();
        for (Imagen imagen: imagenes) {
            ImagenDTO imagenDTO = mapper.convertValue(imagen,ImagenDTO.class);
            imagenesDTO.add(imagenDTO);
        }
        return imagenesDTO;
    }
}
