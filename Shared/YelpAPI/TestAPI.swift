//
//  TestAPI.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/16/21.
//

import Foundation
import Combine

final class TestAPI: ObservableObject {
    @Published var businesses = [Business]()
    @Published var searchText = ""
    
    func search() {
        let live = YelpAPI.live
        live.search("food", .init(latitude: 42.36, longitude: -71), nil)
            .assign(to: &$businesses)
    }
}
