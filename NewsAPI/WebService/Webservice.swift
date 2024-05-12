//
//  Webservice.swift
//  NewsAPI
//
//  Created by Gurtej Singh on 2024-05-11.
//

import Foundation

func getArticles(url : URL,  completion : @escaping ([Article]?) -> ()){
    URLSession.shared.dataTask(with: URLRequest(url: url)) { data, res, error in
        if error != nil{
         completion(nil)
        }
        let article = try! JSONDecoder().decode(ArticleList.self, from: data!) 
        completion(article.articles)
    }.resume()
}
