import SwiftUI
struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()

    var body: some View {
        VStack {
            if viewModel.railItems.isEmpty || viewModel.faqs.isEmpty {
                ProgressView()
                    .onAppear {
                        viewModel.fetchData()
                    }
            } else {
                HorizontalCarouselView(items: viewModel.railItems)
                FAQListView(faqs: viewModel.faqs)
            }
        }
    }
}
#Preview {
    ContentView()
}

