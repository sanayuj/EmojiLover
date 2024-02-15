//
//  ContentView.swift
//  Hello world
//
//  Created by Sanay UJ on 14/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black) .ignoresSafeArea()
            VStack{
                
                
                Image("surfacecode")
                    .resizable()
                    .cornerRadius(20).aspectRatio(contentMode:.fit)
                Text("Welcome")
                    .foregroundColor(Color.white)
                
            }
        }
        
      
       }
}

#Preview {
    ContentView()
}
