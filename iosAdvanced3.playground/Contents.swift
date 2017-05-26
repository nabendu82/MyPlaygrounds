//: Playground - noun: a place where people can play

//Closures

var array = ["F", "C", "O", "I", "W"]

func backward(_ s1:String, _ s2:String) -> Bool {
    return s1 > s2
}

print(array)
//array = array.sorted(isOrderedBefore: backward)

let reverseArray = array.sorted(isOrderedBefore: {(s1: String, s2:String) -> Bool
 in return s1 > s2 })

let reverseArray = array.sorted(isOrderedBefore: {(s1, s2) in return s1 > s2 })

let reverseArray = array.sorted(isOrderedBefore: {(s1, s2) in s1 > s2 })

let reverseArray = array.sorted(isOrderedBefore: { $0 > $1 })

let reverseArray = array.sorted(isOrderedBefore: > )

print(reverseArray)

