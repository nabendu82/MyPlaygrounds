//: Playground - noun: a place where people can play

import UIKit

//Dictionaries
var wordDictionary = ["Baseball":"Small round ball used in American game","Swift":"A programming language created by Apple"]

wordDictionary["Baseball"]
wordDictionary["Swift"]

//Create an array of strings. Then create a dictionary that counts how many times a string is repeated in that array.
let words = ["hello", "my", "name", "is", "Nabs", "and", "Nabs", "is", "not", "coool", "Nabs", "a", "idiot"]

var wordCount : [String:Int] = [:]

for word in words {
    
    if wordCount[word] == nil {
        wordCount[word] = 1
    } else {
        wordCount[word]! += 1
    }
}

print(wordCount)
