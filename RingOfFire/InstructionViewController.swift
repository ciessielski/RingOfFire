//
//  InstructionViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 24.12.2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit

class InstructionViewController: UIViewController

{
 
    @IBOutlet weak var instructionTextView: UITextView!
    @IBOutlet weak var cardTitle: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        cardTitle.text = "Drink like a King"
        instructionTextView.text = "You must pour a little of your drink into the cup that is in the middle of the table. Whoever picks up the FORTH card must drink the whole cup, which could be filled with different drinks, so who knows how bad it could taste!";
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
