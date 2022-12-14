package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.Ciudad;
import com.dh.proyectointegrador.DigitalBooking.model.CiudadDTO;
import com.dh.proyectointegrador.DigitalBooking.repository.ICiudadesRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class CiudadService implements ICiudadService {
    @Autowired
    private ICiudadesRepository ciudadRepository;
    @Autowired
    private ObjectMapper mapper;

    @Override
    public void CrearCiudad(CiudadDTO ciudadDTO) {GuardarCiudad(ciudadDTO);}

    private void GuardarCiudad(CiudadDTO ciudadDTO) {
        Ciudad ciudad= mapper.convertValue(ciudadDTO, Ciudad.class);
        ciudadRepository.save(ciudad);
    }

    @Override
    public CiudadDTO ObtenerCiudad(long ciudadId) {
        Optional<Ciudad> ciudad = ciudadRepository.findById(ciudadId);
        CiudadDTO ciudadDTO = new CiudadDTO();
        if(ciudad.isPresent()){
            ciudadDTO = mapper.convertValue(ciudad, CiudadDTO.class);
        }
        return ciudadDTO;
    }

    @Override
    public void ActualizarCiudad(CiudadDTO ciudadDTO) {
        GuardarCiudad(ciudadDTO);
    }

    @Override
    public void EliminarCiudad(Long ciudadId) {
        ciudadRepository.deleteById(ciudadId);
    }

    @Override
    public List<CiudadDTO> ObtenerTodos() {
        List<Ciudad> ciudades = ciudadRepository.findAll(Sort.by(Sort.Direction.ASC,"id"));
        List<CiudadDTO> ciudadesDTO = new ArrayList<>();
        for (Ciudad ciudad: ciudades) {
            CiudadDTO ciudadDTO = mapper.convertValue(ciudad,CiudadDTO.class);
            ciudadesDTO.add(ciudadDTO);
        }
        return ciudadesDTO;
    }
}
