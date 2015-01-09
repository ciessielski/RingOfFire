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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentImageView!.image = UIImage(named: imageName)
    }
}

