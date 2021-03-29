package com.challenge.demo.service;

import com.challenge.demo.model.Mantenciones;
import com.challenge.demo.model.Vehiculo;

import java.util.List;

public interface IMantencionesService {

    void guardar(Mantenciones mantenciones);
    void eliminar(Integer idMantencion);
    void eliminarPorPatente(String patente);

    List<Mantenciones> buscarTodos();
    Mantenciones buscarPorId(Integer idMantecion);
    List<Mantenciones> buscarPorPatente(String patente);
}
