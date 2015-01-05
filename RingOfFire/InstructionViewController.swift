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
        cardTitle.text = game.deck[0].title
        instructionTextView.text = game.deck[0].instructions
        
//        if(game.deck.count > 0)
//        {
//            game.deck.removeAtIndex(0)
//        }
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
