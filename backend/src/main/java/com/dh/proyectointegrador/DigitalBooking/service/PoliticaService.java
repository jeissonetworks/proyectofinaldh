package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.Politica;
import com.dh.proyectointegrador.DigitalBooking.model.PoliticaDTO;
import com.dh.proyectointegrador.DigitalBooking.repository.IPoliticasRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Service
public class PoliticaService implements IPoliticaService {
    @Autowired
    private IPoliticasRepository politicaRepository;
    @Autowired
    private ObjectMapper mapper;

    @Override
    public void CrearPolitica(PoliticaDTO politicaDTO) {GuardarPolitica(politicaDTO);}

    private void GuardarPolitica(PoliticaDTO politicaDTO) {
        Politica politica= mapper.convertValue(politicaDTO, Politica.class);
        politicaRepository.save(politica);
    }

    @Override
    public PoliticaDTO ObtenerPolitica(long politicaId) {
        Optional<Politica> politica = politicaRepository.findById(politicaId);
        PoliticaDTO politicaDTO = new PoliticaDTO();
        if(politica.isPresent()){
            politicaDTO = mapper.convertValue(politica, PoliticaDTO.class);
        }
        return politicaDTO;
    }

    @Override
    public void ActualizarPolitica(PoliticaDTO politicaDTO) {
        GuardarPolitica(politicaDTO);
    }

    @Override
    public void EliminarPolitica(Long politicaId) {
        politicaRepository.deleteById(politicaId);
    }

    @Override
    public Set<PoliticaDTO> ObtenerTodos() {
        List<Politica> politicas = politicaRepository.findAll();
        Set<PoliticaDTO> politicasDTO = new HashSet<>();
        for (Politica politica: politicas) {
            PoliticaDTO politicaDTO = mapper.convertValue(politica,PoliticaDTO.class);
            politicasDTO.add(politicaDTO);
        }
        return politicasDTO;
    }
}
