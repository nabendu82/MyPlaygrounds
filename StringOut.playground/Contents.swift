//: Playground - noun: a place where people can play

import UIKit

var str: String = "Hello, playground"

var firstName = "Nabendu"
var lastName = "Biswas"

var age = 35
var fullName = firstName + " " + lastName

var fullName2 = "\(firstName) \(lastName) is \(age)"

fullName.append(" the coder")

var booktitle = "revenge of the sith"

booktitle = booktitle.capitalized

var annoyingGuy = "PLEASE HELP ME NOW. I AM STUCK"

var lowercasedChat = annoyingGuy.lowercased()

var sentence = "What the fuck?! Hell that is shit!"

if sentence.contains("fuck") {
    sentence = sentence.replacingOccurrences(of: "fuck", with: "tuna")
}

if sentence.contains("shit") {
    sentence = sentence.replacingOccurrences(of: "shit", with: "playa")
}


