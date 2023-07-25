//
//  WatchList.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import SwiftUI

struct WatchList: View {
    let data: [Asset]
    
    var body: some View {
        VStack(spacing: 10) {
            AssetItem(symbol: nil, price: nil, volatility: nil, volatilityPercent: nil, volume: nil)
            ForEach(data, id: \.id) { item in
                AssetItem(symbol: item.symbol, price: item.price, volatility: item.volatility, volatilityPercent: item.volatilityPercent, volume: item.volume)
            }
        }
    }
}

struct WatchList_Previews: PreviewProvider {
    static var previews: some View {
        WatchList(data: assetStocks)
    }
}
