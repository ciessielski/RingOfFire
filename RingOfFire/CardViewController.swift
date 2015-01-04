//
//  CardViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 24.12.2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit

class CardViewController: UIViewController
{
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        var game = Gameplay()    // nie w viewdidload 
        for i in 0...51 {
           println("Wylosowana karta to \(game.deck[i].title)")
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}