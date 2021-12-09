//
//  RedButton.swift
//  firstapp
//
//  Created by ryo fuj on 12/9/21.
//

import SwiftUI

struct RedButton: View {
    var buttonText: String
//    var buttonAction: String
    
    var body: some View {
        Button {
            print("Button pressed")
        } label: {
            Text((buttonText))
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .padding(20)
                .background(Color.red)
                .cornerRadius(10)
        }
    }
}

struct RedButton_Previews: PreviewProvider {
    static var previews: some View {
        RedButton(buttonText: "Predassss")
    }
}
