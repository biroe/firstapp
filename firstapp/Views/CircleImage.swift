//
//  CircleImage.swift
//  firstapp
//
//  Created by ryo fujimura on 3/19/21.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("fight")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(height: 100.0)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 5))
            .shadow(radius: 2 )
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
