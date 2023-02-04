#language:es
Característica: Eliminación de booking
  Antecedentes: Login
    Dado que se envía headers
      |atributo|valor|
      |Content-Type|application/json|
    Y que se envía un body 'token'
    Dado que se envía la petición POST al path auth
    Cuando se envia la peticion recibo un código 200
    Y guardar el token

  Escenario: Eliminar booking
    Dado que se envía headers
      | atributo     | valor            |
      | Content-Type | application/json |
    Y agregar la sesión al header
    Y que se envía un body 'booking'
    Dado que se envía la petición DELETE al path booking/2801
    Cuando se envia la peticion recibo un código 201