//
//  Asset.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import Foundation

protocol Asset {
    var id: String { get }
    var symbol: String { get }
    var name: String { get }
    var price: Double { get }
    var volatility: Double { get }
    var volatilityPercent: Double { get }
    var volume: Double { get }
    var type: String { get }
    var unit: String { get }
}
