//
//  ViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 18.12.2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit
import AVFoundation

class ShuffleViewController: UIViewController
{
    
    
    
    @IBOutlet weak var shuffleImageView: UIImageView!
    var audioPlayer = AVAudioPlayer()
    
    let images = [
        UIImage(named: "shuffle1")!,
        UIImage(named: "shuffle2")!,
        UIImage(named: "shuffle3")!,
        UIImage(named: "shuffle4")!,
        UIImage(named: "shuffle5")!,
        UIImage(named: "shuffle6")!,
        UIImage(named: "shuffle7")!,
        UIImage(named: "shuffle8")!,
        UIImage(named: "shuffle9")!,
        UIImage(named: "shuffle10")!,
        UIImage(named: "shuffle11")!,
        UIImage(named: "shuffle12")!,
        UIImage(named: "shuffle13")!,
        UIImage(named: "shuffle14")!,
        UIImage(named: "shuffle15")!,
        UIImage(named: "shuffle16")!,
        UIImage(named: "shuffle17")!,
        UIImage(named: "shuffle18")!,]
    var index = 0
    let animationDuration: NSTimeInterval = 0
    let switchingInterval: NSTimeInterval = 0.1
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        

        game.deck.removeAtIndex(0)
        activeCard = game.deck[0]
        
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("beat", ofType: "wav")!)
        var error:NSError?
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    
        shuffleImageView.image = images[index++]
        animateImageView()
        NSTimer.scheduledTimerWithTimeInterval(1.8, target: self, selector:Selector("performSegue"), userInfo: nil, repeats: false)
    }
    
    func animateImageView() {
        CATransaction.begin()
        
        CATransaction.setAnimationDuration(animationDuration)
        CATransaction.setCompletionBlock {
            let delay = dispatch_time(DISPATCH_TIME_NOW, Int64(self.switchingInterval * NSTimeInterval(NSEC_PER_SEC)))
            dispatch_after(delay, dispatch_get_main_queue()) {
                self.animateImageView()
            }
        }
        
        let transition = CATransition()
        transition.type = kCATransitionPush
        shuffleImageView.layer.addAnimation(transition, forKey: kCATransition)
        shuffleImageView.image = images[index]
        
        CATransaction.commit()
        
        index = index < images.count - 1 ? index + 1 : 0
    }

    func performSegue()
    {
        let vc : UIViewController = self.storyboard?.instantiateViewControllerWithIdentifier("CardViewController") as CardViewController;
        self.presentViewController(vc, animated: false, completion: nil)
    }
    

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}



