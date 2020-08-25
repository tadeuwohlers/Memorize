//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Tadeu Wohlers Gambaro Lima on 24/08/20.
//  Copyright © 2020 Tadeu Wohlers. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame {
    
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["😀","🐔","🅱️"]
        
        return MemoryGame<String>(numberOfPairCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}   	    
