//
//  ArticleUseCase.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import Foundation

protocol ArticleUseCase {
    func invoke() -> [Article]
}

class FetchArticleUseCase: ArticleUseCase {
    let repository: ArticleRepository
    
    init(repository: ArticleRepository) {
        self.repository = repository
    }
    
    func invoke() -> [Article] {
        return repository.getArticles()
    }
}
