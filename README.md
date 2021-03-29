## PRUEBA TÉCNICA BACKEND ENGINEER

El servicio implementa una base de datos `PostgreSQL`, de cual se adjunta el dump de la misma

la base de datos la diseñe segun el problema presentando donse se presento una tabla `vehiculos` con sus campos 
para las otras 2 tablas mostradas llamas `automovil` y `camion` me parecio que se podian representar
como caracteristicas asocidas a un vehiculo.

por lo tanto un `vehiculo` tendra un campo llamada `descripcion` que podran ser `automovil`, `camion` u otro
y en la tabla `caracteristicas` estaran (valga a redundacia) cada una de las caracteristicas distintivas de cada `vehiculo`

tambien se implento una tabla llamada mantencion que contendra los registros de las mantenciones realizadas a cada vehiculo

> El servicio se desplegara en el puerto 8080, se puede consultar de la sigiente forma:
>> GET ::
>> `localhost:8080/vehiculo/`
>> se mostrara un listado de vehiculos con sus caracteristicas y mantenciones realizadas.

>para mostrar un vehiculo en particular, se puede consultar por patente
>> GET ::
>> `localhost:8080/vehiculo/patente/{patente}`

>se pueden consultar todas las mantenciones realizadas a un vehiculo
>> GET ::
>> `localhost:8080/mantencion/patente/{patente}`

los endpoints estan implementados bajo la arquitectura de API REST

> INSERT : se regista un vehiculo con los campos basicos
> > POST :: `localhost:8080/vehiculo/`

>´{ "marca": "Toyota",
    "modelo": "4x4",
    "patente": "HFSE-1DS",
    "año": "2020",
    "kilometraje": 500,    
    "cilindrada": "400 cc",
    "descripcion": "Camion"
}`


> UPDATE : utilizando los datos del vehiculo registrado se pueden modificar los mismos y agregar los registros
> de caracteristicas como registros de mantencion
> > PUT :: `localhost:8080/vehiculo/`

{   "id": 1
    "marca": "Toyota",
    "modelo": "4x4",
    "patente": "HFSE-1DS",
    "año": "2020",
    "kilometraje": 50.0,    
    "cilindrada": "400 cc",
    "descripcion": "4x4",
    "caracteristicas": [
        {
            "caracteristica": "Numero de puertas",
            "valor": "4"
        }
    ],
    "mantenciones": [
        {
            "descripcion": "se realizo la reparacion del vehiculo"
        },
        {
            "descripcion": "cambio de neumaticos"
        }
    ]
}`

> DELETE
> > DELETE :: `localhost:8080/vehiculo/1`


Se utilizo la version 3.6.3 de Apache Maven, 1.8 de Java