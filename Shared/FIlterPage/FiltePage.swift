//
//  FiltePage.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/9/21.
//

import SwiftUI

struct FiltePage: View {
    var body: some View {
        VStack{
            HStack{
                Text("Choose")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.leading, 15)
                Spacer()
                Button {
                    print("Button pressed")
                } label: {
                    Text("GO!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(20)
                        .background(Color.red)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal, 40)
            .padding(.vertical, 10)
            Spacer()
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct FiltePage_Previews: PreviewProvider {
    static var previews: some View {
        FiltePage()
    }
}
