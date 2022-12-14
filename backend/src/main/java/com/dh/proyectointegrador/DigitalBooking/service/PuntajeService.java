package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.Puntaje;
import com.dh.proyectointegrador.DigitalBooking.model.PuntajeDTO;
import com.dh.proyectointegrador.DigitalBooking.repository.IPuntajesRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class PuntajeService implements IPuntajeService {
    @Autowired
    private IPuntajesRepository puntajeRepository;
    @Autowired
    private ObjectMapper mapper;

    @Override
    public void CrearPuntaje(PuntajeDTO puntajeDTO) {GuardarPuntaje(puntajeDTO);}

    private void GuardarPuntaje(PuntajeDTO puntajeDTO) {
        Puntaje puntaje= mapper.convertValue(puntajeDTO, Puntaje.class);
        puntajeRepository.save(puntaje);
    }

    @Override
    public PuntajeDTO ObtenerPuntaje(long puntajeId) {
        Optional<Puntaje> puntaje = puntajeRepository.findById(puntajeId);
        PuntajeDTO puntajeDTO = new PuntajeDTO();
        if(puntaje.isPresent()){
            puntajeDTO = mapper.convertValue(puntaje, PuntajeDTO.class);
        }
        return puntajeDTO;
    }

    @Override
    public void ActualizarPuntaje(PuntajeDTO puntajeDTO) {
        GuardarPuntaje(puntajeDTO);
    }

    @Override
    public void EliminarPuntaje(Long puntajeId) {
        puntajeRepository.deleteById(puntajeId);
    }

    @Override
    public Set<PuntajeDTO> ObtenerTodos() {
        List<Puntaje> puntajes = puntajeRepository.findAll();
        Set<PuntajeDTO> puntajesDTO = new HashSet<>();
        for (Puntaje puntaje: puntajes) {
            PuntajeDTO puntajeDTO = mapper.convertValue(puntaje,PuntajeDTO.class);
            puntajesDTO.add(puntajeDTO);
        }
        return puntajesDTO;
    }
}
