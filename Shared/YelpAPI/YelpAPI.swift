//
//  YelpAPI.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/16/21.
//

import Foundation
import CoreLocation
import Combine

let apikey = ""

struct YelpAPI {
    // search term, user location, category
    var search: (String, CLLocation, String?) -> AnyPublisher<SearchResult, Never>
}

extension YelpAPI {
    static let live = YelpAPI { term, location, cat in
        var urlComponents = URLComponents(string: "https://api.yelp.com")!
        urlComponents.path = "v3/businesses/search"
        urlComponents.queryItems = [
            .init(name: "term", value: term),
            .init(name: "longtitude", value: String(location.coordinate.longitude)),
            .init(name: "latitude", value: String(location.coordinate.latitude)),
            .init(name: "categories", value: cat)
        ]
        let url = urlComponents.url!
        var request = URLRequest(url: url)
        request.addValue("Baerer \(apikey)", forHTTPHeaderField: "Authorization")
        
        return URLSession.shared.dataTaskPublisher(for: request)
            .map(\.data)
            .decode(type: SearchResult.self, decoder: JSONDecoder())
            .replaceError(with: .init())
            .eraseToAnyPublisher()
    }
}

struct SearchResult: Codable {
    
}
