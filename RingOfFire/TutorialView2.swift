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

    @IBOutlet weak var textView1: UITextView!
    @IBOutlet weak var textView2: UITextView!
    @IBOutlet weak var textView3: UITextView!
    
    
    override func drawRect(rect: CGRect)
    {
        let attrs = [NSFontAttributeName : UIFont(name: "American typewriter", size: 13.0) ?? UIFont.systemFontOfSize(13.0)]
        
        self.textView1.attributedText = NSAttributedString(string: NSLocalizedString("Taking turns, each player swipes the screen to find out what's on around the table.", comment: "tutorialView2text1"), attributes: attrs)
        self.textView2.attributedText = NSAttributedString(string: NSLocalizedString("Click on the illustrations to find descriptions of mini-games. Remember, whoever loses has to drink!", comment: "tutorialView2text2"), attributes: attrs)
        self.textView3.attributedText = NSAttributedString(string: NSLocalizedString("If the game gets out of control, simply swipe to the top. Then you will see the last mini-game randomized.", comment: "tutorialView2text3"), attributes: attrs)
    }


}
