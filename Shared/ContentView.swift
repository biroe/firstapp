//
//  ContentView.swift
//  Shared
//
//  Created by ryo fuj on 11/14/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Spacer()
            filter()
            Spacer()
            Text("Hello, world!")
                .padding()
            Spacer()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
