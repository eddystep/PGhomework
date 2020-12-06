import UIKit

enum EngineState {
    case isOn
    case isOff
}

enum WindowState {
    case windowOpen
    case windowClose
}



class Car {
    
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
    
    init(mark: String, year: Int, trunkCapacity: Int, luggage: Int, engine: EngineState, window: WindowState) {
        self.mark = mark
        self.year = year
        self.trunkCapacity = trunkCapacity
        self.luggage = luggage
        self.engine = engine
        self.window = window
    }
    
    func onEngine() {
        engine = .isOn
        print("Engine is started")
    }
    func offEngine() {
        engine = .isOff
        print("Engine is stopped")
    }
    func openWindow() {
        window = .windowOpen
        print("Window open")
    }
    func closeWindow() {
        window = .windowClose
        print("Window close")
    }
    func printing(){
        print("Марка: \(self.mark), Год: \(self.year), Объем багажника: \(self.trunkCapacity), Объем багажжа: \(self.luggage), Состояние двигателя: \(self.engine), Состояние окон: \(self.window)")
    }
    
}

enum TrailerState {
    case withTrailer, withoutTrailer
    
}
class TrunkCar: Car {
    var trailer: TrailerState
    
    init(trailer: TrailerState, mark: String, year: Int, trunkCapacity: Int, luggage: Int, engine: EngineState, window: WindowState) {
        self.trailer = trailer
        super.init(mark: mark, year: year, trunkCapacity: trunkCapacity, luggage: luggage, engine: engine, window: window)
    }
    
    func trailerHook() {
        trailer = .withTrailer
        print("Трейлер прицеплен")
    }
    func trailerUnHook() {
        trailer = .withoutTrailer
        print("Трейлер отцеплен")
    }
    
    override func printing() {
        super.printing()
        print("Наличие трейлера: \(self.trailer)")
    }
}



class SportCar: Car {
    let nitricOxide: Bool
    let spoiler: Bool

    init(nitricOxide: Bool, spoiler: Bool, mark: String, year: Int, trunkCapacity: Int, luggage: Int, engine: EngineState, window: WindowState) {
        self.nitricOxide = nitricOxide
        self.spoiler = spoiler
        super.init(mark: mark, year: year, trunkCapacity: trunkCapacity, luggage: luggage, engine: engine, window: window)
    }
    override func printing() {
        super.printing()
        print("Наличие оксида азота: \(self.nitricOxide ? "Есть" : "Нет"), Наличие спойлера: \(self.spoiler ? "Есть" : "Нет")")
    }
}

var car1 = SportCar(nitricOxide: false, spoiler: true, mark: "Ferrari", year: 2020, trunkCapacity: 100, luggage: 90, engine: .isOff, window: .windowClose)

var car2 = TrunkCar(trailer: .withTrailer, mark: "Scania", year: 1935, trunkCapacity: 50000, luggage: 45000, engine: .isOff, window: .windowOpen)


car1.printing()
car2.luggage = 30000
car2.trailerUnHook()
