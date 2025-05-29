//
//  APIResponse.swift
//  FAQCarouselApp
//
//  Created by Lakshay Sachdeva on 29/05/25.
//

struct ApiResponse: Codable {
    let rail: Rail
    let railPageFaqs: [Faq]
}


