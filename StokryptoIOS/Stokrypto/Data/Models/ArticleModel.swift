//
//  ArticleModel.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import Foundation

class ArticleModel: Article {
    var id: String
    var title: String
    var subtitle: String
    var description: String
    var content: String
    var image: String
    var timestamp: Int
 
    init(id: String, title: String, subtitle: String = "", description: String = "", content: String, image: String = "", timestamp: Int) {
        self.id = id
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.content = content
        self.image = image
        self.timestamp = timestamp
    }
}
