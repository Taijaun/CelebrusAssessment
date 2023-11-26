//
//  ArticleModel.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 25/11/2023.
//

import Foundation

// MARK: - Response
struct Responses: Decodable {
    let status: String
    //let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Decodable {
    let title: String?
    let author: String?
    let publishedAt: String?
    let url: String?
}

extension Article: Identifiable {
    var id: UUID {
        UUID()
    }
}

extension Responses {
    static var mockResponses: Responses{
        return {Responses(status: "ok", articles: [Article(title: "Made up article 1", author: "myself", publishedAt: "2023-10-27T20:10:00Z", url: "www.google.com")])}()
    }
}
