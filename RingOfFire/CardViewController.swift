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
    
    @IBAction func swipeLeft(sender: UISwipeGestureRecognizer)
    {
        self.nextCard()
    }
    
    @IBAction func swipeRight(sender: UISwipeGestureRecognizer)
    {
        self.nextCard()
    }
    
    func nextCard()
    {
        if game.deck.count < 49
        {
            game.willPickNewCard = true
            performSegueWithIdentifier("cardToShuffle", sender: self)
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
    
    override func viewWillAppear(animated: Bool) {
        //if not picking new card, present the card without animation *early*
        if (!game.willPickNewCard)
        {
            presentCardAnimated(game.willPickNewCard)
        }
    }
    
    override func viewDidAppear(animated: Bool)
    {
        //if picking new card, present it with animation *later*
        if (game.willPickNewCard)
        {
            presentCardAnimated(game.willPickNewCard)
        }
    }
    
    override func viewWillDisappear(animated: Bool)
	{
        game.willPickNewCard = false
    }
    
    func presentCardAnimated(animated: Bool)
	{
        
        if (animated)
        {
            //fade-in animation
            UIView.animateWithDuration(0.3,
									animations:
											   {() -> Void in
                									self.cardView.alpha = 1
           									   })
            
            //slide-in animation
            //to animate constraints, set them to desired values first (here) and then have them updated in animation block
            imageToSuperTop.constant = 0
            imageToSuperBottom.constant = 0
            
            UIView.animateWithDuration(0.4, delay: 0.0,
						   usingSpringWithDamping: 0.5,
							initialSpringVelocity: 7,
										  options:.CurveEaseInOut,
									   animations: { () -> Void in
               											 //update constraints
                									     self.view.layoutIfNeeded()
               									   },
									  completion: nil)
        }
        else
        {
            cardView.alpha = 1
            imageToSuperTop.constant = 0
            imageToSuperBottom.constant = 0
            view.layoutIfNeeded()
        }
        
        
    }
    
}