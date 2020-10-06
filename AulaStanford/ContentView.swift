//
//  ContentView.swift
//  AulaStanford
//
//  Created by Vicente Patricio on 06/10/20.
//

import SwiftUI

struct ContentView: View {
    
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack{
            ForEach(viewModel.cards) { card in
                CardView(card: card)
            }
        }
        .padding()
        .foregroundColor(.orange)
        .font(.largeTitle)
        
    }
}

struct CardView: View {
    
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 25.0).fill(Color.orange)
                RoundedRectangle(cornerRadius: 25.0).stroke(lineWidth: 4.0)
                Text(card.content)
            }else{
                RoundedRectangle(cornerRadius: 25.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView(viewModel: EmojiMemoryGame())
    }
}
