//
//  FavoriteServices.swift
//  Stokrypto
//
//  Created by bach.bui on 14/07/2023.
//

import SwiftUI

struct FavoriteServices: View {
    let data: [Service]
    
    var body: some View {
            HStack(spacing: 10) {
                ForEach(data, id: \.id) { item in
                    VStack {
                        Image(systemName: item.icon)
                            .padding([.bottom], 2)
                        Text(item.title)
                    }
                }
            }
            .padding()
    }
}

struct FavoriteServices_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteServices(data: favoriteServices)
    }
}
