//
//  Gameplay.swift
//  RingOfFire
//
//  Created by Paweł Charatonik on 30.12.2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//  .
// to do: fix last fis, descriptions for smoke and king

import Foundation

class Gameplay
{
    var deck: Array<Card> = []
    var kingCounter = 0
    var titlesDictionary =
        [ "castle"     : "King of the Castle"
        , "categories" : "Categories"
        , "chicks"     : "Chicks"
        , "you"        : "You Drink"
        , "choose"     : "You Choose"
        , "dicks"      : "Dicks"
        , "mate"       : "Pick a Mate"
        , "heaven"     : "Heaven"
        , "fis"        : "Fis & Bas"
        , "story"      : "Story"
        , "snake"      : "Snake Eyes"
        , "king"       : "Drink Like a King"
        , "rhyme"      : "Rhyme"
        , "tale"       : "Tale"
        , "smoke"      : "Smoke Break"]
    
    var instructionsDictionary =
    ["castle"      : NSLocalizedString("Make a new rule. For example: players can only drink with their right hand, or players cannot use the word “drink”. Everyone (including you) must follow this rule for the entire game and should anyone fail - they drink."
        , comment: "instructionCastle")
        , "categories" : NSLocalizedString("Pick a category (such as Countries). Then you go in a circle and everyone has to say a word that matches the chosen category - such as Lithuania, England, Egypt and so on."
            , comment: "instructionCategories")
        , "chicks"     : NSLocalizedString("All girls drink."
            , comment: "instructionChicks")
        , "you"        : NSLocalizedString("You must drink."
            , comment: "instructionYou")
        , "choose"     : NSLocalizedString("You have to choose someone to drink."
            , comment: "instructionChoose")
        , "dicks"      : NSLocalizedString("All guys drink."
            , comment: "instructionDics")
        , "mate"       : NSLocalizedString("Choose someone to drink with you. From now, whenever you drink, they drink too - and vice versa."
            , comment: "instructionMate")
        , "heaven"     : NSLocalizedString("The player who draws this card can point their finger at the sky at any time during the game. When this happens, all other players must race to point their finger to the sky - whoever is last, drinks."
            , comment: "instructionHeaven")
        , "fis"        : NSLocalizedString("Pick a number and direction. One after another, players count up from the chosen number. Any number that is a multiple of 5 has to be replaced with the word ‘FIS’. Any number with a 7 in it or that is a multiple of 7 has to be replaced with the word ‚BAS’. Just so it's not too easy, every time the word „BAS” is used, the direction of the play changes."
            , comment: "instructionFis")
        , "story"      : NSLocalizedString("Begin a story by saying a word. Every player has to repeat everything that's been said earlier and add a word from themselves"
            , comment: "instructionStory")
        , "snake"      : NSLocalizedString("From the moment you draw this card, whoever looks into your eyes must drink. This lasts until the next Snake Eyes card is drawn by a different player."
            , comment: "instructionSnake")
        , "king"       : NSLocalizedString("Everyone pours a little of their drink into the cup that stands in the middle of the table. Whoever picks up the FOURTH card must drink the whole cup, now filled with everyone's booze and best wishes!"
            , comment: "instructionKing")
        , "rhyme"      : NSLocalizedString("You say a word (or a sentence) and the person on your left has to say something that rhymes with it. This continues around the table until someone can't think of a rhyme - they have to drink. Same words cannot be used twice."
            , comment: "instructionRhyme")
        , "tale"       : NSLocalizedString("You say a sentence. In turns, every player has to say one word from that sentence. Once you reach the end of the sentence, the play continues around the circle in the same manner, only now each word of the sentence must be repeated twice (once you reach the end, three times, then four times etc.). Whoever messes it up - drinks!"
            , comment: "instructionTale")
        , "smoke"      : NSLocalizedString("This card allows you to take a break. Roll a doubie and chill out with the homies ;>"
            , comment: "instructionSmoke")]
    
    
    var willPickNewCard = true
    
    
    init()
    {
        createDeck()
        shuffle()
        assignAttributes()
    }
    
    
    
    func createDeck()
    {
        
        for i in 1...2
        {
            //deck.append(Card(slug: "smoke"))      added later
            deck.append(Card(slug: "castle"))
        }
        
        for i in 1...3
        {
            deck.append(Card(slug: "snake"))
            deck.append(Card(slug: "dicks"))
            deck.append(Card(slug: "chicks"))
            deck.append(Card(slug: "mate"))
            deck.append(Card(slug: "king"))
        }
        
        for i in 1...4
        {
            
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
    
    func assignAttributes()
    {
        for card in deck
        {
            card.title = titlesDictionary[card.slug]
            card.instructions = instructionsDictionary[card.slug]
        }
    }
    
    func shuffle()
    {
        var tempDeck : Array<Card> = []
        
        for i in 1...49  //till the number of cards in deck - smoke braek and one king
        {
            let j = Int(arc4random_uniform(UInt32(deck.count)))
            tempDeck.append(deck[j])
            deck.removeAtIndex(j)
        }
        let placeForSmoke1 = Int(arc4random_uniform(UInt32(10)))+10
        let placeForSmoke2 = Int(arc4random_uniform(UInt32(10)))+30
        let placeForKing4 = Int(arc4random_uniform(UInt32(3)))+48
        
        deck = tempDeck
        deck.insert(Card(slug:"king"), atIndex: 0)
        deck.insert((Card(slug:"smoke")), atIndex: placeForSmoke1)
        deck.insert((Card(slug:"smoke")), atIndex: placeForSmoke2)
        deck.insert((Card(slug:"king")), atIndex: placeForKing4)
    }
    
    func resetGame()
    {
        deck=[]
        createDeck()
        shuffle()
        assignAttributes()
        kingCounter=0
    }
}
