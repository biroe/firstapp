//
//  FoodView.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/16/21.
//

import SwiftUI

struct FoodView: View {
    var choice: Int
    var image: String
    var title: String
    var type: String
    var price: Double
    
    var body: some View {
        ZStack (alignment: .topTrailing){
            Color.red
            VStack{
                Spacer()
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(1..<14){ i in
                            Image("food\(i % 7)")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100, alignment: .center)
                                .cornerRadius(10)
//                                .padding(.vertical, 15.0)
                        }
                    }
                    .padding(.horizontal, 10.0)
                }
                
//                ZStack {
//                    Color(red: 100/255, green: 20/255, blue: 20/255)0)
//                        .cornerRadius(2
                        
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
//                    }
//                    .padding(.trailing, 20)
                }
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .modifier(CardModifier())
        }
        .ignoresSafeArea(.all, edges: [.bottom, .trailing])
        //        .padding(.horizontal,10)
//        .padding(.bottom,20)
    }
    
}

struct FoodView_Previews: PreviewProvider {
    static var previews: some View {
        FoodView(choice: 1, image: "Product_1", title: "Autumn Soup", type: "Asian shit", price: 11.99)
    }
}
