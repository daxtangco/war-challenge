//
//  ContentView.swift
//  war-challenge
//
//  Created by Dax Tangco on 2/20/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        
        ZStack {
            Image("background")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
                
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    
                    // Generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    // Update the score
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if playerRand < cpuRand {
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }

                Spacer()
                HStack {
                    Spacer()
                    Text("Player")
                        .font(.headline)
                        .foregroundColor(Color.white)
                    Spacer()
                    Text("CPU")
                        .font(.headline)
                        .foregroundColor(Color.white)
                    Spacer()
                }
                HStack {
                    Spacer()
                    Text(String(playerScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.vertical)
                    Spacer()
                    Text(String(cpuScore))
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .padding(.vertical)
                    Spacer()
                }
                Spacer()
                
                
            }
        }
        
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()

            
    }
}
