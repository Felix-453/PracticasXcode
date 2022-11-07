//: [Previous](@previous)

import Foundation



let arregloInmutable = [3,2,1]
var arregloNumeros = [1,2,3]

//agregar valores

arregloNumeros.append(5)
arregloNumeros

//inserter valor y recorre el siguiente valor
arregloNumeros.insert(4, at: 3)
arregloNumeros

arregloNumeros[2] = 30
arregloNumeros

//acceder
arregloNumeros[4]


//eliminar
arregloNumeros.removeLast() //elimina el ultimo elemnto de un arreglo
arregloNumeros.remove(at: 3) // elimina el elemento en la pocicion indicada
arregloNumeros

//declarar arreglo vacio
var arregloVacio: [Int] = []
arregloVacio.append(1)
arregloVacio.append(2)



