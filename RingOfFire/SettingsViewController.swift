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
    
    @IBAction func goToStoreButton(sender: UIButton)
    {
        UIApplication.sharedApplication().openURL(NSURL(string:  NSLocalizedString("http://rudypijegin.pl/en/shop/ring-of-fire-cards", comment: "url"))!)
    }

    @IBAction func restartAction(sender: AnyObject)
    {
        let alertController = UIAlertController(title: NSLocalizedString("Restart game", comment: "alert"), message:NSLocalizedString("Are you sure?", comment: "alertDetail") , preferredStyle: .Alert)

        let cancelAction = UIAlertAction(title: NSLocalizedString("Nope", comment: "n"), style: .Cancel)
        {(action) in}
        alertController.addAction(cancelAction)
        
        let OKAction = UIAlertAction(title: NSLocalizedString("Restart", comment: "r"), style: .Default)
        {(action) in self.restartGame()}
        alertController.addAction(OKAction)
        
        self.presentViewController(alertController, animated: true){}
    }
    
    func restartGame()
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