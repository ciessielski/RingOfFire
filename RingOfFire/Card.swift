//
//  Card.swift
//  RingOfFire
//
//  Created by Paweł Charatonik on 02.01.2015.
//  Copyright (c) 2015 Michał Ciesielski. All rights reserved.
//

import Foundation



class Card
{

    var title : String?
    var instructions : String?
    var slug : String
    
    init(slug: String)
    {
        self.slug = slug
    }

}