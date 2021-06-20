//
//  ContentView.swift
//  Shared
//
//  Created by Kunsang Wangyal on 20/06/21.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard="card2"
    @State private var cpuCard="card3"
    @State private var playerScore=0
    @State private var cpuScore=0
    var body: some View {
        VStack {
            
            Spacer()
            Image("ironman")
            Spacer()
            HStack{
                Spacer()
                Image(playerCard)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 150)
                Spacer()
                Image(cpuCard)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 150)
                Spacer()
            }
            Button(action: {
                let playerRand=Int.random(in:2...14)
                let cpuRand=Int.random(in:2...14)
                playerCard="card"+String(playerRand)
                cpuCard="card"+String(cpuRand)
                if(playerRand>cpuRand){
                    playerScore+=1
                }else if(cpuRand>playerRand){
                    cpuScore+=1
                }
                
            }, label: {
                Image("fight")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)            })
            
            Spacer()
            HStack{
                Spacer()
                
                VStack(spacing: 10.0){
                    Text("Player1")
                        .font(.title)
                        .foregroundColor(Color.blue)
                    Text(String(playerScore))
                        .font(.title)
                        .foregroundColor(Color.red)
                }
                Spacer()
                
                VStack{
                    Text("CPU")
                        .font(.title)
                        .foregroundColor(Color.blue)
                    Text(String(cpuScore))
                        .font(.title)
                        .foregroundColor(Color.red)
                }
                Spacer()
                
            }
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
