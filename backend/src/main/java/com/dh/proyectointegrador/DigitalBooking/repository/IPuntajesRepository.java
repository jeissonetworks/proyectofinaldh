package com.dh.proyectointegrador.DigitalBooking.repository;

import com.dh.proyectointegrador.DigitalBooking.model.Puntaje;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IPuntajesRepository extends JpaRepository<Puntaje,Long> {
}
