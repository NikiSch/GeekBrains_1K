import Cocoa

enum CarTrunkStatus{
    case empty
    case full
}

enum CarDoorStatus{
    case open
    case close
}

enum CarEngineStatus{
    case start
    case stop
}

enum CarWindowsStatus{
    case open
    case close
}

class car {
    var trunkStatus: CarTrunkStatus
    var doorStatus: CarDoorStatus
    var engineStatus: CarEngineStatus
    var windowsStatus: CarWindowsStatus
    
    init(trunkStatus: CarTrunkStatus,
         doorStatus: CarDoorStatus,
         engineStatus: CarEngineStatus,
         windowsStatus: CarWindowsStatus) {
        self.trunkStatus = trunkStatus
        self.doorStatus = doorStatus
        self.engineStatus = engineStatus
        self.windowsStatus = windowsStatus
    }
    
    func exhausLoud() {
        print("выхлоп тихий")
    }
}

enum CarExhausStatus{
    case loud
    case quiet
}

class SportCar: car{
    var exhausStatus: CarExhausStatus
    
    init(trunkStatus: CarTrunkStatus,
         doorStatus: CarDoorStatus,
         engineStatus: CarEngineStatus,
         windowsStatus: CarWindowsStatus,
         exhausStatus: CarExhausStatus) {
        self.exhausStatus = exhausStatus
       
        super.init(trunkStatus: trunkStatus, doorStatus: doorStatus, engineStatus: engineStatus, windowsStatus: windowsStatus)
    }
    
    override func exhausLoud() {
        print("выхлоп громче")
    }
}

var ferrari = SportCar(trunkStatus: .empty, doorStatus: .close, engineStatus: .start, windowsStatus: .close, exhausStatus: .loud)

enum CarRoofStatus{
    case open
    case close
}

class SportCarCabrio: SportCar{
    var roofStatus: CarRoofStatus
    
    init(trunkStatus: CarTrunkStatus,
         doorStatus: CarDoorStatus,
         engineStatus: CarEngineStatus,
         windowsStatus: CarWindowsStatus,
         exhausStatus: CarExhausStatus,
         roofStatus: CarRoofStatus) {
        self.roofStatus = roofStatus
        
        super.init(trunkStatus: trunkStatus, doorStatus: doorStatus, engineStatus: engineStatus, windowsStatus: windowsStatus, exhausStatus: .loud)
    }
}

var lamborghini = SportCarCabrio(trunkStatus: .full, doorStatus: .close, engineStatus: .stop, windowsStatus: .open, exhausStatus: .quiet, roofStatus: .open)

enum LiftBodyStatus{
    case up
    case down
    
}
class TrunkCar: car{
    var bodyStatus: LiftBodyStatus
    
    init(trunkStatus: CarTrunkStatus,
         doorStatus: CarDoorStatus,
         engineStatus: CarEngineStatus,
         windowsStatus: CarWindowsStatus,
         bodyStatus: LiftBodyStatus) {
        self.bodyStatus = bodyStatus
        
        super.init(trunkStatus: trunkStatus, doorStatus: doorStatus, engineStatus: engineStatus, windowsStatus: windowsStatus)
    }
    func liftBody(){
        print("Кузов поднят")
    }
}

var volvo = TrunkCar(trunkStatus: .full, doorStatus: .open, engineStatus: .start, windowsStatus: .close, bodyStatus: .down)

print("статус двигателя \(ferrari.engineStatus)")
print("Двигатель заведен")
ferrari.exhausLoud()
