//
//  Gameplay.swift
//  RingOfFire
//
//  Created by Paweł Charatonik on 30.12.2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import Foundation

class Gameplay {
    
    var deck: Array<Card> = []
//    var cardOnTop: NSNumber?
    
    var titlesDictionary = ["castle": "King of the Castle", "categories" : "Categories", "chicks" : "Chicks", "you" : "You Drink", "choose" : "You Choose", "dicks" : "Dicks", "mate" : "Pick a Mate", "heaven" : "Heaven", "fis" : "Fis & Bas", "story" : "Story", "snake" : "Snake Eyes", "king" : "Drink Like a King", "rhyme" : "Rhyme", "tale" : "Tale", "smoke" : "Smoke Break"]

     var instructionsDictionary = ["castle": "King of the Castle", "categories" : "Categories", "chicks" : "Chicks", "you" : "You Drink", "choose" : "You Choose", "dicks" : "Dicks", "mate" : "Pick a Mate", "heaven" : "Heaven", "fis" : "Fis & Bas", "story" : "Story", "snake" : "Snake Eyes", "king" : "Drink Like a King", "rhyme" : "Rhyme", "tale" : "Tale", "smoke" : "Smoke Break"]
    
    init()
    {
        createDeck()
        assignAttributes()
//        shuffle()
    }
    
    func createDeck() {
        //double loop
        for i in 0...1 {
            deck.append(Card(slug: "smoke"))
            deck.append(Card(slug: "castle"))
        }
        
        //triple loop
        for i in 0...2 {
            deck.append(Card(slug: "snake"))
            deck.append(Card(slug: "dicks"))
            deck.append(Card(slug: "chicks"))
            deck.append(Card(slug: "mate"))
        }
        
        //quadruple loop
        for i in 0...3 {
            deck.append(Card(slug: "king"))
            deck.append(Card(slug: "story"))
            deck.append(Card(slug: "categories"))
            deck.append(Card(slug: "tale"))
            deck.append(Card(slug: "heaven"))
            deck.append(Card(slug: "you"))
            deck.append(Card(slug: "choose"))
            deck.append(Card(slug: "rhyme"))
            deck.append(Card(slug: "fis"))
        }

    }
    
    func assignAttributes() {
        for card in deck {
            card.title = titlesDictionary[card.slug]
            card.instructions = instructionsDictionary[card.slug]
        }
    }
    
    func shuffle(){
        //crashes at half of deck's count. debug
        var tempDeck : Array<Card> = []
        var times = deck.count-1
        for i in 0...times { //wykonaj 58 razy (deck.count)
            let j = Int(arc4random_uniform(UInt32(deck.count-i)))
            
            println("jest \(deck.count) elementów, usuwamy el o indeksie \(j)")
//            println(j)
//            println(i)
//            tempDeck.append(deck.removeAtIndex(0))
            
        }
        
    
        
        deck = tempDeck
    }
    
    func resetGame(){
    }
}


