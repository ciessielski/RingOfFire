//
//  Gameplay.swift
//  RingOfFire
//
//  Created by Paweł Charatonik on 30.12.2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import Foundation

class Gameplay {
       
    var deck: NSMutableArray
    var cardOnTop: NSNumber

    init(deck:NSMutableArray, cardOnTop:NSNumber)
    {
        self.deck=deck
        self.cardOnTop=cardOnTop
    }
    
    func resetGame(){
    }
}

