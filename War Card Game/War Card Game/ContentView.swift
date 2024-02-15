//
//  ContentView.swift
//  War Card Game
//
//  Created by Sanay UJ on 15/02/24.
//

import SwiftUI


struct ContentView: View {
    @State  var playerCard:String="card2"
    @State var cpuCard:String="card4"
    
   @State var playerScore:Int=0
    @State var cpuScore:Int=0
    
    var body: some View {
        
        ZStack{
            
            Image("background-plain").resizable().ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()

                Button(action: {
                    shuffle()
                }, label: {
                    Image("button")
                })
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .padding(.bottom, 5.0)
                        Text(String( playerScore)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").padding(.bottom, 5.0)
                        Text(String(cpuScore)).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func shuffle(){
        func shuffle() -> (String, String) {
            var randomNumberOne=Int.random(in: 2...14)
            var randomNumberTwo=Int.random(in: 2...14)
             playerCard = "card" + String(randomNumberOne)
             cpuCard = "card" + String(randomNumberTwo)
            return (playerCard, cpuCard)
        }
         (playerCard, cpuCard) = shuffle()
        if playerCard < cpuCard{
            playerScore+=1
        }else{
            cpuScore+=1
        }
    }
}

#Preview {
    ContentView()
}
