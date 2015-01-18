//
//  SwipeToShuffleViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 24.12.2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit


var game = Gameplay()
var activeCard : Card = game.deck[0]

class SwipeToShuffleViewController: UIViewController
{
    @IBOutlet weak var numberOfCardsLabel: UILabel!
    @IBOutlet var swipeToShuffleLabel: UILabel!
        
    override func viewDidLoad()
    {
        super.viewDidLoad()

        if(game.deck.count > 0)
        {
        }
        UIView.animateWithDuration(1.5, delay: 0, options: .Repeat | .Autoreverse , animations: {self.swipeToShuffleLabel.alpha = 0}, completion: nil)
        
        numberOfCardsLabel.text="Cards left: \(game.deck.count-1) "
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
