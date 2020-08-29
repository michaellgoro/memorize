//
//  ContentView.swift
//  Memorize
//
//  Created by 野田裕介 on 2020/08/26.
//  Copyright © 2020 michaellgoro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card).onTapGesture{
                    self.viewModel.choose(card: card)
                }
            }
        }
            .padding()
            .foregroundColor(.orange)
            .font(viewModel.cards.count == 5 ? Font.title : Font.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    var body: some View {
        ZStack{
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                    .aspectRatio(2/3,contentMode: .fit)//task3
                Text(card.content)
            }else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            
            }
        }
    }
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
