package com.challenge.demo.service;

import com.challenge.demo.model.Vehiculo;
import com.challenge.demo.repo.IVehiculoRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VehiculoServiceImpl implements IVehiculoService{

    @Autowired
    IVehiculoRepo repo;

    @Override
    public void guardar(Vehiculo vehiculo) {
        repo.save(vehiculo);
    }

    @Override
    public void eliminar(Integer idVehiculo) {
        repo.deleteById(idVehiculo);
    }

    @Override
    public void eliminarPorPatente(String patente) {
        repo.deleteByPatente(patente);
    }

    @Override
    public List<Vehiculo> buscarTodos() {
        return repo.findAll();
    }

    @Override
    public Vehiculo buscarPorId(Integer idVehiculo) {
        return repo.findById(idVehiculo).get();
    }

    @Override
    public Vehiculo buscarPorPatente(String patente) {
        return repo.findByPatente(patente);
    }
}
