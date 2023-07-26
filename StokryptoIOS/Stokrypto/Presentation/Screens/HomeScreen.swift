//
//  HomeScreen.swift
//  Stokrypto
//
//  Created by bach.bui on 14/07/2023.
//

import SwiftUI

struct HomeScreen: View {
    let serviceUseCase = DIContainerImpl.shared.resolve(type: FetchServiceUseCase.self)
    let assetUseCase = DIContainerImpl.shared.resolve(type: FetchAssetUseCase.self)
    let articleUseCase = DIContainerImpl.shared.resolve(type: FetchArticleUseCase.self)
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Balance(balance: 200000)
                FavoriteServices(data: serviceUseCase?.invoke() ?? [])
                WatchList(data: assetUseCase?.invoke() ?? [])
                NewsFeed(data: articleUseCase?.invoke() ?? [])
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
