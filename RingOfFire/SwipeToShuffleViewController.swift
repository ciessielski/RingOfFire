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
    @IBOutlet var swipeDownGesture: UISwipeGestureRecognizer!

    
    override func viewDidAppear(animated: Bool)
    {
        super.viewDidAppear(animated)

        UIView.animateWithDuration(1.5, delay: 0, options: .Repeat | .Autoreverse , animations: {self.swipeToShuffleLabel.alpha = 0}, completion: nil)
        UIView.animateWithDuration(1.5, delay: 1.5, options: .Repeat | .Autoreverse , animations: {self.numberOfCardsLabel.alpha = 0}, completion: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        numberOfCardsLabel.text="cards left: \(game.deck.count-1)"
        
        if game.deck.count == 53
        {
            self.view.removeGestureRecognizer(swipeDownGesture)
        }
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
