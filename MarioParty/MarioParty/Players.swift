//
//  Players.swift
//  MarioParty
//
//  Created by fahad alrashed on 7/3/20.
//  Copyright © 2020 Dalal Alhazeem. All rights reserved.
//

import Foundation
struct Player {
    var name: String
    func BG() -> String{
        return name + "BG"
    }
    func musicName() -> String{
        return name + ".WAV"
    }
}

var players: [Player] =
[
    Player(name: "Mario"),
    Player(name: "Bowser"),
    Player(name: "Luigi"),
    Player(name: "Peach"),
    Player(name: "Waluigi"),
    Player(name: "Yoshi"),
]
