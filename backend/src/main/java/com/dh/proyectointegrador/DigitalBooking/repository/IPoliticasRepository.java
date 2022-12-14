package com.dh.proyectointegrador.DigitalBooking.repository;

import com.dh.proyectointegrador.DigitalBooking.model.Politica;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IPoliticasRepository extends JpaRepository<Politica,Long> {
}
