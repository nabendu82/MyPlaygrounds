//: Playground - noun: a place where people can play

import UIKit

//variable
var age = 35

age = 40

//constant
let dogAge = 8

//Below line will give error
//dogAge = 9

//String
var str = "😀 Hello World"

//Boolean
var isNabsCool = false

//Array
var dogNames = ["Fido", "Lido", "Haley", "Jones"]

dogNames[0]
dogNames.first

dogNames.last
dogNames[dogNames.count - 1]

dogNames.remove(at: 1)

dogNames.append("Tiger")

//for loop
for _ in 1...5 {
  print("Nabs")
}

for dog in dogNames {
    print(dog)
}


//Classes

class Dog {
    var name: String = ""
    var age: Int = 0
    
    func tellMeAbout() {
        print("The dog name is \(name) and is \(age) year old")
    }
}

class Bulldog: Dog {
    var furiness = 0
}

var myDog = Dog()
myDog.name = "Tiger"
myDog.age = 9

var otherDog = Dog()
otherDog.name = "Fido"
otherDog.age = 8

var dogs: [Dog] = [myDog, otherDog]

for dog in dogs {
    dog.tellMeAbout()
}

var filmyDog = Bulldog()
filmyDog.name = "Jackie"
filmyDog.age = 23
filmyDog.furiness = 10






























