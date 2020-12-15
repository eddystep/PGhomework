import UIKit

struct Work {
    var salary: Float {
        get {
            return salaryInHour * hourInMonth * 0.79
        }
    }
    var salaryInHour: Float = 7.48
    var hourInMonth: Float
}

struct Stack<T>: CustomStringConvertible {
    var description: String {
        return "Зарплата: \(array)"
    }
    var array = [T]()
    
    mutating func push(_ element: T){
        array.append(element)
    }
    
    mutating func remove() -> T? {
        return array.removeLast()
    }
    subscript(index: Int) -> String? {
        guard index <= array.count
        else {
            return nil
        }
        return "Все окей!"
    }
}

var work = Stack<Work>()
work.push(Work(hourInMonth: 168))
work.push(Work(hourInMonth: 176))
work.push(Work(hourInMonth: 144))
work.push(Work(hourInMonth: 152))
print(work.description)

work.remove()

print(work.array[3])




