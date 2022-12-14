package com.dh.proyectointegrador.DigitalBooking.repository;

import com.dh.proyectointegrador.DigitalBooking.model.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ICategoriasRepository extends JpaRepository<Categoria,Long> {
}
