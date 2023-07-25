//
//  ArticleRepositoryImpl.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import Foundation

class ArticleRepositoryImpl: ArticleRepository {
    let localDataSource: ArticleLocalDataSource
    let remoteDataSource: ArticleRemoteDataSource
    
    init(localDataSource: ArticleLocalDataSource, remoteDataSource: ArticleRemoteDataSource) {
        self.localDataSource = localDataSource
        self.remoteDataSource = remoteDataSource
    }
    
    func getArticles() -> [Article] {
        return remoteDataSource.getArticles()
    }
}
