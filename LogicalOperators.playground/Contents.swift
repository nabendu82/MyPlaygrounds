//: Playground - noun: a place where people can play

import UIKit

let allowedEntry = false

if !allowedEntry {
    print("ACCESS DENIED")
}

let enteredDoorCode = true
let passedRetunaScan = false
let MissionImpossible = false

if (enteredDoorCode && passedRetunaScan) || MissionImpossible {
    print("Welcome")
    
} else {
    print("ACCESS DENIED AGAIN")
}
