//
//  ContentView.swift
//
//  Created by ryo fuj on 11/14/21.
//

import SwiftUI

struct ContentView: View {
//    var choicelimit: Int = 3
    @State private var choicePage:Bool = false
    @State private var filterPage:Bool = false
    

    var body: some View {
        ZStack{
            Color(red: 250/255, green: 240/255, blue: 240/255)
                    .edgesIgnoringSafeArea(.all)
            VStack{
                Button(action: { self.choicePage.toggle() }) {
                    Text("Choice")
                    }
                Button(action: { self.filterPage.toggle() }) {
                    Text("Filter")
                    }
                Spacer()
                if choicePage {
                    RandomChoices()
                }
                if filterPage {
                    FilterOptions()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
