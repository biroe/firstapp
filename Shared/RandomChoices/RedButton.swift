//
//  RedButton.swift
//  firstapp
//
//  Created by ryo fuj on 12/9/21.
//

import SwiftUI

struct RedButton: View {
    @State private var choicePage:Bool = false
    @State private var filterPage:Bool = false
    
    var buttonText: String
    
//    var buttonAction: String
    var body: some View {
        Text((buttonText))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(30)
                .background(Color.red)
                .cornerRadius(10)
    }
}

struct RedButton_Previews: PreviewProvider {
    static var previews: some View {
        RedButton(buttonText: "Predassss")
    }
}
