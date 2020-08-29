//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 野田裕介 on 2020/08/26.
//  Copyright © 2020 michaellgoro. All rights reserved.
//
//  ViewModel(ModelとViewをつなぐ)
import Foundation

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻","🎃","🕷","💀","🧙"]
//        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
        return MemoryGame<String>(numberOfPairsOfCards: Int.random(in: 2...5)) { pairIndex in
            return emojis[pairIndex]
        }
        
    }
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
//        model.cards
        return model.cards.shuffled()//task2
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
