//: Playground - noun: a place where people can play

import UIKit


//Case 1
func intAdder(number: Int) -> Int {
    return number + 1
}

intAdder(number: 15)

func doubleAder(number: Double) -> Double {
    return number + 1.0
}

doubleAder(number: 5.0)

///Doing the above with generics

func genericAdder<T: Strideable>(number: T) -> T {
    return number + 1
}

genericAdder(number: 16)
genericAdder(number: 16.0)

//Case 2
func intMultiplier(lhs: Int, rhs:Int) -> Int {
    return lhs * rhs
}

intMultiplier(lhs: 2, rhs: 4)

func doubleMultiplier(lhs: Double, rhs: Double) -> Double {
    return lhs * rhs
}

doubleMultiplier(lhs: 2.0, rhs: 6.0)

///Doing the above with generics

protocol Numeric {
    static func *(lhs: Self, rhs: Self) -> Self
}

extension Double: Numeric {}
extension Float: Numeric {}
extension Int: Numeric {}

func genericMultiplier<T: Numeric>(lhs: T, rhs: T) -> T {
    return lhs * rhs
}

genericMultiplier(lhs: 5, rhs: 7)
genericMultiplier(lhs: 2.2, rhs: 5)










