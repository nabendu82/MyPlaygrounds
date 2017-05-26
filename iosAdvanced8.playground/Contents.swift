//Class are passed by reference and Struct are passed by Value.
//Struct cannot inherit from other struct but classes can.

class CharacterClass{
    var name: String
    var level:  Int = 0
    var team: String?
    
    func characterDescription(){
        print("\(name), is level \(level)")
        if let team = team{
            print("is part of the team \(team)")
        } else {
            print("Has no team")
        }
    }

    
    init(name:String, level:Int, team:String?) {
        self.name = name
        self.level = level
        self.team = team
    }
    
}

struct CharacterStruct{
    var name: String
    var level:  Int = 0
    var team: String?
    
    func characterDescription(){
        print("\(name), is level \(level)")
        if let team = team{
            print("is part of the team \(team)")
        } else {
            print("Has no team")
        }
    }
}


var class1 = CharacterClass(name: "Nabs", level: 1, team: nil)
var struct1 = CharacterStruct(name: "Hridu", level: 10, team: nil)

class1.name
struct1.name

var class2 = class1
var struct2 = struct1

class1.name
struct1.name
class2.name
struct2.name

class2.name = "Nabendu"
struct2.name = "Hriday"

class1.name
struct1.name
class2.name
struct2.name


var classMaster = CharacterClass(name: "Master", level: 1, team: nil)
var classIdentical = classMaster
var classEqual = CharacterClass(name: "Master", level: 1, team: nil)

if classMaster.name == classIdentical.name {
    print("Classes have same name")
}

if classMaster.name == classEqual.name {
    print("Classes have same name")
}

if classMaster === classIdentical {
    print("Classes are identical")
}else {
    print("Classes are not identical")
}


if classMaster === classEqual {
    print("Classes are identical")
}else {
    print("Classes are not identical")
}


