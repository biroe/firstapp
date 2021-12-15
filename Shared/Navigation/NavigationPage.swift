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
                FilterNavigationPage()
                
            }
            .navigationTitle("Choose your food")
        }
    }
}

struct FilterNavigationPage: View {
    var body: some View {
            ZStack{
                Color(red: 250/255, green: 240/255, blue: 240/255)
                        .edgesIgnoringSafeArea(.all)
                VStack{
                    FilterOptions()
                    Spacer()
                    NavigationLink(destination: ChoiceNavigationPage() , label: {
                        RedButton(buttonText: "GO!")
                    })
                    Spacer()
                    Spacer()
                }
                .navigationTitle("Choose your food")
                .navigationBarBackButtonHidden(true)
                
        }
    }
}


struct ChoiceNavigationPage: View {
//    var choicelimit: Int = 3
    var body: some View {
        ZStack{
            Color(red: 250/255, green: 240/255, blue: 240/255)
                    .edgesIgnoringSafeArea(.all)
            VStack{
                RandomChoices()
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: ChoiceNavigationPage() , label: {
                        RedButton(buttonText: "Next")
                    })
                    Spacer()
                    NavigationLink(destination: FilterNavigationPage() , label: {
                        RedButton(buttonText: "Filter")
                    })
                    Spacer()
                }
                Spacer()
                Spacer()
            }
            .navigationBarBackButtonHidden(true)
            
        }
    }
}

struct NavigationPage_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPage()
    }
}
