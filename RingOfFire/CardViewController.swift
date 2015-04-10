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
    
    @IBOutlet weak var imageToSuperTrailing: NSLayoutConstraint!
    
    @IBOutlet weak var imageToSuperTop: NSLayoutConstraint!

    @IBOutlet weak var imageToSuperLeading: NSLayoutConstraint!
    
    @IBOutlet weak var imageToSuperBottom: NSLayoutConstraint!
    
    @IBAction func throwCardAway(sender: UISwipeGestureRecognizer)
    {
        if (game.deck.count == 1)
        {
            performSegueWithIdentifier("cardToEnd", sender: self)
        }
        else
        {
            performSegueWithIdentifier("cardToSwipe", sender: self)
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        var activeCard = game.deck[0]
        cardView.image = UIImage(named: activeCard.slug)
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidAppear(animated: Bool) {

        //fade-in animation
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            self.cardView.alpha = 1;
           
        })
        
        imageToSuperTop.constant = 0
        imageToSuperLeading.constant = 0
        imageToSuperTrailing.constant = 0
        imageToSuperBottom.constant = 0

        //distortion animation
        UIView.animateWithDuration(0.5, delay: 0.1, usingSpringWithDamping: 0.4, initialSpringVelocity: 10, options:nil, animations: { () -> Void in
            
            self.view.layoutIfNeeded()
            

        }, completion: nil)
        
    }
}