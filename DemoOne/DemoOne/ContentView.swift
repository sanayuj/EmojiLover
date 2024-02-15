//
//  ContentView.swift
//  DemoOne
//
//  Created by Sanay UJ on 14/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        ZStack {
            Color(.systemMint).ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 12.0){
                Image("Image1").resizable().aspectRatio(contentMode:.fit)
                    .cornerRadius(20)
                HStack{ Text("Munnar").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).fontWeight(.bold)
                    Spacer()
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow).font(.caption)
                            Image(systemName: "star.fill") .foregroundColor(Color.yellow).font(.caption)
                            Image(systemName: "star.fill") .foregroundColor(Color.yellow).font(.caption)
                            Image(systemName: "star.fill") .foregroundColor(Color.yellow).font(.caption)
                            
                            Image(systemName: "star.leadinghalf.filled") .foregroundColor(Color.yellow).font(.caption)
                        }
                        Text("(Reviews 490)")
                    }
                   
                }
                    
                Text("Rose Garden Munnar is most popular place")
                HStack{
                    Spacer()
                    Image(systemName: "binoculars.fill").foregroundColor(.gray).font(.caption)
                    Image(systemName: "fork.knife")}.foregroundColor(.gray).font(.caption)
            }.padding()
                .background(Rectangle().foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius: 15)
                   )
                .padding()
        }

       
            
    }
}

#Preview {
    ContentView()
}
