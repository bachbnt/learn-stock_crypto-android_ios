//
//  AssetUseCase.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import Foundation

protocol AssetUseCase {
    func invoke() -> [Asset]
}

class FetchAssetUseCase: AssetUseCase {
    let repository: AssetRepository
    
    init(repository: AssetRepository) {
        self.repository = repository
    }
    
    func invoke() -> [Asset] {
        return repository.getAssets()
    }
}
