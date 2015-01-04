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
    @IBOutlet weak var cardView: UIImageView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print("liczba kart: \(game.deck.count)")
        for i in 0...game.deck.count-1 {
            println("Wylosowana karta to \(game.deck[i].title)")
        }
        cardView.image=UIImage(named: game.deck[0].slug);
        if(game.deck.count > 0){
            game.deck.removeAtIndex(0)
        }
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}