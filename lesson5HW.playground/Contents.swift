import UIKit

protocol Car {
    var mark: String { get }
    var year: Int { get }
    var trunkCapacity: Int { get set }
    var luggage: Int { get set }
    var engine: Bool { get set }
    var window: Bool { get set }
}

enum TrailerState {
    case withTrailer, withoutTrailer
}

class TrunkCar: Car {
    var mark: String
    var year: Int
    var trunkCapacity: Int
    var luggage: Int {
        didSet {
            var freeCapacity = trunkCapacity - luggage
            print("Свободный объем багажника \(freeCapacity) литров ")
        }
    }
    var engine: Bool
    var window: Bool
    var trailer: TrailerState
    
    init(mark: String, year: Int, trunkCapacity: Int, luggage: Int, engine: Bool, window: Bool, trailer: TrailerState) {
        self.mark = mark
        self.year = year
        self.trunkCapacity = trunkCapacity
        self.luggage = luggage
        self.engine = engine
        self.window = window
        self.trailer = trailer
    }
    
    func trailerHook() {
        trailer = .withTrailer
        print("Трейлер прицеплен")
    }
    func trailerUnHook() {
        trailer = .withoutTrailer
        print("Трейлер отцеплен")
    }
}

class SportCar: Car {
    var mark: String
    var year: Int
    var trunkCapacity: Int
    var luggage: Int {
        didSet {
            var freeCapacity = trunkCapacity - luggage
            print("Свободный объем багажника \(freeCapacity) литров ")
        }
    }
    var engine: Bool
    var window: Bool
    let nitricOxide: Bool
    let spoiler: Bool
        
    init(nitricOxide: Bool, spoiler: Bool, mark: String, year: Int, trunkCapacity: Int, luggage: Int, engine: Bool, window: Bool) {
        self.mark = mark
        self.year = year
        self.trunkCapacity = trunkCapacity
        self.luggage = luggage
        self.engine = engine
        self.window = window
        self.nitricOxide = nitricOxide
        self.spoiler = spoiler
        }
}

extension Car {
    mutating func handleEngine() {
        self.engine.toggle()
        print(engine ? "Двигатель запущен" : "Двигатель остановлен")
    }
}

extension Car {
    mutating func controlWindow() {
        self.window.toggle()
        print(window ? "Окна открыты" : "Окна закрыты")
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String{
        return ("Марка: \(self.mark), Год: \(self.year), Объем багажника: \(self.trunkCapacity), Объем багажжа: \(self.luggage), Состояние двигателя: \(self.engine ? "Двигатель запущен" : "Двигатель остановлен"), Состояние окон: \(self.window ? "Окна открыты" : "Окна закрыты"), Наличие трейлера: \(self.trailer)")
    }
}

extension SportCar: CustomStringConvertible {
    var description: String{
        return ("Марка: \(self.mark), Год: \(self.year), Объем багажника: \(self.trunkCapacity), Объем багажжа: \(self.luggage), Состояние двигателя: \(self.engine ? "Двигатель запущен" : "Двигатель остановлен"), Состояние окон: \(self.window ? "Окна открыты" : "Окна закрыты"), Наличие оксида азота: \(self.nitricOxide ? "Есть" : "Нет"), Наличие спойлера: \(self.spoiler ? "Есть" : "Нет")")
    }
}
  

var car1 = SportCar(nitricOxide: true, spoiler: false, mark: "Lamborgini", year: 2019, trunkCapacity: 100, luggage: 40, engine: false, window: false)
var car2 = TrunkCar(mark: "Volvo", year: 1991, trunkCapacity: 50000, luggage: 40000, engine: false, window: false, trailer: .withTrailer)
    

car1.controlWindow()
car2.handleEngine()
car1.controlWindow()
car2.luggage = 30000
print(car2.description)





