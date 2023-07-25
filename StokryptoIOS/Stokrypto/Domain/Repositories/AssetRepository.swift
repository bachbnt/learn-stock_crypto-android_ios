//
//  AssetRepository.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import Foundation

protocol AssetRepository {
    func getAssets() -> [Asset]
}
