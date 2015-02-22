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

    @IBAction func newGame(sender: AnyObject)
    {
        game = Gameplay()
        performSegueWithIdentifier("endToSwipe", sender: self)
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
