//
//  Enemy.swift
//  RPGOPP
//
//  Created by Thomas Kan on 12/21/15.
//  Copyright © 2015 Thomas Kan. All rights reserved.
//

import Foundation
class Enemy: Character {
    
    var loot: [String]{
        
        return ["rusty dagger", "Cracked Buckler"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
}

