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
        game = Gameplay()
        performSegueWithIdentifier("endToSwipe", sender: self)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let buttonString: String = NSLocalizedString("new game", comment: "new game")
        newGameButton.setTitle(buttonString, forState: UIControlState.Normal)
        
        let images: NSMutableArray = []
        for number in 1...18
        {
            var image = UIImage(named:"shuffle\(number)")
            images.addObject(image!)
        }
        
        endAnimationView.animationImages = images
        endAnimationView.animationDuration = 1.8
        endAnimationView.startAnimating()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
