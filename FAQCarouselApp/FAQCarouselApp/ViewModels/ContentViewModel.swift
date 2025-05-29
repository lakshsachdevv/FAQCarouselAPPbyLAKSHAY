//
//  Untitled.swift
//  FAQCarouselApp
//
//  Created by Lakshay Sachdeva on 29/05/25.
//
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var railItems: [RailItem] = []
    @Published var faqs: [Faq] = []
    
    func fetchData() {
        guard let url = URL(string: "https://gist.githubusercontent.com/sanjeevworkstation/c27e6cc85b7d4bcaf8ec73d96a0ae25b/raw/4a2ce8c5215f2d7a7201338a6af49a77c0f81f6a/assignment.json") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Fetch error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            do {
                let apiResponse = try JSONDecoder().decode(ApiResponse.self, from: data)
                DispatchQueue.main.async {
                    self.railItems = apiResponse.rail.items
                    self.faqs = apiResponse.railPageFaqs
                }
            } catch {
                print("Decoding error: \(error.localizedDescription)")
            }
        }.resume()
    }
}
#Preview {
    ContentView()
}
