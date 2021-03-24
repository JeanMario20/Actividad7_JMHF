import UIKit

//1.
var costo_referencia:[Float] = [8.3,10.5,9.9]
func impuesto(Arreglo:[Float]) -> [Float]
{
    var resultado:[Float] = []
    for i in Arreglo
    {
        resultado.append(i*0.16)
    }
    return resultado
}

print(impuesto(Arreglo: costo_referencia))

//2.
var sumaDos = {(x:Int,y:Int) -> Int in return x + y }

print(sumaDos(2,2))


func sumaTres (x:Int , c:Int, v:Int) -> Int
{
    return sumaDos (x,c) + v
}

print(sumaTres(x:5, c:10 ,v:6))

//3
//Crea una función genérica para intercambiar valores entre dos variables del mismo tipo.

func CambiodeValor( valorA: Int, valorB: Int) -> (Int,Int) {
   var valorA = valorA
   var valorB = valorB
 
   let TemporalA = valorA
 
   valorA = valorB
   valorB = TemporalA
 
   return (valorA,valorB)
}

var valor3 = 3
var valor4 = 4

let (nuevoValor3,nuevoValor4) = CambiodeValor(valorA:valor3,valorB:valor4)
 
print("\(nuevoValor3) , \(nuevoValor4) ")

//4
// Crea la función Transformar que reciba como parámetro una colección de tipo Int var datos = [3,7,9,2]

//y una función que transforme cada valor de la colección en una operación definida fuera de la función, regresando una colección transformada.

var datos = [3,7,9,2]

func Arreglo(arreglo:[Int]) -> [Int]
{
    return arreglo
}

print(Arreglo(arreglo:datos))
func transforma(Arreglo:[Int],b:Int) -> [Int]
{
    var respuesta = b
    var resultado:[Int] = []
    for i in  Arreglo
    {
        if b == 1{
            resultado.append(i * 2)
        }
        if b == 2 {
            resultado.append(i + 2)
        }
        if b == 3{
            resultado.append(i / 2)
        }
    }
    return resultado
}
print(transforma(Arreglo:datos,b:3))

//5
//Aplica la función de librería de Swift map para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplica el impuesto de 16% y asígnala a la variable impuesto.

var precios = [4.2, 5.3, 8.2, 4.5]
var impuesto16 = precios.map{a in return a * 0.16}
print(impuesto16)

//6
//Aplica la función de la librería de Swift filter para la colección resultante impuesto del paso A, en donde obtengas sólo los precios mayores a 6.0 y asígnalos a la variable precio_menor.

var precio_menor = impuesto(Arreglo:costo_referencia).filter{a in return a > 6}
print(precio_menor)
