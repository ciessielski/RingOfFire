//
//  SettingsViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 24.12.2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController
{
    @IBAction func continueAction(sender: AnyObject)
    {
        performSegueWithIdentifier("backToGame", sender: self)
    }
    
    @IBAction func goToStoreButton(sender: UIButton) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://rudypijegin.pl/shop/ring-of-fire-karty-gry/")!)
    }

    @IBAction func restartAction(sender: AnyObject)
    {
        game = Gameplay()
        performSegueWithIdentifier("backToGame", sender: self)
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