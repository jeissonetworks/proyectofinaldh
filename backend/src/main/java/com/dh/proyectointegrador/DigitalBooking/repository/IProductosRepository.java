package com.dh.proyectointegrador.DigitalBooking.repository;

import com.dh.proyectointegrador.DigitalBooking.model.Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Calendar;
import java.util.List;

@Repository
public interface IProductosRepository extends JpaRepository<Producto,Long> {

    @Query(value="SELECT p.* FROM productos p " +
            "WHERE p.id NOT IN " +
            "(SELECT r.producto_id r FROM reservaciones r WHERE r.fecha_inicial <= ?2 AND r.fecha_final >= ?1)",
           nativeQuery = true)
    List<Producto> findByDates(Calendar rangoInicial, Calendar rangoFinal);

    @Query(value="SELECT p.* FROM productos p " +
            "WHERE p.id NOT IN " +
            "(SELECT r.producto_id r FROM reservaciones r WHERE r.fecha_inicial <= ?3 AND r.fecha_final >= ?2)" +
            "AND p.ciudad_id = ?1",
            nativeQuery = true)
    List<Producto> findByCityAndDates(Long ciudadId, Calendar rangoInicial, Calendar rangoFinal);
}
