//
//  ServiceRepositoryImpl.swift
//  Stokrypto
//
//  Created by bach.bui on 14/07/2023.
//

import Foundation

class ServiceRepositoryImpl: ServiceRepository {
    let localDataSource: ServiceLocalDataSource
    let remoteDataSource: ServiceRemoteDataSource
    
    init(localDataSource: ServiceLocalDataSourceImpl, remoteDataSource: ServiceRemoteDataSourceImpl) {
        self.localDataSource = localDataSource
        self.remoteDataSource = remoteDataSource
    }
    
    func getServices() -> [Service] {
        return remoteDataSource.getServices()
    }
}
