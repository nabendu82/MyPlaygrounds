//: Playground - noun: a place where people can play



var str = "Hello, playground"
var str2 = "Bye playground"

print(str)
print(str2)

//typealias
typealias AudioSample = UInt16
var maxAmp = AudioSample.min

//tuples
let http404Error = (404,"Page not found")
let (statusCode, statusMessage) = http404Error
print("the status code is \(statusCode) and the message is \(statusMessage)")
print("the status code is \(http404Error.0) and the message is \(http404Error.1)")

let (_, statusM) = http404Error
print (statusM)

let http200Status = (statusCode: 200, statusMessage: "Ok")

print("the status code is \(http200Status.statusCode) and the message is \(http200Status.statusMessage)")

let triple = (a: 1, b: 2, c:3)
print ("a = \(triple.a), b = \(triple.b) and c = \(triple.c)")

//Array and dictionary
var array = ["Malcolm", "Kaylee", "Bob"]
print (array[0])
print (array[1])
print (array[2])

array[2] = "Cristian"

print (array[2])

var dictionay = [
    "Malcolm":"Developer",
    "Kaylee":"Manager"
]
dictionay["Cristian"] = "Public Relations"

print (array)
print (dictionay)

var emptyArray = [Int]()
emptyArray = [1,2,3]
print(emptyArray)


var emptyDictionary = [Int:String]()
emptyDictionary = [200:"Ok", 404:"Page not found"]
print(emptyDictionary)

//For in loops
let base = 2
let power = 8
var answer = 1

for _ in 1...power {
    
    answer *= base
    
}

print ("\(base) to the power of \(power) is \(answer)")

var names = ["Anna", "Alex", "Brian", "Jack"]
names.append("Bob")

for name in names{
    print("Hello \(name)!")
}

var numberOfLegs = ["Spider":8, "Ant":6, "Cat":4, "Man":2]

for (name, legCount) in numberOfLegs{ //Nice use of tuples
    print("\(name) have \(legCount) legs")
}

//While and repeat
let letters = ["A", "B", "C", "D", "E"]

var index = 0

while letters[index] != "D"{
    print("The letter is \(letters[index])")
    index += 1 //index = index + 1
}
print ("Find D at index \(index)")

index = -1

repeat{
    index += 1 //index = index + 1
    print("The letter is \(letters[index])")
    
} while (letters[index] != "D")

print ("Find D at index \(index)")


//if else 
let balance = -10

if balance < 0 {
    print("You should consider stop expeding money")
} else if balance > 0 && balance < 100 {
    print ("You have some money you should go easy")
} else if balance >= 100 {
    print("You have lots of money, lets party!")
} else {
    print("You have no money")
}

let diceNumber = 10

if diceNumber == 1 || diceNumber == 3 || diceNumber == 5{
    print("You Won")
} else if diceNumber > 7 && diceNumber < 1 {
    print("You Lose")
} else{
    print("Your dice must be broken")
}

//Switch 
let letter = "a"

switch letter {
case "a":
    print("The lette is lower case")
    fallthrough
case "A":
    print("It is the letter A")
case "b":
    print("The lette is lower case")
    fallthrough
case "B":
    print("It is the letter B")
case "c":
    print("The lette is lower case")
    fallthrough
case "C":
    print("It is the letter C")
default:
    print("It does not have a match")
}

switch letter {
case "a","e","i","o","u":
    print("The letter \(letter) it is a vowel")
case "b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","y","z":
    print ("The letter \(letter) is a consonant")
default:
    print ("The symbal \(letter) is not a consonant or a vowel")
}

let number = -11

switch number {
case -10..<1:
    print("it is really could")
case 1..<15:
    print("it is could")
case 15..<21:
    print("it is warm")
case 20..<26:
    print("it is really warm")
case 25..<31:
    print("it is really, really warm")
default:
    print("I am not sure about the weather today")
}


let position = (2,2)

switch position {
case (0,0):
    print("it is at the origin")
case (_,0):
    print("it is at the x-axis")
case (0,_):
    print("it is at the y-axis")
case (-1...1,-1...1):
    print("it is inside the box")
default:
    break
}




