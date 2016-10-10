//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var tires = 4
    var make: String?
    var model: String?
    var currentSpeed: Double = 0
    
    init() {
        print("I am the parent")
    }
    
    func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 2
    }
    
    func brake() {
        
    }
    
}

class Truck: Vehicle {
    override init() {
        super.init()
        
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease
    }
    
}

class SUV: Vehicle {
    
    override init() {
        super.init()
        print("I am Child")
        make = "Tata"
        model = "Sumo"
    }
    
    override func drive(speedIncrease: Double) {
        currentSpeed += speedIncrease * 4
    }

}

let car = SUV()

