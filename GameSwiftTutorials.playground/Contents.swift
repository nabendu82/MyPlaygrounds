import UIKit

//Functions

func sayHello() {
    print("😀👊")
}

sayHello()

func addArray(numberArr:[Int]) -> Int {
    var total = 0
    for num in numberArr {
        total += num
    }
    return total
}

addArray(numberArr: [2, 4, 6, 7])

//Optionals
var dog: String? = "tiger"
print(dog!) //First way

//Second way
if let theDog = dog {
    print(theDog)
}

