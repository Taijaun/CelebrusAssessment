//
//  ArticleModel.swift
//  Celebrus_Assessment
//
//  Created by Tai Pitt on 25/11/2023.
//

import Foundation

struct article: Decodable{
    let status: String
    let totalResults: Int
    let articles: [articles]
}

struct articles: Decodable{
    let title: String
    let author: String
    let publishedAt: String
    let url: String
}

