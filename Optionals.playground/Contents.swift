//: Playground - noun: a place where people can play

import UIKit

//May or may not have a value, so optional
var lotteryWinnings: Int?


//First way to unwrap
if lotteryWinnings != nil {
    print(lotteryWinnings!)
}

lotteryWinnings = 100
//Second way to do it
if let winnings = lotteryWinnings {
    print("You won \(winnings)")
}

//Class optional example
class Car {
    var model: String? //Model is optional
}

var vehicle: Car? //Object of class is optional

/* First way
if let v = vehicle {
    if let m = v.model{
        print(m)
    }
}
*/

print(vehicle?.model) //Prints value whether there is some or not
//Will give error as we try to unwrap but it have no value
//print(vehicle!.model)

//Second way
vehicle = Car()
vehicle?.model = "Desire"

if let v = vehicle, let m = v.model {
    print(m)
}

//---Tough example
var cars: [Car]?  //making an optional object of class Car
cars = [Car]()

if let carArr = cars , carArr.count > 0 {
   //only execute if not nil and if more than 0 elements
} else {
    cars?.append(Car())
    print(cars?.count)
    
}

//Another Class toughie
//Implicity unwrapped optional
class Person {
    private var _age: Int!//Declaring private
    
    var age: Int {     //Using getter function(Computed value)
        if _age == nil {
            _age = 15
        }
        return _age
    }
    
    func setAge(newAge: Int) {
        self._age = newAge
    }
    
}

var jack = Person()
//print(jack._age)  --Will give error as _age is private
print(jack.age)


//Initializing via constructor
class Dog {
    var species: String
    
    init(someSpecies: String) {
        self.species = someSpecies
    }
}

var favSpecies = Dog(someSpecies: "Pamelion")
print(favSpecies.species)




























