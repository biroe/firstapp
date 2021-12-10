//
//  PickerFile.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/10/21.
//

import SwiftUI

struct PickerFile: View {
    private var selection = [1,2,3,4,5]
//    private var genderArray = ["Male","Female","Other"]
    @State private var selectedIndex = 0
    
    var body: some View {
        Picker(selection: $selectedIndex, label: Text("")) {
            ForEach(0 ..< selection.count) {
                Text(String(self.selection[$0]))
                    .font(.system(size: 26, weight: .bold, design: .default))
                    .foregroundColor(.black)
            }
        }
        .pickerStyle(WheelPickerStyle())
        .padding()
        .frame(width: 50, height: 90, alignment: .center)
//        .border(Color.red, width: 4)
    }
}

struct PickerFile_Previews: PreviewProvider {
    static var previews: some View {
        PickerFile()
    }
}
