//
//  EmojiMemoryGame.swift
//  AulaStanford
//
//  Created by Vicente Patricio on 06/10/20.
//

import Foundation

import Foundation

class EmojiMemoryGame {
    //private(set): variável privada a classe, porém apenas leitura para o mundo externo
    private(set) var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame() //acessando a model e passando o tipo de conteúdo do jogo
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👏🏻", "🚀", "🔥"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    func choose(card: MemoryGame<String>.Card){
        return model.choose(card: card)
    }
}
