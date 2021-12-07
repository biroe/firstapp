//
//  ContentView.swift
//
//  Created by ryo fuj on 11/14/21.
//

import SwiftUI

struct MenuContent: View {
    var menulists = ["RYO FUJIMURA","SKILLS","CONTACT"]
    var body: some View {
        List {
            Text(menulists[0]).onTapGesture {
                print("My Profile")
            }
            Text(menulists[1]).onTapGesture {
                print("Posts")
            }
            Text(menulists[2]).onTapGesture {
                print("Logout")
            }
        }
//        HStack{
//            ForEach(menulists, content: { menulist in
//                Text(menulist)
//            })
//        }
    }
}


struct ContentView: View {
    @State var menuOpen: Bool = false
    
    var body: some View {
        ZStack {
            if !self.menuOpen {
                Button(action: {
                    self.openMenu()
                }, label: {
                    Text("Open")
                })
            }
            
            SideMenu(width: 220,
                     isOpen: self.menuOpen,
                     menuClose: self.openMenu)
        }
    }
    
    func openMenu() {
        self.menuOpen.toggle()
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}
