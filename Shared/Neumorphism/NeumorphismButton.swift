//
//  NeumorphismButton.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/11/21.
//

import SwiftUI

extension Color {
    static let offWhite = Color(red: 230 / 255, green: 225 / 255, blue: 225 / 255)
}

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct SimpleButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(30)
            .contentShape(Circle())
            .background(
                Group{
                    if configuration.isPressed{
                        Circle()
                            .fill(Color.offWhite)
                            .overlay(
                                Circle()
                                    .stroke(Color.gray, lineWidth: 4)
                                    .blur(radius: 4)
                                    .offset(x: 2, y: 2)
                                    .mask(Circle().fill(LinearGradient(Color.black, Color.clear)))
                            )
                            .overlay(
                                Circle()
                                    .stroke(Color.white, lineWidth: 8)
                                    .blur(radius: 4)
                                    .offset(x: -2, y: -2)
                                    .mask(Circle().fill(LinearGradient(Color.clear, Color.black)))
                            )
                    } else {
                        Circle()
                            .fill(Color.offWhite)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    
                    }
                }
            )
    }
}

struct NeumorphismButton: View {
    var body: some View {
        ZStack {
            Color.offWhite
            
            Button(action: {
                print("Button pressed")
            }){
                Image(systemName: "chevron.right.circle.fill")
                    .foregroundColor(.gray)
            }
            .buttonStyle(SimpleButtonStyle())
        }
        .ignoresSafeArea(.all)
    }
}

struct NeumorphismButton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphismButton()
    }
}
