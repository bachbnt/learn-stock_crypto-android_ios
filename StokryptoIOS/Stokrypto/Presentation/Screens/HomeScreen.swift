//
//  HomeScreen.swift
//  Stokrypto
//
//  Created by bach.bui on 14/07/2023.
//

import SwiftUI

struct HomeScreen: View {
    let serviceUseCase: ServiceUseCase = FetchServiceUseCase(repository: ServiceRepositoryImpl(localDataSource: ServiceLocalDataSourceImpl(), remoteDataSource: ServiceRemoteDataSourceImpl()))
    
    let articleUseCase: ArticleUseCase = FetchArticleUseCase(repository: ArticleRepositoryImpl(localDataSource: ArticleLocalDataSourceImpl(), remoteDataSource: ArticleRemoteDataSourceImpl()))
    
    let assetUseCase: AssetUseCase = FetchAssetUseCase(repository: AssetRepositoryImpl(localDataSource: AssetLocalDataSourceImpl(), remoteDataSource: AssetRemoteDataSourceImpl()))
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Balance(balance: 200000)
                FavoriteServices(data: serviceUseCase.invoke())
                WatchList(data: assetUseCase.invoke())
                NewsFeed(data: articleUseCase.invoke())
            }
            .frame(maxWidth: .infinity,
                   maxHeight: .infinity,
                   alignment: .topLeading)
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
