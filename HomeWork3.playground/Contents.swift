import UIKit

enum Window{
    case open,close
}


enum Engine{
    case started,stoped
}



struct SportCar{
    let brand: String
    let year: Int
    let trunkVolume: Int
    var engineIsStarted: Engine
    var windowIsOpen: Window
    func filledVolumeOfTrunk(_ value: Int) -> Int{
        return self.trunkVolume - value
    }
    mutating func openWindow(){
        windowIsOpen = .open
 
    }
    mutating func closeWindow(){
        windowIsOpen = .close
    }
    mutating func startEngine(){
        engineIsStarted = .started
 
    }
    mutating func stopEngine(){
        engineIsStarted = .stoped
    }
    mutating func setEngineState(_ value: Engine){
        engineIsStarted = value
    }
    mutating func setWindowState(_ value: Window){
        windowIsOpen = value
    }
}


struct TruckCar{
    let brand: String
    let year: Int
    let trunkVolume: Int
    var engineIsStarted: Engine
    var windowIsOpen: Window
    func filledVolumeOfTrunk(_ value: Int) -> Int{
        return self.trunkVolume - value
    }
    mutating func openWindow(){
        windowIsOpen = .open
 
    }
    mutating func closeWindow(){
        windowIsOpen = .close
    }
    mutating func startEngine(){
        engineIsStarted = .started
 
    }
    mutating func stopEngine(){
        engineIsStarted = .stoped
    }
    mutating func setEngineState(_ value: Engine){
        engineIsStarted = value
    }
    mutating func setWindowState(_ value: Window){
        windowIsOpen = value
    }
}


var HondaCar = SportCar(brand: "Honda", year: 2000, trunkVolume: 1000, engineIsStarted: .started, windowIsOpen: .close)
var MANTruck = TruckCar(brand: "MAN", year: 2017, trunkVolume: 82000, engineIsStarted: .started, windowIsOpen: .close)
print(MANTruck.self)
print(HondaCar.self)

var BmwCar = SportCar(brand: "BMW", year: 2015, trunkVolume: 500, engineIsStarted: .stoped, windowIsOpen: .open)
print(BmwCar.self)


print(HondaCar.filledVolumeOfTrunk(100))
HondaCar.openWindow()
print(HondaCar.windowIsOpen)
HondaCar.setEngineState(.stoped)
print(HondaCar.engineIsStarted)



print(MANTruck.filledVolumeOfTrunk(100))
MANTruck.openWindow()
print(MANTruck.windowIsOpen)
MANTruck.setEngineState(.stoped)
print(MANTruck.engineIsStarted)
MANTruck.startEngine()
print(MANTruck.engineIsStarted)
print(MANTruck.brand)
