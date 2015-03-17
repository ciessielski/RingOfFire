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
        self.textView1.text = NSLocalizedString("Taking turns, each player swipes the screen to find out what's on around the table.", comment: "tutorialView2text1")
        self.textView2.text = NSLocalizedString("Click on the illustrations to find descriptions of mini-games. Remember, whoever loses has to drink!", comment: "tutorialView2text2")
        self.textView3.text = NSLocalizedString("If the game gets out of control, simply swipe to the top. Then you will see the last mini-game randomized.", comment: "tutorialView2text3")
    }


}
