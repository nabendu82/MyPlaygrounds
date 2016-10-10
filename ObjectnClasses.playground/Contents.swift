//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    var tires = 4
    var headlights = 2
    var horsepower = 468
    var model = ""
    
    func drive() {
        //accelerate the vehicle
    }
    
    func brake() {
        
    }
    
}

//These are objects and they are passed by reference
let maruti = Vehicle()
maruti.model = "Alto"

let hyundai = Vehicle()
hyundai.model = "Santro"
hyundai.brake()

func passByReference(vehicle: Vehicle) {
    vehicle.model = "Accent"
}

print(hyundai.model)
passByReference(vehicle: hyundai) //Pass by Reference
print(hyundai.model)








