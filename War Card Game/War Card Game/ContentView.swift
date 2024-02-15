//
//  ContentView.swift
//  War Card Game
//
//  Created by Sanay UJ on 15/02/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
           
            Image("background-plain").resizable().ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image("back")
                    Spacer()
                    Image("back")
                    Spacer()
                }
               Spacer()
                Image("button")
                Spacer()
               
                HStack{
                    Spacer()
                   
                    VStack{
                        Text("Player")
                            .padding(.bottom, 5.0)
                        Text("0").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").padding(.bottom, 5.0)
                        Text("0").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }}

#Preview {
    ContentView()
}
