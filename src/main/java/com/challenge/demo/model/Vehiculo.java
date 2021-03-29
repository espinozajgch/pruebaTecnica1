package com.challenge.demo.model;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.util.List;

@Entity
public class Vehiculo {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(columnDefinition = "serial")
    private int id;

    @Column(name = "marca", length = 20)
    private String marca;

    @Column(name = "modelo", length = 20)
    private String modelo;

    @Column(name = "patente", length = 15, nullable = false, unique = true)
    private String patente;

    @Column(name = "año", length = 4)
    private String año;

    @Column(name = "kilometraje", length = 10)
    private Double kilometraje;

    @Column(name = "cilindrada", length = 10)
    private String cilindrada;

    @Column(name = "descripcion", length = 20)
    private String descripcion;

    @OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    /*JPA Join Fetch es una de las opciones de las que dispone el estándar de JPA a la hora de reducir el número de consultas que se generan contra la base de datos.*/
    @JoinTable(name = "CaracteristicasVehiculo", // tabla intermedia
            joinColumns = @JoinColumn(name = "idVehiculo", nullable = false, referencedColumnName="id"), // foreignKey en la tabla de CurriculumVitae
            inverseJoinColumns = @JoinColumn(name = "idCaracteristica", nullable = false, referencedColumnName="id") // foreignKey en la tabla de Training
    )
    private List<Caracteristicas> caracteristicas;

    @OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.ALL)
    @Fetch(value = FetchMode.SUBSELECT)
    /*JPA Join Fetch es una de las opciones de las que dispone el estándar de JPA a la hora de reducir el número de consultas que se generan contra la base de datos.*/
    @JoinTable(name = "mantencionesHistorialVehiculo", // tabla intermedia
            joinColumns = @JoinColumn(name = "idVehiculo", nullable = false, referencedColumnName="id"), // foreignKey en la tabla de CurriculumVitae
            inverseJoinColumns = @JoinColumn(name = "idMantencionesHistorial", nullable = false, referencedColumnName="id") // foreignKey en la tabla de Training
    )
    private List<Mantenciones> mantenciones;

    public int getId() {
        return id;
    }

    public void setId(int id){
        this.id = id;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getPatente() {
        return patente;
    }

    public void setPatente(String patente) {
        this.patente = patente;
    }

    public String getAño() {
        return año;
    }

    public void setAño(String año) {
        this.año = año;
    }

    public Double getKilometraje() {
        return kilometraje;
    }

    public void setKilometraje(Double kilometraje) {
        this.kilometraje = kilometraje;
    }

    public String getCilindrada() {
        return cilindrada;
    }

    public void setCilindrada(String cilindrada) {
        this.cilindrada = cilindrada;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public List<Caracteristicas> getCaracteristicas() {
        return caracteristicas;
    }

    public void setCaracteristicas(List<Caracteristicas> caracteristicas) {
        this.caracteristicas = caracteristicas;
    }

    public List<Mantenciones> getMantenciones() {
        return mantenciones;
    }

    public void setMantenciones(List<Mantenciones> mantenciones) {
        this.mantenciones = mantenciones;
    }
}
