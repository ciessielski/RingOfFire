//
//  TutorialView2.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 17.03.2015.
//  Copyright (c) 2015 Michał Ciesielski. All rights reserved.
//

import UIKit

class TutorialView2: UIView
{
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var textView3: UITextView!
    
    
    override func awakeFromNib()
    {
        let attrs = [NSFontAttributeName : UIFont(name: "American typewriter", size: 13.0) ?? UIFont.systemFontOfSize(13.0)]
        
        self.titleLabel.text = NSLocalizedString("How to play:", comment: "tutorialTitle2")
        self.titleLabel.backgroundColor = UIColor.clearColor()
        
        self.textView1.attributedText = NSAttributedString(string: NSLocalizedString("Swipe the screen right or left to draw a card.", comment: "tutorialView2text1"), attributes: attrs)
        self.textView1.textAlignment = NSTextAlignment.Right;
        self.textView1.backgroundColor = UIColor.clearColor()
        
        self.textView2.attributedText = NSAttributedString(string: NSLocalizedString("Tap the screen to see instructions for the card.", comment: "tutorialView2text2"), attributes: attrs)
        self.textView2.textAlignment = NSTextAlignment.Left;
        self.textView2.backgroundColor = UIColor.clearColor()
        
        self.textView3.attributedText = NSAttributedString(string: NSLocalizedString("Swipe to the top and pass the phone to the next person.", comment: "tutorialView2text3"), attributes: attrs)
        self.textView3.textAlignment = NSTextAlignment.Right;
        self.textView3.backgroundColor = UIColor.clearColor()
    }
    


}
