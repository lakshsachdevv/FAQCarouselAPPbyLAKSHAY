import SwiftUI

struct HorizontalCarouselView: View {
    let items: [RailItem]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(items, id: \.name) { item in
                    VStack {
                        // Fetch and display image from URL
                        AsyncImage(url: URL(string: item.image)) { image in
                            image.resizable()
                                .aspectRatio(contentMode: .fill)
                        } placeholder: {
                            ProgressView() // Show a loader while fetching
                        }
                        .frame(width: 200, height: 120) // Adjust size as needed
                        .cornerRadius(10)

                        Text(item.name)
                            .font(.headline)
                        Text(item.shortDescription)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}
