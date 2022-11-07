//: [Previous](@previous)

import Foundation
//enumaraciones: tipo de estructura en el cual se puede englovar una serie de datos
//primera forma
enum datos{
    case nombre
    case apellido
    case direccion
    case tel
}

var datoActual: datos = .nombre
datoActual = datos.nombre
datoActual = datos.tel
datoActual = datos.apellido

//segunda forma enum con valores asociados
enum datosPersonalesComplejos{
    case nombre(String)
    case direccion(String, Int)
    case tel(Int)
}

var datoActualComplejo: datosPersonalesComplejos = .nombre("Felix")
datoActualComplejo = .direccion("Calle jose maria coss", 50)

//enumeraciones con el mismo valor
enum datosP: String{
    case nombre = "Felix"
    case direccion = "Calle francisco leon de la barra"
    case tel =  "4531234567"
}

datosP.nombre.rawValue
let p: datosP = .nombre
