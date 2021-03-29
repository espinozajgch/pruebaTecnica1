package com.challenge.demo.controller;

import com.challenge.demo.model.Mantenciones;
import com.challenge.demo.model.Vehiculo;
import com.challenge.demo.service.MantencionesServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/mantencion")
public class MantencionController {
    private static final Logger LOGGER = LoggerFactory.getLogger(MantencionController.class);

    @Autowired
    private MantencionesServiceImpl mantencionesService;

    @GetMapping("/")
    public List<Mantenciones> getAll(){
        return mantencionesService.buscarTodos();
    }

    @GetMapping("/{id}")
    public Mantenciones getById(@PathVariable("id") int id){
        return mantencionesService.buscarPorId(id);
    }

    @GetMapping("/patente/{patente}")
    public List<Mantenciones> getByPatente(@PathVariable("patente") String patente){
        return mantencionesService.buscarPorPatente(patente);
    }

    @PostMapping("/")
    public Mantenciones create(@RequestBody Mantenciones mantenciones){
        mantencionesService.guardar(mantenciones);
        return mantenciones;
    }

    @PutMapping(value="/")
    public Mantenciones update(@RequestBody Mantenciones mantenciones){
        mantencionesService.guardar(mantenciones);
        return mantenciones;
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> delete(@PathVariable("id") int id){
        mantencionesService.eliminar(id);
        return new ResponseEntity<>("Registro Eliminado!", HttpStatus.OK);
    }

}
