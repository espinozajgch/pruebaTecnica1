package com.challenge.demo.repo;

import com.challenge.demo.model.Vehiculo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IVehiculoRepo extends JpaRepository<Vehiculo, Integer> {

    Vehiculo findByPatente(String patente);
    void deleteByPatente(String patente);

}
