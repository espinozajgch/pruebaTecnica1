package com.challenge.demo.service;

import com.challenge.demo.model.Mantenciones;
import com.challenge.demo.model.Vehiculo;
import com.challenge.demo.repo.IMantencionesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MantencionesServiceImpl implements IMantencionesService {

    @Autowired
    IMantencionesRepo repo;

    @Override
    public void guardar(Mantenciones mantenciones) {
        repo.save(mantenciones);
    }

    @Override
    public void eliminar(Integer idMantencion) {
        repo.deleteById(idMantencion);
    }

    @Override
    public void eliminarPorPatente(String patente) {

    }

    @Override
    public List<Mantenciones> buscarTodos() {
        return repo.findAll();
    }

    @Override
    public Mantenciones buscarPorId(Integer idMantecion) {
        return repo.findById(idMantecion).get();
    }

    @Override
    public List<Mantenciones> buscarPorPatente(String patente) {
        return repo.findByPatente(patente);
    }
}
