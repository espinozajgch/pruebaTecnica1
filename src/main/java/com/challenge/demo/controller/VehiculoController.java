package com.challenge.demo.controller;

import com.challenge.demo.model.Vehiculo;
import com.challenge.demo.service.VehiculoServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/vehiculo")
public class VehiculoController {
    private static final Logger LOGGER = LoggerFactory.getLogger(VehiculoController.class);

    @Autowired
    private VehiculoServiceImpl vehiculoService;

    @GetMapping("/")
    public List<Vehiculo> getAll(){
        return vehiculoService.buscarTodos();
    }

    @GetMapping("/{id}")
    public Vehiculo getById(@PathVariable("id") int id){
        return vehiculoService.buscarPorId(id);
    }

    @GetMapping("/patente/{patente}")
    public Vehiculo getByPatente(@PathVariable("patente") String patente){
        return vehiculoService.buscarPorPatente(patente);
    }

    @PostMapping("/")
    public Vehiculo create(@RequestBody Vehiculo vehiculo){
        vehiculoService.guardar(vehiculo);
        return vehiculo;
    }

    @PutMapping(value="/")
    public Vehiculo update(@RequestBody Vehiculo vehiculo){
        vehiculoService.guardar(vehiculo);
        return vehiculo;
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable("id") int id){
        vehiculoService.eliminar(id);
        return new ResponseEntity<>("Registro Eliminado!", HttpStatus.OK);
    }

    @DeleteMapping("/patente/{patente}")
    public ResponseEntity<String> deleteByPatente(@PathVariable("patente") String patente){
        vehiculoService.eliminarPorPatente(patente);
        return new ResponseEntity<>("Registro Eliminado!", HttpStatus.OK);
    }

}
