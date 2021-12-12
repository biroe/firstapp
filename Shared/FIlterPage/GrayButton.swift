//
//  GrayButton.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/9/21.
//

import SwiftUI

struct GrayButton: View {
    @State private var didTap:Bool = false
    var labeltext: String

    var body: some View {
        Button(action: { self.didTap.toggle() }) {
            Text(labeltext)
                .font(.system(size: 26, weight: .bold, design: .default))
                .foregroundColor(.black)
                .padding(.horizontal, 15.0)
                .padding(.vertical, 3.0)
            }
            .background(didTap ? Color.red : Color.white)
            .cornerRadius(10)
//            .padding(.all, 3.0)
    }
}

struct GrayButton_Previews: PreviewProvider {
    static var previews: some View {
        GrayButton(labeltext: "$dsajdilksahuidsa$$$")
    }
}
