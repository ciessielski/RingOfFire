//
//  PageItemViewController.swift
//  RingOfFire
//
//  Created by Michał Ciesielski on 10.01.2015.
//  Copyright (c) 2015 Michał Ciesielski. All rights reserved.
//

import UIKit


class PageItemController: UIViewController
{
    @IBOutlet weak var buffor: UIImageView!
    
    var itemIndex: Int = 0
    var imageName: String = ""
    {
        didSet
        {
            if let imageView = contentImageView
            {
                imageView.image = UIImage(named: imageName)
            }
        }
    }
    
    @IBOutlet var contentImageView: UIImageView?
    
    
    func loadAnimationsBeforeRunningThem()
    {
            if(NSUserDefaults.standardUserDefaults().stringForKey("firstOpen") == ("no"))
            {
                
            }
            else
            {
                let images: NSMutableArray = []
                
                for number in 1...19
                {
                    var image = UIImage(named:"s\(number)")
                    images.addObject(image!)
                }
                
                for number in 6...26
                {
                    if (number != 7)        // there was no image with the number 7
                    {
                        var image = UIImage(named:"Layer_\(number)")
                        images.addObject(image!)
                    }
                }
                
                buffor.animationImages = images as [AnyObject]
                buffor.startAnimating()
            }

    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loadAnimationsBeforeRunningThem()
        contentImageView!.image = UIImage(named: imageName)
    }
}

