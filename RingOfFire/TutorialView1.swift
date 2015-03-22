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

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var textView3: UITextView!
    
    override func drawRect(rect: CGRect)
    {
        let attrs = [NSFontAttributeName : UIFont(name: "American typewriter", size: 13.0) ?? UIFont.systemFontOfSize(13.0)]

        
        self.titleLabel.text = NSLocalizedString("Things you'll need:", comment: "tutorialTitle1")
        self.titleLabel.backgroundColor = UIColor.clearColor()

        self.textView1.attributedText = NSAttributedString(string: NSLocalizedString("A phone with the Ring of Fire app installed and ready to play.", comment: "tutorialView1text1"), attributes: attrs)
        self.textView1.textAlignment = NSTextAlignment.Left;
        self.textView1.backgroundColor = UIColor.clearColor()
        
        self.textView2.attributedText = NSAttributedString(string: NSLocalizedString("An empty cup or bowl to put in the middle of the table.", comment: "tutorialView1text2"), attributes: attrs)
        self.textView2.textAlignment = NSTextAlignment.Right;
        self.textView2.backgroundColor = UIColor.clearColor()
        
        self.textView3.attributedText = NSAttributedString(string: NSLocalizedString("A group of friends who are willing to have the best night ever!", comment: "tutorialView1text3"), attributes: attrs)
        self.textView3.textAlignment = NSTextAlignment.Left;
        self.textView3.backgroundColor = UIColor.clearColor()
    }

}
