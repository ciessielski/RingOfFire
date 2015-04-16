//
//  EndOfTheGameViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 28.01.2015.
//  Copyright (c) 2015 Michał Ciesielski. All rights reserved.
//

import UIKit

class EndOfTheGameViewController: UIViewController
{

    
    @IBOutlet weak var newGameButton: UIButton!
    @IBOutlet weak var endAnimationView: UIImageView!
    @IBAction func newGame(sender: AnyObject)
    {
        game.resetGame()
        performSegueWithIdentifier("endToSwipe", sender: self)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let buttonString: String = NSLocalizedString("new game", comment: "new game")
        newGameButton.setTitle(buttonString, forState: UIControlState.Normal)
        
        let images: NSMutableArray = []
        for number in 6...26
        {
            if (number != 7)        // there was no image with the number 7
            {
                var image = UIImage(named:"Layer_\(number)")
                images.addObject(image!)
            }
        }
        
        endAnimationView.animationImages = images as [AnyObject]
        endAnimationView.animationDuration = 1.8
        endAnimationView.startAnimating()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
