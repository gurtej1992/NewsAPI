//
//  Articles.swift
//  NewsAPI
//
//  Created by Gurtej Singh on 2024-05-11.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String?
    let description: String?
}
