//
//  InstructionViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 24.12.2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController

{
 
    @IBOutlet weak var cardTitle: UILabel!
    @IBOutlet weak var cardView: UIImageView!
    @IBOutlet weak var cardInstructions: UITextView!
   
    @IBAction func throwCardAway(sender: UISwipeGestureRecognizer)
    {
        performSegueWithIdentifier("instructionToSwipe", sender: self)
        println("wywalam karte")
    }

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        cardTitle.text = activeCard.title
        cardView.image = UIImage(named: activeCard.slug)
        cardInstructions.text = activeCard.instructions
        cardInstructions.textAlignment = .Center
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}
