#language:es
Característica: Actualización de booking
Antecedentes: Login
    Dado que se envía headers
      |atributo|valor|
      |Content-Type|application/json|
    Y que se envía un body 'token'
    Dado que se envía la petición POST al path auth
    Cuando se envia la peticion recibo un código 200
    Y guardar el token

  @regresion
  Escenario: Actualizar todo el booking
    Dado que se envía headers
      | atributo     | valor            |
      | Content-Type | application/json |
      | Accept       | application/json |
    Y agregar la sesión al header
    Y que se envía un body 'booking'
    Dado que se envía la petición PUT al path booking/821
    Cuando se envia la peticion recibo un código 200

  Escenario: Actualizar parcialmente el booking
    Dado que se envía headers
      | atributo     | valor            |
      | Content-Type | application/json |
      | Accept       | application/json |
    Y agregar la sesión al header
    Y que se envía un body 'booking'
    Dado que se envía la petición PUT al path booking/821
    Cuando se envia la peticion recibo un código 200