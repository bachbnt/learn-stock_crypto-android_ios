//
//  HomeScreen.swift
//  Stokrypto
//
//  Created by bach.bui on 14/07/2023.
//

import SwiftUI

struct HomeScreen: View {
    let repo = ServiceRepositoryImpl()
    
    var body: some View {
        VStack(alignment: .leading) {
            Balance(balance: 200000)
            FavoriteServices(data: repo.getServices(type: "favorite"))
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
