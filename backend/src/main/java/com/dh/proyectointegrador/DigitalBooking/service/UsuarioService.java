package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.*;
import com.dh.proyectointegrador.DigitalBooking.repository.ICiudadesRepository;
import com.dh.proyectointegrador.DigitalBooking.repository.IUsuariosRepository;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

@Service
@Transactional
public class UsuarioService implements IUsuarioService, UserDetailsService {
    @Autowired
    private IUsuariosRepository usuarioRepository;
    @Autowired
    private ObjectMapper mapper;
    @Autowired
    private ICiudadesRepository ciudadRepository;


    @Override
    public void CrearUsuario(UsuariosDTO usuariosDTO) {GuardarUsuario(usuariosDTO);}

    private void GuardarUsuario(UsuariosDTO usuariosDTO) {
        if (usuarioRepository.findByEmail(usuariosDTO.getEmail()).isPresent()){
            throw new IllegalArgumentException("Ya existe un usuario con el correo " + usuariosDTO.getEmail());
        }

        Usuarios usuario= mapper.convertValue(usuariosDTO, Usuarios.class);
        usuarioRepository.save(usuario);
    }

    @Override
    public UsuariosDTO ObtenerUsuario(long usuarioId) {
        Optional<Usuarios> usuario = usuarioRepository.findById(usuarioId);
        UsuariosDTO usuariosDTO = new UsuariosDTO();
        if(usuario.isPresent()){
            usuariosDTO = mapper.convertValue(usuario, UsuariosDTO.class);
        }
        return usuariosDTO;
    }

    @Override
    public void ActualizarUsuario(UsuariosDTO usuariosDTO) {
        GuardarUsuario(usuariosDTO);
    }

    @Override
    public void EliminarUsuario(Long usuarioId) {
        usuarioRepository.deleteById(usuarioId);
    }

    @Override
    public Set<UsuariosDTO> ObtenerTodos() {
        List<Usuarios> usuarios = usuarioRepository.findAll();
        Set<UsuariosDTO> usuariosDTO = new HashSet<>();
        for (Usuarios Usuarios: usuarios) {
            UsuariosDTO UsuariosDTO = mapper.convertValue(Usuarios,UsuariosDTO.class);
            usuariosDTO.add(UsuariosDTO);
        }
        return usuariosDTO;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<Usuarios> usuario = usuarioRepository.findByEmail(username);

        if (usuario.isEmpty()){
            throw new UsernameNotFoundException("El usuario con email" + username + "no existe");
        }

        return new com.dh.proyectointegrador.DigitalBooking.model.UserDetails(usuario.get());
    }
}