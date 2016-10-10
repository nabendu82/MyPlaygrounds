//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



//-------------Special type Function------------------------------//
var bankAccountBalance = 100000.00
var MacMini = 35000.00

func purchaseItem(currentBalance: inout Double, itemPrice: Double) {
    if itemPrice <= currentBalance {
        currentBalance = currentBalance - itemPrice
        print("Purchased item for : Rs. \(itemPrice)")
        
    } else {
        print("First save money to buy it.")

        
    }
}

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: MacMini)

var MacBookPro = 80000.00

purchaseItem(currentBalance: &bankAccountBalance, itemPrice: MacBookPro)




