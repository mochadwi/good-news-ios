//
//  WebService.swift
//  Good News
//
//  Created by Mochamad Iqbal Dwi Cahyo on 4/25/24.
//

import Foundation

class Webservice {
    func getArticles(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                let articles = try? JSONDecoder().decode(ArticleList.self, from: data).articles
                if let articles = articles {
                    completion(articles)
                }
                print(articles)
            }
        }.resume()
    }
}
