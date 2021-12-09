//
//  RandomChoices.swift
//  firstapp
//
//  Created by ryo fuj on 12/9/21.
//

import SwiftUI

struct RandomChoices: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Choose your food")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.leading, 15)
                
            ProductCard(choice: 1,image: "Product_1", title: "asSoup", type: "asian", price: 191.99)
            ProductCard(choice: 2,image: "Product_1", title: "Autuoup", type: "nonasian", price: 1.99)
            ProductCard(choice: 3,image: "Product_1", title: "Aut Soup", type: "umerika", price: 13.99)
            HStack(alignment: .center){
                Spacer()
                Spacer()
                RedButton(buttonText: "Next")
                Spacer()
                RedButton(buttonText: "Filter")
                Spacer()
                Spacer()
            }
        }
    }
}

struct RandomChoices_Previews: PreviewProvider {
    static var previews: some View {
        RandomChoices()
    }
}
