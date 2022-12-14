package com.dh.proyectointegrador.DigitalBooking.controller;

import com.dh.proyectointegrador.DigitalBooking.model.UsuariosDTO;
import com.dh.proyectointegrador.DigitalBooking.service.IUsuarioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;

@RestController
@RequestMapping("/usuarios")
@CrossOrigin
public class UsuariosController {

    @Autowired
    IUsuarioService usuarioService;

    @PostMapping
    public ResponseEntity<?> crearusuario(@RequestBody UsuariosDTO UsuariosDTO){
        usuarioService.CrearUsuario(UsuariosDTO);
        return new ResponseEntity<>(
                "Ok",
                HttpStatus.CREATED);
    }

    @GetMapping("/{usuarioId}")
    public UsuariosDTO obtenerusuario(@PathVariable Long usuarioId){
        return usuarioService.ObtenerUsuario(usuarioId);
    }

    @PutMapping
    public ResponseEntity<?> actualizarusuario(@RequestBody UsuariosDTO UsuariosDTO){
        usuarioService.ActualizarUsuario(UsuariosDTO);
        return ResponseEntity.ok(HttpStatus.OK);
    }

    @DeleteMapping("/{usuarioId}")
    public ResponseEntity<?> eliminarusuario(@PathVariable Long usuarioId){
        usuarioService.EliminarUsuario(usuarioId);
        return ResponseEntity.ok(HttpStatus.OK);
    }

    @GetMapping
    public Collection<UsuariosDTO> obtenerTodos(){
        return usuarioService.ObtenerTodos();
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public ResponseEntity<?> user() throws Exception{
        UserDetails userDatails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        UsuariosDTO usuario = new UsuariosDTO();
        usuario.setEmail(userDatails.getUsername());
        return ResponseEntity.ok(usuario);
    }

}
