#language:es
  Característica: Creación de token

    @regresion
    Escenario: Crear token
      Dado que se envía headers
      |atributo|valor|
      |Content-Type|application/json|
      Y que se envía un body 'token'
      Dado que se envía la petición POST al path auth
      Cuando se envia la peticion recibo un código 200

