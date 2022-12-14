package com.dh.proyectointegrador.DigitalBooking.controller;

import com.dh.proyectointegrador.DigitalBooking.model.AuthenticationRequest;
import com.dh.proyectointegrador.DigitalBooking.model.AuthenticationResponse;
import com.dh.proyectointegrador.DigitalBooking.service.UsuarioService;
import com.dh.proyectointegrador.DigitalBooking.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

@CrossOrigin(origins= {"*"}, maxAge = 4800, allowCredentials = "false" )
@RequestMapping("/authenticate")
@RestController
public class AuthenticationController {
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private UsuarioService userDetailsService;
    @Autowired
    private JwtUtil jwtUtil;

    @PostMapping
    public ResponseEntity<?> createAuthenticationToken(@RequestBody AuthenticationRequest authenticationRequest) throws Exception{
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(authenticationRequest.getUsername(), authenticationRequest.getPassword()));
        }catch (BadCredentialsException e) {
            throw new Exception("Incorrect", e);
        }
        final UserDetails userDetails = userDetailsService.loadUserByUsername(authenticationRequest.getUsername());
        //generamos el token JWT
        final String jwt = jwtUtil.generateToken(userDetails);
        final long userId = ((com.dh.proyectointegrador.DigitalBooking.model.UserDetails)userDetails).getId();
        final String fullName = ((com.dh.proyectointegrador.DigitalBooking.model.UserDetails)userDetails).getFullName();
        final String roleName = ((com.dh.proyectointegrador.DigitalBooking.model.UserDetails)userDetails).getRoleName();

        return ResponseEntity.ok(new AuthenticationResponse(jwt, userId, fullName, roleName));
    }
}
