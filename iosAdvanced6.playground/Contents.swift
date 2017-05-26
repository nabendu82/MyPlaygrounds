//: Playground - noun: a place where people can play

struct Character{
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

var character1:Character
character1 = Character(name: "Nabs", level: 1, team: nil)
character1.name
character1.level

if character1.team == nil{
    print("no team")
}

character1.characterDescription()
character1.team = "New Team"
character1.characterDescription(a