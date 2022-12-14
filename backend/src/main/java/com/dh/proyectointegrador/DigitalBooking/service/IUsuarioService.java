package com.dh.proyectointegrador.DigitalBooking.service;

import com.dh.proyectointegrador.DigitalBooking.model.ProductoDTO;
import com.dh.proyectointegrador.DigitalBooking.model.UsuariosDTO;

import java.util.List;
import java.util.Set;

public interface IUsuarioService {
    void CrearUsuario(UsuariosDTO usuariosDTO);

    UsuariosDTO ObtenerUsuario(long l);

    void ActualizarUsuario(UsuariosDTO usuariosDTO);

    void EliminarUsuario(Long usuariosId);

    Set<UsuariosDTO> ObtenerTodos();

}
