//
//  API.swift
//  firstapp (iOS)
//
//  Created by ryo fuj on 12/15/21.
//

import SwiftUI

import SwiftUI

struct API: View {
    @State var gifUrl = String()
    @State var searchString = String()
    
    var body: some View {
        Text("\(gifUrl)")
            .onTapGesture {
                let url = URL(string: gifUrl)
                guard let GIPHYUrl = url, UIApplication.shared.canOpenURL(GIPHYUrl) else {return}
                UIApplication.shared.open(GIPHYUrl)
            }
        TextField("Search GIFs", text: $searchString)
            .multilineTextAlignment(.center)
        Button("Fetch GIF"){fetchAPI()}
    }
    
    func fetchAPI() {
        let apiKey = "YOUR_API_KEY"
        let url = URL(string: "https://api.giphy.com/v1/gifs/search?api_key=\(apiKey)&q=\(self.searchString)&limit=25&offset=0&rating=g&lang=en")

        
        URLSession.shared.dataTask(with: url!) { data, response, error in
            if let data = data {
                if let decodedGiphy = try? JSONDecoder().decode(GIPHYStructure.self, from: data){
                    self.gifUrl = decodedGiphy.data[0].url
                }
            }
        }.resume()
    }
}


struct GIPHYStructure: Decodable {
    let data: [dataStructure]
}

struct dataStructure: Decodable {
    let url: String
}
