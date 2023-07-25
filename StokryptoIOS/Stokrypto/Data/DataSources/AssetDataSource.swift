//
//  AssetDataSource.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import Foundation

var assetStocks: [Asset] = [
    AssetModel(id: "1", symbol: "SSI", name: "Công ty cổ phần chứng khoán SSI", price: 28.1, volatility: 0.3, volatilityPercent: 1.1, volume: 5972900.0, type: "stock", unit: "VND"),
    AssetModel(id: "2", symbol: "STB", name: "Ngân hàng thương mại cổ phần Sài Gòn Thương Tín", price: 29.2, volatility: -0.8, volatilityPercent: -2.8, volume: 15510000.0, type: "stock", unit: "VND"),
    AssetModel(id: "3", symbol: "HPG", name: "Công ty cổ phần tập đoàn Hoà Phát", price: 27.0, volatility: 0.0, volatilityPercent: 0.0, volume: 8100000.0, type: "stock", unit: "VND")
]

var assetCryptos: [Asset] = [
    AssetModel(id: "1", symbol: "BTC", name: "Bitcoin", price: 31341243.33, volatility: 900000.0, volatilityPercent: 3.2, volume: 609070.0, type: "crypto", unit: "USD"),
    AssetModel(id: "2", symbol: "ETH", name: "Etherum", price: 2006.59, volatility: 200.08, volatilityPercent: 7.27, volume: 241200.0, type: "crypto", unit: "USD"),
    AssetModel(id: "3", symbol: "BNB", name: "BNB", price: 258.85, volatility: 12.0, volatilityPercent: 6.03, volume: 40380.0, type: "crypto", unit: "USD")
]

protocol AssetLocalDataSource {
    func readAssets() -> [Asset]
    func createAsset() -> Bool
}

protocol AssetRemoteDataSource {
    func getAssets() -> [Asset]
    func postAsset() -> Bool
}

class AssetLocalDataSourceImpl: AssetLocalDataSource {
    func readAssets() -> [Asset] {
        return []
    }
    
    func createAsset() -> Bool {
        return true
    }
}

class AssetRemoteDataSourceImpl: AssetRemoteDataSource {
    func getAssets() -> [Asset] {
        return assetStocks
    }
    
    func postAsset() -> Bool {
        return true
    }
}
