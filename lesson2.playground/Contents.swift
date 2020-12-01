import UIKit

//Задание №1
func chetnechet (a: Int) {
    if a % 2 == 0 {
        print("Число четное")
    } else {
        print("Число нечетное")
    }
}

chetnechet(a: 6)

//Задание №2
func delenienatri (b: Int) {
    if b % 3 == 0 {
        print("Число делится на 3 без остатка")
    } else {
        print("К сожалению данное число не делится на 3")
    }
}
delenienatri(b: 13)

//Задание №3
var array3 = [Int]()
var c = 0
for _ in 1...100 {
    c += 1
    array3.append(c)
}

print(array3)

//Задание №4

var d:Int = array3.count
while d != 0 {
    d -= 1
    if array3[d] % 2 == 0 || array3[d] % 3 != 0 {
        array3.remove(at: d)
    }
}
 print(array3)

//Задание №5
var fib1 = 1
var fib2 = 1
var array5 = [fib1, fib2]
var n = 0

func fibonaci() {
    var sumfib = fib1 + fib2
    fib1 = fib2
    fib2 = sumfib
    array5.append(fib2)
}

while n < 50 {
    fibonaci()
    n += 1
}

print(array5)

//Задание №6

var array6 = [Int]()
var p = 1

func prostoe(_ number: Int) -> Bool {
return number > 1 && !(2..<number).contains { number % $0 == 0 }
}

repeat {
    p += 1
    if prostoe(p) == true {
        array6.append(p)
    }
    
} while array6.count < 100


print(array6)



