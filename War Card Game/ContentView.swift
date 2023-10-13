//
//  ContentView.swift
//  War Card Game
//
//  Created by Kanhav Bhatnagar on 6/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "back"
    @State var cpuCard = "back"
    @State var playerCount = 0
    @State var cpuCount = 0
    var body: some View {
        ZStack(){
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack(){
                Spacer()
                Image("logo")
                Spacer()
                HStack(){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                Spacer()
                HStack(){
                    Spacer()
                    VStack(){
                        Text("PLAYER")
                        Text(String(playerCount))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack(){
                        Text("CPU")
                        Text(String(cpuCount))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                }
                .foregroundColor(.white)
                Spacer()
                }
            
            }
    }
    func deal(){
        var playerCardValue = Int.random(in: 2...14)
        var cpuCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        cpuCard = "card" + String(cpuCardValue)
        if(playerCardValue > cpuCardValue){
            playerCount+=1
        }
        else if(playerCardValue < cpuCardValue){
            cpuCount+=1
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
