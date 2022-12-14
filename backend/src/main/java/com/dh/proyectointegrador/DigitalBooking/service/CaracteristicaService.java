package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.Caracteristica;
import com.dh.proyectointegrador.DigitalBooking.model.CaracteristicaDTO;
import com.dh.proyectointegrador.DigitalBooking.repository.ICaracteristicasRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class CaracteristicaService implements ICaracteristicaService {
    @Autowired
    private ICaracteristicasRepository caracteristicaRepository;
    @Autowired
    private ObjectMapper mapper;

    @Override
    public void CrearCaracteristica(CaracteristicaDTO caracteristicaDTO) {GuardarCaracteristica(caracteristicaDTO);}

    private void GuardarCaracteristica(CaracteristicaDTO caracteristicaDTO) {
        Caracteristica caracteristica= mapper.convertValue(caracteristicaDTO, Caracteristica.class);
        caracteristicaRepository.save(caracteristica);
    }

    @Override
    public CaracteristicaDTO ObtenerCaracteristica(long caracteristicaId) {
        Optional<Caracteristica> caracteristica = caracteristicaRepository.findById(caracteristicaId);
        CaracteristicaDTO caracteristicaDTO = new CaracteristicaDTO();
        if(caracteristica.isPresent()){
            caracteristicaDTO = mapper.convertValue(caracteristica, CaracteristicaDTO.class);
        }
        return caracteristicaDTO;
    }

    @Override
    public void ActualizarCaracteristica(CaracteristicaDTO caracteristicaDTO) {
        GuardarCaracteristica(caracteristicaDTO);
    }

    @Override
    public void EliminarCaracteristica(Long caracteristicaId) {
        caracteristicaRepository.deleteById(caracteristicaId);
    }

    @Override
    public Set<CaracteristicaDTO> ObtenerTodos() {
        List<Caracteristica> caracteristicas = caracteristicaRepository.findAll();
        Set<CaracteristicaDTO> caracteristicasDTO = new HashSet<>();
        for (Caracteristica caracteristica: caracteristicas) {
            CaracteristicaDTO caracteristicaDTO = mapper.convertValue(caracteristica,CaracteristicaDTO.class);
            caracteristicasDTO.add(caracteristicaDTO);
        }
        return caracteristicasDTO;
    }
}
