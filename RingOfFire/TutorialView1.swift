//
//  TutorialView1.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 17.03.2015.
//  Copyright (c) 2015 Michał Ciesielski. All rights reserved.
//

import UIKit

class TutorialView1: UIView
{

    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var textView3: UITextView!
    
    override func drawRect(rect: CGRect)
    {
        self.textView1.textColor = UIColor.redColor()
        
        self.textView1.text = NSLocalizedString("A phone with the Ring of Fire app installed and ready to play.", comment: "tutorialView1text1")
        self.textView2.text = NSLocalizedString("An empty cup or bowl to put in the middle of the table.", comment: "tutorialView1text2")
        self.textView3.text = NSLocalizedString("A group of friends who are willing to have the best night ever!", comment: "tutorialView1text3")
    }

}
