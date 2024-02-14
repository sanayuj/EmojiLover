//
//  ContentView.swift
//  EmojiLover
//
//  Created by Sanay UJ on 13/02/24.
//

import SwiftUI

enum Emoji:String,CaseIterable{
    case 🐶 , 🐱 , 🦜 , 🐟
}

struct ContentView: View {
    @State var value:Emoji = .🐟
    var body: some View {
        NavigationView{
            VStack{
                Text(value.rawValue).font(.system(size: 150))
                Picker("Emoji selector", selection: $value) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }.pickerStyle(.segmented)
            }.navigationTitle("Pet Selector")
                .padding()
        }
       
    }
}

#Preview {
    ContentView()
}
