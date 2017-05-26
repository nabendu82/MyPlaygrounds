//: Playground - noun: a place where people can play

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
    
    func increaseLevel(){
        self.level += 1
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
    
    mutating func increaseLevel() {
        self.level += 1
    }
}

var varCC = CharacterClass(name: "Nabs", level: 1, team: nil)
var varCS = CharacterStruct(name: "Hridu", level: 1, team: nil)

varCC.level += 1
varCS.level += 1
varCC.increaseLevel()
varCS.increaseLevel()

print("varCC: \(varCC.level) varCS: \(varCS.level)")

let letCC = CharacterClass(name: "Nabendu", level: 1, team: nil)
let letCS = CharacterStruct(name: "Hriday", level: 1, team: nil)

letCC.level += 1
letCC.increaseLevel()
//letCS.level += 1 <- Cannot use let when using with struct
//letCS.increaseLevel() <- Cannot use let even with mutating function

print("letCC: \(letCC.level) letCS: \(letCS.level)")


