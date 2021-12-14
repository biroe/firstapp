//
//  NeumorphismButton.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/11/21.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 230 / 255, green: 225 / 255, blue: 225 / 255)
    static let warmOffWhite = Color(red: 235 / 255, green: 225 / 255, blue: 225 / 255)
//    static let tezt = "HE::P"
}

var roundbox = RoundedRectangle(cornerRadius: 25, style: .continuous)

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct SimpleButtonStyle: ButtonStyle{
    var buttonColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(roundbox)
            .background(
                Group{
                    if configuration.isPressed{
                        roundbox
                            .fill(buttonColor)
                            .overlay(
                                roundbox
                                    .stroke(Color.gray, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(roundbox.fill(LinearGradient(Color.black, Color.clear)))
                            )
                            .overlay(
                                roundbox
                                    .stroke(Color.white, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(roundbox.fill(LinearGradient(Color.clear, Color.black)))
                            )
                    } else {
                        roundbox
                            .fill(buttonColor)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    
                    }
                }
            )
    }
}

struct NeumorphismButton: View {
    @State private var didTap:Bool = false
    var buttonText: String
    var buttonTextColor: Color
    var buttonColor: Color
    
    var body: some View {  
        ZStack {
            Color.offWhite
            Button(action: { self.didTap.toggle() } ){
                Text(buttonText)
                    .font(.title)
                    .fontWeight(.ultraLight)
                    .foregroundColor(buttonTextColor)

            }
            .padding(20)
//            .background(didTap ? Color.red : Color.white)
            .buttonStyle(SimpleButtonStyle(buttonColor: buttonColor))
            
        }
        .ignoresSafeArea(.all)
    }
}

struct NeumorphismButton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphismButton(buttonText:"Hello", buttonTextColor: Color(red: 230 / 255, green: 25 / 255, blue: 25 / 255), buttonColor: Color.warmOffWhite)
    }
}
