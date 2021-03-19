//
//  ContentView.swift
//  firstapp
//
//  Created by ryo fujimura on 3/17/21.
//

import SwiftUI

struct ContentView: View {
    @State private var playerCar = "car-1"
    @State private var computerVar = "car-2"
    @State private var playerScore = 0
    @State private var computerScore = 0
    
    var body: some View {
        /*VStack {
            //button instance
            Button("click", action: {
                print("Print")
            })
            //button instance with trailing
            Button("click") {
                print("Print")
            }
            Button(action: {
                print("Hello")
            }, label: {
                /*@START_MENU_TOKEN@*/HStack {
                    Image(systemName: "pencil")
                    Text("Budsadatton")
                }/*@END_MENU_TOKEN@*/
            })
        }*/
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                //up to 10 element
                Spacer()
                Button(action: {
                    playerScore = 0
                    computerScore = 0
                }, label: {
                    Image("war")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100.0)
                })
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCar)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200.0)
                        .border(Color.black, width: 3)
                    Spacer()
                    Image(computerVar)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200.0)
                        .border(Color.black, width: 3)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    let playerRandom = Int.random(in: 1...4)
                    let computerRandom = Int.random(in: 1...4)
                    
                    playerCar = "car-" + String(playerRandom)
                    computerVar = "car-" + String(computerRandom)
                    
                    if playerRandom < computerRandom {
                        computerScore += 2
                    }
                    else if computerRandom < playerRandom {
                        playerScore += 2
                    }
                    else {
                        computerScore += 1
                        playerScore += 1
                    }
                }, label: {
                    Image("fight")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100.0)
                })
                
                Spacer()
                HStack(spacing:70.0)
                {
                    VStack(spacing:20.0){
                        Text("player-1")
                        Text(String(playerScore))
                    }
                    .padding(.leading, 50.0)
                    VStack(spacing:20.0){
                        Text("computer")
                        Text(String(computerScore))
                    }
                    .padding(.trailing, 50.0)
                }
                .padding(.vertical, 15.00)
                .font(.title)
                .foregroundColor(Color.white)
                .background(Color.black
                                .blur(radius: 10.0))

            }//VStack
        }//ZStack
    }
}

//MARK: -content view preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 12 Pro Max")
            ContentView()
                .preferredColorScheme(.light)
                .previewDevice("iPhone 12 Pro Mini")
        }
    }
}
