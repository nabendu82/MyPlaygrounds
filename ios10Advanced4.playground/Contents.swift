func makeIncrementer(forIncrement amount: Int) -> () -> Int{
    
    var runningTotal = 0
    
    func incrementer() -> Int{
        runningTotal += amount
        return runningTotal
    }
    
    return incrementer
    
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()


let incrementByOne = makeIncrementer(forIncrement: 1)
incrementByOne()
incrementByOne()

incrementByTen()

//Clousures
func helloWorldWithClosure(closure: (String) -> Void) {
    print("1- Entered closure function")
    closure("Hello World")
    print("4- Exit closure function")
}

helloWorldWithClosure { (hello: String) in
    print("2- Entered function")
    print(hello)
    print("3- Exit function")
}

helloWorldWithClosure(closure: { (hello: String) in
    print("2- Entered function")
    print(hello)
    print("3- Exit function")     
})