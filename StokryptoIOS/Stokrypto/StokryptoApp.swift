//
//  StokryptoApp.swift
//  Stokrypto
//
//  Created by bach.bui on 13/07/2023.
//

import SwiftUI

@main
struct StokryptoApp: App {
    let container = DIContainerImpl.shared
    
    init(){
        // Service
        container.register(type: ServiceLocalDataSource.self, component: ServiceLocalDataSourceImpl())
        container.register(type: ServiceRemoteDataSource.self, component: ServiceRemoteDataSourceImpl())
        container.register(type: ServiceRepository.self, component: ServiceRepositoryImpl(localDataSource: container.resolve(type: ServiceLocalDataSource.self)!, remoteDataSource: container.resolve(type: ServiceRemoteDataSource.self)!))
        container.register(type: FetchServiceUseCase.self, component: FetchServiceUseCase(repository: container.resolve(type: ServiceRepository.self)!))
        // Article
        container.register(type: ArticleLocalDataSource.self, component: ArticleLocalDataSourceImpl())
        container.register(type: ArticleRemoteDataSource.self, component: ArticleRemoteDataSourceImpl())
        container.register(type: ArticleRepository.self, component: ArticleRepositoryImpl(localDataSource: container.resolve(type: ArticleLocalDataSource.self)!, remoteDataSource: container.resolve(type: ArticleRemoteDataSource.self)!))
        container.register(type: FetchArticleUseCase.self, component: FetchArticleUseCase(repository: container.resolve(type: ArticleRepository.self)!))
        // Asset
        container.register(type: AssetLocalDataSource.self, component: AssetLocalDataSourceImpl())
        container.register(type: AssetRemoteDataSource.self, component: AssetRemoteDataSourceImpl())
        container.register(type: AssetRepository.self, component: AssetRepositoryImpl(localDataSource: container.resolve(type: AssetLocalDataSource.self)!, remoteDataSource: container.resolve(type: AssetRemoteDataSource.self)!))
        container.register(type: FetchAssetUseCase.self, component: FetchAssetUseCase(repository: container.resolve(type: AssetRepository.self)!))
    }
    
    var body: some Scene {
        WindowGroup {
            MainScreen()
        }
    }
}
