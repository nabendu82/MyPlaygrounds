//: Playground - noun: a place where people can play

class Character{
    var name: String?
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
    
    init(name:String){
        self.name = name
    }
    
    init(name:String, level:Int, team:String) {
        self.name = name
        self.level = level
        self.team = team
    }
    
}

var character1 = Character(name: "Nabendu")
character1.name
character1.level
character1.team

var character2 = Character(name: "Hriday", level: 20, team: "Biswas")
character2.name
character2.level
character2.team

