//: [Previous](@previous)
//Felix
import Foundation
//funcion sensilla
func holaMundo(){
    print("Hola mundo")
}

holaMundo()
 //funcion suma de dos numeros
func sumaDosNumeros(){
        let res = 2+2
        print(res)
}
sumaDosNumeros()
 //funcion con paso de parametros
func cuadrado(numero:Int){
        let res = numero * numero
        print(res)
}
cuadrado(numero: 10)

//con un guin bajo antes del parametro se puede o mitir el nombre al mandar el valor
func cuadrado2(_ numero:Int){
        let res = numero * numero
        print(res)
}
cuadrado2(10)
    //funcion con paso de parametros
func saludo(persona: String, mensaje: String){
    //Concatenacion
     print("Hola " + persona + " bienvenido al curso de " + mensaje)
    //interpolacion
    print("Hola \(persona) bienvenido al curso de \(mensaje)")
}
saludo(persona: "Felix", mensaje: "Swift")

//funcion con paso de parametros y reortno
func cubo(numero: Int) -> Int{
    let c = numero * numero * numero
    return c
}

let cu = cubo(numero: 3)

// parametros internos
func promedioCalificacion(calif1: Double, calif2: Double, calif3: Double) -> Double{
    let promedio = (calif1 + calif2 + calif3)/3
    return promedio
}

let promedioG = promedioCalificacion(calif1: 7, calif2: 8, calif3: 9)

//parametros externos
func promedioCalificacionE(Matematicas calif1: Double,Quimica calif2: Double,Geografia calif3: Double) -> Double{
    let promedio = (calif1 + calif2 + calif3)/3
    return promedio
}

let promedioGE = promedioCalificacionE(Matematicas: 7, Quimica: 10, Geografia: 9)

//funcion que retorna arreglos
func listaNombres()-> [String]{
    let arreglo = ["Felix", "Juan", "Pedro", "Tarelo"]
    return arreglo
    
}
print(listaNombres())
//CLOUSURES
// son funciones anonimas que se pueden guardar en una variable
/*
 {(parametros)-> tipo-valor-retorno in
 codigo
 }
 */
let miPrimerClousure = {(materiaUno: Double, materiaDos: Double, materiaTres: Double) -> Double in
    
    let res = (materiaUno + materiaDos + materiaTres)/3
    return res
    
    
}
//interpolacion
print("mi promedio es \(miPrimerClousure(100,70,100))")
//concatenacion
print("mi promedio es"+String(miPrimerClousure(100,70,100)))
