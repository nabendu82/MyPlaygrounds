//: Playground - noun: a place where people can play

import UIKit


protocol Vehicle: CustomStringConvertible {
    var isRunning: Bool { get set }
    var make: String { get set }
    var model: String { get set }
    mutating func start()
    mutating func turnOff()
}

//Protocol extension
extension Vehicle {
    var makeModel: String {
        return "\(make) \(model)"
    }
    mutating func start() {
        if isRunning {
            print("Already Started")
        } else {
            isRunning = true
            print("\(self.description) fired up")
        }
    }
    
    mutating func turnOff() {
        if isRunning {
            isRunning = false
            print("\(self.description) fired down")
            
        } else {
            print("Already stopped")
        }
        
    }
}

struct SportsCar: Vehicle {
    var isRunning: Bool = false
    var make: String
    var model: String
    //Below description needs to be implemented for CustomStringConvertible
    var description: String {
       return self.makeModel
    }
    

    
}

class semiTruck: Vehicle {
    var isRunning: Bool = false
    var make: String
    var model: String
    
    init(isRunning: Bool, make: String, model: String) {
        self.isRunning = isRunning
        self.make = make
        self.model = model
    }
    //Below description needs to be implemented for CustomStringConvertible
    var description: String {
        return self.makeModel
    }
    

    
    func blowAirhorn() {
        print("TOOOOHT ")
    }
    
}

var cars1 = SportsCar(isRunning: false, make: "Porsche", model: "911")
var truck1 = semiTruck(isRunning: false, make: "Peterbuilt", model: "Verago")

cars1.start()
truck1.start()
truck1.blowAirhorn()

////cars1.turnOff()
truck1.turnOff()
//
////Below is the power of protocols. Two different objects in an array.
var vehicleArray: Array<Vehicle> = [cars1, truck1]

for vehicle in vehicleArray {
    print("\(vehicle.makeModel)")
}

//Type extension
extension Double {
    var rupeeString: String {
        return String(format: "Rs%.02f", self)
    }
}

var pct = 32.15 * 0.15
pct.rupeeString










