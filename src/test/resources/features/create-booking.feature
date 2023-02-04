#language:es
Característica: Creación de booking
  Escenario: Crear booking
    Dado que se envía headers
      |atributo|valor|
      |Content-Type|application/json|
    Y que se envía un body 'booking'
    Dado que se envía la petición POST al path booking
    Cuando se envia la peticion recibo un código 200