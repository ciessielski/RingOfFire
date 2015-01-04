//
//  ViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 18.12.2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit

class ShuffleViewController: UIViewController
{
    
    //start
    
    func performSegue()
    {
        let vc : UIViewController = self.storyboard?.instantiateViewControllerWithIdentifier("CardViewController") as CardViewController;
        self.presentViewController(vc, animated: false, completion: nil)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        NSTimer.scheduledTimerWithTimeInterval(1.5, target: self, selector:Selector("performSegue"), userInfo: nil, repeats: false)
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}



