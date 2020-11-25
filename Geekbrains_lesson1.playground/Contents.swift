import UIKit

//Задание №1: 5x2 + 3x + 7 = 0

var b: Double = 3
var a: Double = 5
var c: Double = 7
var D = pow(Double(b), 2) - 4 * a * c
//Дискримминант отрицательный, корней нет


//Задание №2
var katet1:Double = 5
var katet2:Double = 8

var gipotenusa = sqrt(pow(Double(katet1), 2) + pow(Double(katet2), 2))

var perimetr = katet1 + katet2 + gipotenusa

var S = (katet1 * katet2) / 2

//Задание №3
var vklad:Double = 50000
var percent:Double = 5
var plus:Double = (vklad * percent) / 100

for i in 1...5 {
    vklad = vklad + plus
    plus = (vklad * percent) / 100
}

print(vklad)
