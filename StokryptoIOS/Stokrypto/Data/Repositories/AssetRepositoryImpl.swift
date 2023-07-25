//
//  AssetRepositoryImpl.swift
//  Stokrypto
//
//  Created by bach.bui on 25/07/2023.
//

import Foundation

class AssetRepositoryImpl: AssetRepository {
    let localDataSource: AssetLocalDataSource
    let remoteDataSource: AssetRemoteDataSource
    
    init(localDataSource: AssetLocalDataSource, remoteDataSource: AssetRemoteDataSource) {
        self.localDataSource = localDataSource
        self.remoteDataSource = remoteDataSource
    }
    
    func getAssets() -> [Asset] {
        return remoteDataSource.getAssets()
    }
}
