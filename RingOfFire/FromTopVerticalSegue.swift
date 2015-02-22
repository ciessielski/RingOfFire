//
//  UncoverVerticalSegue.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 16.01.2015.
//  Copyright (c) 2015 Michał Ciesielski. All rights reserved.
//



import UIKit
@objc(FromTopVerticalSegue)

class FromTopVerticalSegue: UIStoryboardSegue
{
    override func perform()
    {
        var sourceViewController = self.sourceViewController as UIViewController
        var destinationViewController = self.destinationViewController as UIViewController
        var duplicatedSourceView: UIView = sourceViewController.view.snapshotViewAfterScreenUpdates(false)
        destinationViewController.view.addSubview(duplicatedSourceView)
        
        sourceViewController.presentViewController(destinationViewController, animated: false, completion:
            {
                UIView.animateWithDuration(0.33, delay: 0.0, options: UIViewAnimationOptions.CurveEaseOut,
                animations:
                    { () -> Void in
                        duplicatedSourceView.transform = CGAffineTransformMakeTranslation(0, duplicatedSourceView.frame.size.height)
                    },
                completion:
                    { (finished: Bool) -> Void in
                    duplicatedSourceView.removeFromSuperview()
                    })
            })
    }
}
