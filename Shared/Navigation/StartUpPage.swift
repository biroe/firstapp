//
//  StartUpPage.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/10/21.
//

import SwiftUI

struct StartUpPage: View {
    @State var isAnimating = false
    
    var animation: Animation {
        .interpolatingSpring(stiffness:0.5, damping: 0.5)
                    .repeatForever()
                    .delay(isAnimating ? .random(in: 0...1) : 0)
                    .speed(isAnimating ? .random(in: 0...1) : 0)
    }
    
    var body: some View {
        GeometryReader { proxy in
            VStack{
                ZStack{
                    ForEach(1..<14){ i in
                        Image("food\(i % 7)")
                            .position(x: .random(in: 0...proxy.size.width),
                                      y: .random(in: 0...proxy.size.height/2))
                            .animation(animation)
                    }
                }
                .frame(height: proxy.size.height/3)
                
                Text("Choose your food")
                    .font(.title)
                
                Text("Find your food now!")
                    .font(.title)
                Spacer()
                
                Button(action: {}) {
                    Text("Get started")
                }
                .padding()
                .frame(maxWidth: proxy.size.width - 50)
                .background(Color.red)
                .cornerRadius(50)
                .shadow(radius: 20)
                .foregroundColor(.white)
            }
        }
        .onAppear{
            isAnimating.toggle()
        }
        
    }
}

struct StartUpPage_Preview: PreviewProvider {
    static var previews: some View{
        StartUpPage()
    }
}
