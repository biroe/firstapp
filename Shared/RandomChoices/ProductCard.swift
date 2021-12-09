//
//  ProductCard.swift
//  firstapp
//
//  Created by ryo fuj on 12/9/21.
//

import SwiftUI

struct ProductCard: View {
    
    var choice: Int
    var image: String
    var title: String
    var type: String
    var price: Double
    
    var body: some View {
        ZStack{
            HStack(alignment: .center) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100, alignment: .center)
                    .cornerRadius(10)
                    .padding(.all, 10)
                
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size: 22, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Text(type)
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .foregroundColor(.gray)
                    HStack {
                        Text("$" + String.init(format: "%0.2f", price))
                            .font(.system(size: 28, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding(.top, 8)
                    }
                }.padding(.trailing, 20)
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color(red: 50/255, green: 20/255, blue: 20/255))
            .modifier(CardModifier())
            .padding(.all, 10)
            HStack {
                Text(String(choice))
                    .fontWeight(.heavy)
                    .frame(width: 35, height: 35, alignment: .center)
                    .background(Color(red: 240/255, green: 240/255, blue: 240/255))
                    .cornerRadius(8)
                    .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 0)
                    .offset(y: -55)
                Spacer()
            }
        }
        .padding(.horizontal,10)
        .padding(.bottom,20)
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(choice: 1, image: "Product_1", title: "Autumn Soup", type: "Asian shit", price: 11.99)
    }
}
