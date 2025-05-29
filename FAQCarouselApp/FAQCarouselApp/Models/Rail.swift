//Lakshay Sachdeva
import Foundation
import SwiftUI

// Represents a single rail section containing items
struct Rail: Codable {
    let name: String            // The title of the carousel
    let items: [RailItem]       // The items in the carousel
}

// Represents a single item in the rail carousel
struct RailItem: Codable {
    let name: String            // The name of the item
    let shortDescription: String // A brief description of the item
    let image: String           // The URL of the item's image
}
