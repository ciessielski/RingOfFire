//
//  TutorialView3.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 17.03.2015.
//  Copyright (c) 2015 Michał Ciesielski. All rights reserved.
//

import UIKit

class TutorialView3: UIView
{
    @IBOutlet weak var textView1: UITextView!

    override func drawRect(rect: CGRect)
    {
        self.textView1.text = NSLocalizedString("This game doas not encourage alcohol consumption. Please be careful upon playing to ensure the safety of you or anyone else. Don't peer pressure anyone into drinking or doing anything extremaly inappropriate against their own will. Respect and fun are fundamental principles of the game.", comment: "tutorialView3text1")
    }


}
