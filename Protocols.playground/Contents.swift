//: Playground - noun: a place where people can play

import UIKit

protocol Vehicle: CustomStringConvertible {
    var isRunning: Bool { get set }
    mutating func start()
    mutating func turnOff()
}

struct SportsCar: Vehicle {
    var isRunning: Bool = false
    //Below description needs to be implemented for CustomStringConvertible
    var description: String {
        if isRunning {
            return "Sports car is running"
        } else {
            return "Sports car is stopped"
        }
    }
    
    mutating func start() {
        if isRunning {
            print("Already Started!")
        } else {
            isRunning = true
            print("Vrooom")
        }
    }
    
    mutating func turnOff() {
        if isRunning {
            isRunning = false
            print("Cricktes")
        } else {
            print("Already stopped!")
        }
    }
    
}

class semiTruck: Vehicle {
    var isRunning: Bool = false
    //Below description needs to be implemented for CustomStringConvertible
    var description: String {
        if isRunning {
            return "Semitruck is running"
        } else {
            return "Semitruck is stopped"
        }
    }
    
    func start() {
        if isRunning {
            print("Already started")
        } else {
            isRunning = true
            print("Rumble")
        }
    }
    
    func turnOff() {
        if isRunning {
            isRunning = false
            print("Sileenc...")
        } else {
            print("Already shut down")
        }
    }
    
    func blowAirhorn() {
        print("TOOOOHT ")
    }
    
}

var cars1 = SportsCar()
var truck1 = semiTruck()

cars1.start()
truck1.start()
truck1.blowAirhorn()

//cars1.turnOff()
truck1.turnOff()

//Below is the power of protocols. Two different objects in an array.
var vehicleArray: Array<Vehicle> = [cars1, truck1]
//below loop for every object
//for vehicle in vehicleArray {
//    print("\(vehicle)")
//}

for vehicle in vehicleArray {
    if let vehicle = vehicle as? semiTruck {
        vehicle.blowAirhorn()
        
    }
}

for vehicle in vehicleArray {
    print("\(vehicle.description)")
}









