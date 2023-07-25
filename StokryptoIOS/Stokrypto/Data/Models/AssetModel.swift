//
//  AssetModel.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import Foundation

class AssetModel: Asset {
    var id: String
    var symbol: String
    var name: String
    var price: Double
    var volatility: Double
    var volatilityPercent: Double
    var volume: Double
    var type: String
    var unit: String
    
    init(id: String, symbol: String, name: String, price: Double, volatility: Double = 0.0, volatilityPercent: Double = 0.0, volume: Double = 0.0, type: String, unit: String) {
        self.id = id
        self.symbol = symbol
        self.name = name
        self.price = price
        self.volatility = volatility
        self.volatilityPercent = volatilityPercent
        self.volume = volume
        self.type = type
        self.unit = unit
    }
}
