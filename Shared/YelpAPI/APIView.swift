//
//  APIView.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/16/21.
//

import SwiftUI

//@available(iOS 15.0, *)
struct APIView: View {
    @ObservedObject var viewModel =  TestAPI()
    @State var businesses: [Business] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(businesses, id: \.id) { business in
                    Text(business.name ?? "no name")
                }
            }
            .listStyle(.plain)
            .navigationTitle(Text("Boston"))
            .searchable(text: $viewModel.searchText)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Image(systemName: "person")
                }
            }
//            .onAppear(perform: viewModel.search)
            .onReceive(YelpAPI.live
                        .search("food", .init(latitude: 42.36, longitude: -71), nil)) {
                businesses in self.businesses = businesses
            }
        }
    }
}

//@available(iOS 15.0, *)
struct APIView_Previews: PreviewProvider {
    static var previews: some View {
        APIView()
    }
}
