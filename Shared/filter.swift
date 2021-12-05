//
//  filter.swift
//  firstapp
//
//  Created by ryo fuj on 12/2/21.
//

import SwiftUI

struct filter: View {
    var body: some View {
        VStack{
            Spacer()
            Spacer()
            Text("Filter")
            HStack{
                Text("Preset 1")
                Text("Preset 2")
            }
            Button(action: Void){
                Text("New Filter")
            }
            Spacer()
            Text("History")
            HStack{
                Text("Miki Poke")
                Text("Asian")
                Text("$")
                Text("1 mile away")
            }
            Spacer()
            Spacer()
        }
    }
}

struct filter_Previews: PreviewProvider {
    static var previews: some View {
        filter()
    }
}
