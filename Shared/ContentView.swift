//
//  ContentView.swift
//
//  Created by ryo fuj on 11/14/21.
//

import SwiftUI

struct ContentView: View {
    var choicelimit: Int = 3

    var body: some View {
        ZStack{
            Color(red: 240/255, green: 240/255, blue: 240/255)
                    .edgesIgnoringSafeArea(.all)
//            RandomChoices()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
