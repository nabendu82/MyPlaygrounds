//: Playground - noun: a place where people can play

import UIKit

//Functions
func sayHello(){
    print("Hello World")
}

func sayHelloTo(person: String){
    print("Hello \(person)")
}

func returnHello() -> String{
    return "Hello World!"
}

func returnSayHelloTo(person: String) -> String{
    return "Hello \(person)"
}

func returnMessage(person: String, message: String) -> String{
    return "Hello \(person), your message is: \(message)"
}

func arithmeticFunc(a:Int, b:Int) -> (Int, Int){
    let add = a + b
    let mult = a * b
    return (add, mult)
}

sayHello()
sayHelloTo(person: "Bob")

let myString = returnHello()
print(myString)

print(returnSayHelloTo(person: "Brian"))

print(returnMessage(person: "Cris", message: "you are late!"))

let (value1, value2) = arithmeticFunc(a: 5, b: 4)
print("Add value is: \(value1) and multiplication value is: \(value2)")


func greet(person:String, from hometown:String){
    print("Hello \(person) from \(hometown)")
}

greet(person: "Bob", from: "Cupertino")

func sayHelloTo(_ person: String){
    print("Hello \(person)")
}

sayHelloTo("Cristian")
sayHelloTo("Bob")

func sendMessageTo(_ person: String, message: String = "Hello"){
    print("\(message) \(person)")
}

sendMessageTo("Hellen")
sendMessageTo("Smith", message: "Oi")

func arithmeticMean(_ numbers:Double...) -> Double{
    var total:Double = 0
    for number in numbers{
        total += number
    }
    return total / Double(numbers.count)
}

print(arithmeticMean(-1, 0 ,1))
print(arithmeticMean(-135, -33.21 ,9943, -453))
print(arithmeticMean(0.34))
print(arithmeticMean())

//swift by default is call by value, so we use as below.
func swapToInts(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
    
}

var int1 = 5
var int2 = 10
print("int1 : \(int1) and int2 : \(int2)")

swapToInts(&int1, &int2)
print("int1 : \(int1) and int2 : \(int2)")

//Nested function
func chooseStepFunction(backward: Bool) -> (Int) -> Int{
    
    func stepForward(input:Int) -> Int{ return input + 1 }
    
    func stepBackward(input:Int) -> Int{ return input - 1 }
    
    return backward ? stepBackward : stepForward
}

var currentValue = 0

var nextMove = chooseStepFunction(backward: false)
currentValue = nextMove(currentValue)
print(currentValue)
currentValue = nextMove(currentValue)
print(currentValue)
nextMove = chooseStepFunction(backward: true)
currentValue = nextMove(currentValue)
print(currentValue)
currentValue = nextMove(currentValue)
print(currentValue)

//Real life function
let name = "name"
let salary = "salary"
let position = "position"

let developer = "Developer"
let manager = "Manager"
let techinician = "Techinician"

let bob = [name: "Bob", salary: "100000", position: developer]
let marry = [name: "Marry", salary: "120000", position: manager]
let john = [name: "John", salary: "50000", position: techinician]
let chris = [name: "Chris", salary: "50000", position: "techinitian"]

let employees = [bob, marry, john, chris]

func calculateBonus(position: String) -> (String) -> (Double, String){
    
    func calcDeveloperBonus(name:String) -> (Double, String){
        return (0.05, "\(name), you are a fundamental part of this company, thank you for your great work this year")
    }
    
    func calcManagerBonus(name:String) -> (Double, String){
        return (0.08, "\(name), your ledership was a necessary evil this year, thank you!")
    }
    
    func calcTechinicianBonus(name:String) -> (Double, String){
        return (0.03, "\(name), thank you for your great work this year")
    }
    
    func error(name:String) -> (Double, String){
        return (0, "Error for employee \(name), position \(position) is not part of the positions avaliable")
    }
    
    switch position {
    case developer:
        return calcDeveloperBonus
    case manager:
        return calcManagerBonus
    case techinician:
        return calcTechinicianBonus
    default:
        return error
    }
}

for employee in employees{
    let bonus = calculateBonus(position: employee[position]!)
    let (percentage, message) = bonus(employee[name]!)
    print("\(message) - Your bonus is \(Double(employee[salary]!)! * percentage)")
}







