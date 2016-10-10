//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func calculateArea(length: Int, width: Int) -> Int {
    //let area = length * width
    //return area
    return length * width
    
}

let shape1 = calculateArea(length: 5, width: 4)
let shape2 = calculateArea(length: 10, width: 8)
let shape3 = calculateArea(length: 12, width: 7)

//-------------------------------------------//
var bankAccountBalance = 100000.00
var MacMini = 35000.00

func purchaseItem(currentBalance: Double, itemPrice: Double) -> Double {
    if itemPrice <= currentBalance {
        print("Purchased item for : Rs. \(itemPrice)")
        return currentBalance - itemPrice
    } else {
        print("First save money to buy it.")
        return currentBalance
        
    }
}

bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: MacMini)

var MacBookPro = 80000.00

bankAccountBalance = purchaseItem(currentBalance: bankAccountBalance, itemPrice: MacBookPro)


