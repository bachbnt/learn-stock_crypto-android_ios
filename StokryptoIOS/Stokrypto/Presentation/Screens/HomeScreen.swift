//
//  HomeScreen.swift
//  Stokrypto
//
//  Created by bach.bui on 14/07/2023.
//

import SwiftUI

struct HomeScreen: View {
    let useCase: ServiceUseCase = FetchServiceUseCase(repository: ServiceRepositoryImpl(localDataSource: ServiceLocalDataSourceImpl(), remoteDataSource: ServiceRemoteDataSourceImpl()))
    
    var body: some View {
        VStack(alignment: .leading) {
            Balance(balance: 200000)
            FavoriteServices(data: useCase.invoke())
        }
        .frame(maxWidth: .infinity, // Full Screen Width
               maxHeight: .infinity, // Full Screen Height
               alignment: .topLeading)
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
