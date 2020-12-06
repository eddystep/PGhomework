import UIKit

enum EngineState {
    case isOn
    case isOff
}

enum WindowState {
    case windowOpen
    case windowClose
}

enum TypeCar {
    case trunkCar, sportCar
}

struct Car {
    
    let type: TypeCar
    let mark: String
    let year: Int
    var trunkCapacity: Int
    var luggage: Int {
        didSet {
            var freeCapacity = trunkCapacity - luggage
            print("Свободный объем багажника \(freeCapacity) литров ")
        }
    }
    var engine: EngineState
    var window: WindowState
    
    
    mutating func openWindow() {
        self.window = .windowOpen
        print("Window open")
    }
    
    mutating func closeWindow() {
        self.window = .windowClose
        print("Window close")
    }
    
    mutating func engineStart() {
        self.engine = .isOn
        print("Engine work")
    }
    
    mutating func engineStop() {
        self.engine = .isOff
        print("Engine is stopped")
    }
}

var car1 = Car(type: .sportCar, mark: "Ferrari", year: 2018, trunkCapacity: 500, luggage: 400, engine: .isOff, window: .windowClose)

print(car1)

//car1.closeWindow()
//car1.engineStart()

//car1.luggage = 50
