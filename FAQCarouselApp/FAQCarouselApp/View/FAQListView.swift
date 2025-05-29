//
//  FAQListView.swift
//  FAQCarouselApp
//
//  Created by Lakshay Sachdeva on 29/05/25.
//
//
import SwiftUI
struct FAQListView: View {
    @State private var expandedFaq: String? = nil
    let faqs: [Faq]

    var body: some View {
        List(faqs, id: \.question) { faq in
            VStack(alignment: .leading) {
                Text(faq.question)
                    .font(.headline)
                    .onTapGesture {
                        withAnimation {
                            expandedFaq = expandedFaq == faq.question ? nil : faq.question
                        }
                    }
                
                if expandedFaq == faq.question {
                    Text(faq.answer)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .padding()
        }
    }
}
