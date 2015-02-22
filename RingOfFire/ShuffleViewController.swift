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
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let images: NSMutableArray = []
        for number in 1...18
        {
            var image = UIImage(named:"shuffle\(number)")
            images.addObject(image!)
        }
        
        shuffleImageView.animationImages = images
        shuffleImageView.animationDuration = 1.8
        shuffleImageView.startAnimating()

        game.deck.removeAtIndex(0)
        activeCard = game.deck[0]
        
        var alertSound = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("beat", ofType: "wav")!)
        var error:NSError?
        
        audioPlayer = AVAudioPlayer(contentsOfURL: alertSound, error: &error)
        audioPlayer.prepareToPlay()
        audioPlayer.play()

        NSTimer.scheduledTimerWithTimeInterval(1.8, target: self, selector:Selector("performSegue"), userInfo: nil, repeats: false)
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



