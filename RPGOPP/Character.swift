//
//  Character.swift
//  RPGOPP
//
//  Created by Thomas Kan on 12/21/15.
//  Copyright © 2015 Thomas Kan. All rights reserved.
//

import Foundation
class Character {
    private var _hp: Int = 100
    private var _attackPwr: Int = 0
    
    
    var attackPwr: Int {
        get {return _attackPwr
            }
        }

    var hp: Int {
    get {
        return _hp
        }
    }
    
    init(startingHp: Int, attackPwr: Int) {
        self._hp = startingHp
        self._attackPwr = attackPwr
        
    }
    
    func attemptAttack(attackPwr: Int) -> Bool {
        self._hp -= attackPwr
    
        return true
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                
                return true}
        
                }
    }
}

