package com.dh.proyectointegrador.DigitalBooking.repository;

import com.dh.proyectointegrador.DigitalBooking.model.Caracteristica;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICaracteristicasRepository extends JpaRepository<Caracteristica,Long> {
}
