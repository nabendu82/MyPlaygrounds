//: Playground - noun: a place where people can play

import UIKit

var amIcoder: Bool = true

amIcoder = false

if true == false || true == true {
    print("WTF")
}

var bankBalance = 80000
var itemToBuy = 30000

if bankBalance >= itemToBuy {
    print("Purchased item")
}

if itemToBuy > bankBalance {
    print("You need more money fool")
}

if itemToBuy == bankBalance {
    print("Hey bud, you balance is zero")
}

var bookTitle1 = "2 States"
var bookTitle2 = "2 States"

if bookTitle1 != bookTitle2 {
  print("Need to fix the spelling")
} else if bookTitle2.characters.count > 9 {
  print("Find a shorter title")
} else {
    print("Send the book to press")
}