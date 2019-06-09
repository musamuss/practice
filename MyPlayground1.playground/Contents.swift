import UIKit
class player {
    let name: String
    let game : String
    let age : Int
    
    var playerInfo: String {
        let playerInfo = """
player name is \(name)
        game is \(game)
        He is \(age) year old.
"""
        return playerInfo
    }
    
    init(name: String, game: String , age: Int){
        self.name = name
        self.game = game
        self.age = age
        
    }
}


class professionalPlayer : player {
    let exp : Int
    let retiremetAge: Int
    init(name: String, game: String, age: Int, exp: Int, retiremetAge: Int) {
        self.exp = exp
        self.retiremetAge = retiremetAge
        super.init(name: name, game: game, age: age)
    }
}
let Player1 = professionalPlayer(name: "Musa", game:"dota" , age: 21, exp: 5, retiremetAge: 22)
Player1.playerInfo
print(Player1.playerInfo)

protocol politePlayer {
    var friend: [player] {get}
    var haveFriend : Bool {get}
    func smile()
    func apoligize() -> String
}
extension professionalPlayer: politePlayer{
    var friend: [player] {
        return [player(name: "igor", game: ",bf4", age: 21)]
    }
    
    var haveFriend: Bool {
        return !friend.isEmpty
    }
    
    func smile() {
        print("smile motherfucker")
    }
    
    func apoligize() -> String {
        print("sorry")
        return "soory"
    }
    
    
}
