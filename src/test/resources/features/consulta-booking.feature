#language: es
Característica: GET Booking

  Escenario: Consulta Booking
    Dado que se envía la petición GET al path booking
    Cuando se envía la petición recibo un código 200
    Entonces se valida el esquema de la respuesta con el archivo 'getBooking-schema'

  Escenario: Consulta Booking especifico
    Dado que se envía la petición GET al path booking/1621
    Cuando se envía la petición recibo un código 200
    Entonces se valida el esquema de la respuesta con el archivo 'getBookingId-schema'
    Y validar valores de la respuesta de booking
    |nombre|apellido|precio|deposito|fecinicio|fecfin|
    | Josh | Allen     |     111|true        |2018-01-01        |   2019-01-01  |
    


  Esquema del escenario: Consultas booking
    Dado que se envía la petición <method> al path <path>
    Cuando se envía la petición recibo un código <codigo>
    Entonces se valida el esquema de la respuesta con el archivo '<schema>'

    Ejemplos:
      | method | path        | codigo | schema              |
      | GET    | booking     | 200    | getBooking-schema   |
      | GET    | booking/245 | 200    | getBookingId-schema |



