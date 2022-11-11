//: [Previous](@previous)
// Felix
import Foundation
// diccionario permiten guardar clave-valor

let miDiccionarioClasico = Dictionary< Int, String >()//parametros clave y valor

var miDiccionario = [Int:String]()//tra forma de declarar un diccionario

//agregar datos
miDiccionario = [001: "Pepe", 002: "Felix"]

miDiccionario[003] = "Tarelo"
miDiccionario[004] = "Julia"
miDiccionario[005] = "Robococ"

//Accesar al diccionario
miDiccionario[004]


//actualizar
miDiccionario.updateValue("Antonio", forKey: 002)
miDiccionario[002]

//borrar
miDiccionario[001] = nil
miDiccionario.removeValue(forKey: 003) //eliminar
miDiccionario[002]
miDiccionario.count //contar elemetos del diccionario



