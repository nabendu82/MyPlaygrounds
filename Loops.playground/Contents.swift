//: Playground - noun: a place where people can play

import UIKit

var salaries = [1200000.0, 200000.0, 3000000.0, 3500000.0, 1200000.0, 200000.0, 1200000.0, 200000.0, 3000000.0, 3500000.0, 1200000.0, 200000.0, 200000.0, 3000000.0, 3500000.0, 200000.0]

//do while loop
var x = 0
repeat {
    salaries[x] = salaries[x] + (salaries[x] * 0.10)
    x += 1
} while (x < salaries.count)

//for in loop
for i in 0..<salaries.count {
    salaries[i] = salaries[i] + (salaries[i] * 0.10)
    
}

for i in 1...5 {
    print("Index: \(i)")
}

//for each loop
for salary in salaries {
    print("Salary: \(salary)")
}

