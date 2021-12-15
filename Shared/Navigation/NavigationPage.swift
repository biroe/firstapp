//
//  NavigationPage.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/14/21.
//

import SwiftUI

struct NavigationPage: View {
    var body: some View {
        NavigationView {
            ZStack{
                Color(red: 250/255, green: 240/255, blue: 240/255)
                        .edgesIgnoringSafeArea(.all)
                VStack{
                    FilterOptions()
                    Spacer()
                    NavigationLink(destination: SecondContentView() , label: {
                        
                        Text("GO!")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(20)
                            .background(Color.red)
                            .cornerRadius(10)
                    })
                }
                .navigationTitle("Choose your food")
                
            }
        }
    }
}

struct SecondContentView: View {
//    var choicelimit: Int = 3
    var body: some View {
        ZStack{
            Color(red: 250/255, green: 240/255, blue: 240/255)
                    .edgesIgnoringSafeArea(.all)
            VStack{
                NavigationLink(destination: FilterOptions() , label: {
                    Text("Continue")
                        .font(.system(size: 26, weight: .bold, design: .default))
                        .foregroundColor(.gray)
                })
            }
            .navigationTitle("Choose your food")
            
        }
    }
}

struct NavigationPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPage()
    }
}
