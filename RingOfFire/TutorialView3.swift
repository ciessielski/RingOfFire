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
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textView1: UITextView!

    override func awakeFromNib()
    {
        let attrs = [NSFontAttributeName : UIFont(name: "American typewriter", size: 13.0) ?? UIFont.systemFontOfSize(13.0)]
        
        self.titleLabel.text = NSLocalizedString("NOTES:", comment: "tutorialTitle3")
        self.titleLabel.backgroundColor = UIColor.clearColor()
        
        self.textView1.attributedText = NSAttributedString(string: NSLocalizedString("This game does not encourage alcohol consumption. \n \n Please be careful upon playing to ensure the safety of you or anyone else. Don't peer pressure anyone into drinking or doing anything extremaly inappropriate against their own will. \n \n Respect and fun are fundamental principles of the game.", comment: "tutorialView3text1"), attributes: attrs)
        self.textView1.textAlignment = NSTextAlignment.Center;
        self.textView1.backgroundColor = UIColor.clearColor()
    }


}
