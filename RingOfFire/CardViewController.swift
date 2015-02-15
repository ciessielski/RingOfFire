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
    @IBOutlet var throwCardAway: UISwipeGestureRecognizer!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var i = 0
        var activeCard = game.deck[i]
        
        cardView.image = UIImage(named: activeCard.slug)
     
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}