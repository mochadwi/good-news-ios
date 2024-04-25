//
//  Article.swift
//  Good News
//
//  Created by Mochamad Iqbal Dwi Cahyo on 4/25/24.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String?
}
