package com.dh.proyectointegrador.DigitalBooking.repository;

import com.dh.proyectointegrador.DigitalBooking.model.Usuarios;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface IUsuariosRepository extends JpaRepository<Usuarios,Long> {
    Optional<Usuarios> findByEmail(String email);
}
