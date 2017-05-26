

// var variable
// } part of the code that the variable is finish
class TestVariable{
    
    typealias Closure = () -> Void
    
    var clousureDic = [String:Closure]()
    
    var test = false //Global - scope from the class
    
    func testVariable(){
        var local = "no test" //local scrop from the function
        if test == false{
            let printFalse = "Variable is false" //scope of if
            local = printFalse
            print ("Start Download")
            clousureDic["false"] = {
                print("\(printFalse) from inside the closure")
                print ("Finish downloading")
            }
        } //variable printFalse scope end
        else{
            let printTrue = "Variable is true" //scope of else
            local = printTrue
            clousureDic["false"] = {
                print("\(printTrue) from inside the closure")
            }
        } // variable printTrue scope end
        print ("Life goes on")
        if let closureFun = clousureDic["false"]{
            closureFun()
        }
    } // variable local end
    
    func anotherTest() -> Closure{
        func retunrClosure() -> Void{
            print ("another test")
        }
        return retunrClosure
    }
    
    func evenAnotherTest () -> () -> Void{
        let test = "even another test"
        func retunrClosure() -> Void{
            print (test)
        }
        return retunrClosure
    }
    
    func receiveAClosure (closure:Closure){
        print("Inside receiveAClosure")
        closure()
    }
    
}// variable test scope end

var testVariable = TestVariable()
testVariable.testVariable()
testVariable.evenAnotherTest()()
var evenAnotherTest = testVariable.evenAnotherTest()
evenAnotherTest()
testVariable.receiveAClosure(closure: evenAnotherTest)


