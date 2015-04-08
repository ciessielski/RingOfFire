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
    ["castle"      : NSLocalizedString("You can make up any rule that everyone has to follow, for example players can only drink with their right hand or players cannot use word “drink”. Everyone (including you) must follow this rule for the whole entire game and if you disobey you must drink."
        , comment: "instructionCastle")
        , "categories" : NSLocalizedString("Pick a category (such as Countries) and you go in a circle and everyone has to say a word that matches the chosen category such as: Lithuania, England, Egypt and so on."
            , comment: "instructionCategories")
        , "chicks"     : NSLocalizedString("All girls drink."
            , comment: "instructionChicks")
        , "you"        : NSLocalizedString("You must drink."
            , comment: "instructionYou")
        , "choose"     : NSLocalizedString("You can choose someone to drink."
            , comment: "instructionChoose")
        , "dicks"      : NSLocalizedString("All guys drink."
            , comment: "instructionDics")
        , "mate"       : NSLocalizedString("Choose someone to drink with you. Whenever you are forced to drink, the chosen person needs to do the same."
            , comment: "instructionMate")
        , "heaven"     : NSLocalizedString("The player who draws this card can point their finger at the sky at any point during the game. When this happens, all other players must race to point their finger to the sky and whoever is last must drink."
            , comment: "instructionHeaven")
        , "fis"        : NSLocalizedString("Starting with the player who draws, players take it in turns to count up from a chosen number. Any number with 5 in it or that is a multiple of 5 is replaced with the word ‘FIS’. Any number with 7 in it or that is a multiple of 7 is replaced with the word ‚BAS’. Not to make it too easy, every time the word „BAS” is used, the direction of the play switches."
            , comment: "instructionFis")
        , "story"      : NSLocalizedString("Starting from the person who picked up this card, everyone adds a word to a story repeating what has been said earlier."
            , comment: "instructionStory")
        , "snake"      : NSLocalizedString("After picking this card, whoever looks into your eyes must drink. This lasts until the next Snake Eyes card is drawn by a different player."
            , comment: "instructionSnake")
        , "king"       : NSLocalizedString("You must pour a little of your drink into the cup that stands in the middle of the table. Whoever picks up the FORTH card must drink the whole cup, which could be filled with different drinks, so who knows how bad it could taste!"
            , comment: "instructionKing")
        , "rhyme"      : NSLocalizedString("You say a word (or a sentence), and the person to your left has to say a word that rhymes with it. This continues around the table until someone can't think of a word and they must drink. The same word cannot be used twice."
            , comment: "instructionRhyme")
        , "tale"       : NSLocalizedString("Each player takes it in turns to say one word from the sentence: „The Frog Jumped in the Pond!” Once the sentence has been completed, the play continues around the circle in the same manner, except that each word of the sentence must be said twice, with each person still only saying one word. The game is then continued by repeating each word of the sentence thrice. Alternatively, you may wish to use your own sentence."
            , comment: "instructionTale")
        , "smoke"      : NSLocalizedString("This card allows you to make break. Roll a doubie and chill out with the homies ;>"
            , comment: "instructionSmoke")]
    
    
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
        println("no of cards : \(deck.count)")
    }
    
    func resetGame()
    {
        deck=[]
        createDeck()
        assignAttributes()
        shuffle()
    }
}
