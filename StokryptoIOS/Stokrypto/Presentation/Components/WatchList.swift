//
//  WatchList.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import SwiftUI

enum WatchListSection : String, CaseIterable {
    case stocks = "Stocks"
    case cryptos = "Cryptos"
}

struct WatchList: View {
    let stocks: [Asset]
    let cryptos: [Asset]
    
    @State var segmentationSelection: WatchListSection = .stocks
    
    func getData(selection: Binding<WatchListSection>) -> [Asset] {
        if selection.wrappedValue == .cryptos {
            return cryptos
        }
        return stocks
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Picker("", selection: $segmentationSelection) {
                ForEach(WatchListSection.allCases, id: \.self) { option in
                    Text(option.rawValue)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            AssetItem(symbol: nil, price: nil, volatility: nil, volatilityPercent: nil, volume: nil)
            
            ForEach(getData(selection: $segmentationSelection), id: \.id) { item in
                NavigationLink(destination: AssetDetailScreen(item: item)) {
                    AssetItem(symbol: item.symbol, price: item.price, volatility: item.volatility, volatilityPercent: item.volatilityPercent, volume: item.volume)
                }
            }
        }
    }
}

struct WatchList_Previews: PreviewProvider {
    static var previews: some View {
        WatchList(stocks: assetStocks, cryptos: assetCryptos)
    }
}
