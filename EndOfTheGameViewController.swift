//
//  EndOfTheGameViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 28.01.2015.
//  Copyright (c) 2015 Michał Ciesielski. All rights reserved.
//

import UIKit

class EndOfTheGameViewController: UIViewController {

    @IBAction func newGameClicked(sender: AnyObject) {
        game = Gameplay()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
