//
//  FilterOptions.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/9/21.
//

import SwiftUI

struct FilterItem: Identifiable {
    let id = UUID()
    let dollarsigns: String
    let categories: String
}
struct FilterOptions: View {
    @State private var miles: Double = 0
   
//    @State private var numberSelection = Selection.numberone
//    var selection: Int

    var body: some View {
        VStack(alignment: .center) {
            HStack {
                ForEach(options) { o in
                    GrayButton(labeltext: o.dollarsigns)
                    Spacer()
                }
            }
            .padding([.top, .leading], 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(options) { o in
                        GrayButton(labeltext: o.categories)
                            .padding(.trailing, 8.0)
                    }
                }
            }
            .padding([.top, .leading], 20)
            VStack{
                Slider(value: $miles, in: 1...30,  step: 1)
                    .padding(.all, 10)
                    .accentColor(Color.black)
                    .frame(height: 40)
                    .background(Color(red: 220/255, green: 220/255, blue: 220/255))
                    .cornerRadius(40)
                    .padding([.top, .leading, .trailing], 20)
                    
                Text("\(miles, specifier: "%.0f") miles")
                    .font(.system(size: 26, weight: .bold, design: .default))
                    .foregroundColor(.black)
            }
            .padding(.vertical)
            HStack{
                PickerFile()
                Text("selection")
                    .font(.system(size: 26, weight: .bold, design: .default))
                    .foregroundColor(.white)
            }
            .labelsHidden()
            .padding(.vertical)
            
        }
        .frame(maxWidth: .infinity, alignment: .center)
        .background(Color(red: 255/255, green: 235/255, blue: 235/255))
        .modifier(CardModifier())
        .padding(.all, 20)
    }
}

struct FilterOptions_Previews: PreviewProvider {
    static var previews: some View {
        FilterOptions()
    }
}
