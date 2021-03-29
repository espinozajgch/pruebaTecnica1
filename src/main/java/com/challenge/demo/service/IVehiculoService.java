package com.challenge.demo.service;

import com.challenge.demo.model.Vehiculo;

import java.util.List;

public interface IVehiculoService {

    void guardar(Vehiculo vehiculo);
    void eliminar(Integer idVehiculo);
    void eliminarPorPatente(String patente);

    List<Vehiculo> buscarTodos();
    Vehiculo buscarPorId(Integer idVehiculo);
    Vehiculo buscarPorPatente(String patente);

}
