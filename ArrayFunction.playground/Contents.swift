//: Playground - noun: a place where people can play

import UIKit

var arr1 = ["a","b","c"]
var arr2 = ["bo","ro","me"]



func combined(first: [String], second: [String]) -> [String] {
    var combSTring = [String]()
    
    for i in 0..<second.count {
       combSTring.append(first[i])
       combSTring.append(second[i])
    }
    return combSTring
    
}

print(combined(first: arr1, second: arr2))


