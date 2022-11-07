//: [Previous](@previous)
// Felix
import Foundation

//agregando un signo de interrogacion al tipo de variable
var myOptionalString: String?
var myOptionalString2: String?
var myOptionalString3: String?
myOptionalString2 = "Felix"
myOptionalString3 = "20"

print(myOptionalString)


if myOptionalString != nil{
    print("la variable tiene un valor distinto de nulo")
}else{
    print("nuestra variable es nula")
}

//forma correcta de aplicar optional"desempaquetar variable opcional"
// if let verifica variables opcionales
if let cad = myOptionalString{// esta opcion daria false por que no tene valor
    print("la variable si tiene valor \(cad)")
}else{
    print("la variable es nula")
}
if let cad = myOptionalString, let cad2 = myOptionalString2, let cad3 = myOptionalString3{// para comprobar varias variables
    print("la variables si tiene valor todas")
}else{
    print("alguna de las variables es nula")
}

//desempaquetamiento forzoso se usa signo de admiracion
print(myOptionalString3!)

