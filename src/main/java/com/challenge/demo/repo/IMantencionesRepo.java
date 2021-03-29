package com.challenge.demo.repo;

import com.challenge.demo.model.Mantenciones;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IMantencionesRepo extends JpaRepository<Mantenciones, Integer> {

    @Query(value = "select m2.id, m2.descripcion, m2.fecha from mantenciones m2 inner join mantenciones_historial_vehiculo mhv on \n" +
            "m2.id = mhv.id_mantenciones_historial inner join vehiculo v2 on mhv.id_vehiculo = v2.id where v2.patente = ?1", nativeQuery = true)
    List<Mantenciones> findByPatente(String patente);
}
