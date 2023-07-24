//
//  ServiceDataSource.swift
//  Stokrypto
//
//  Created by bach.bui on 24/07/2023.
//

import Foundation

var favoriteServices: [Service] = [
    ServiceModel(id: "1", name: "cashIn", icon: "square.and.arrow.up", title: "Nạp tiền", subtitle: "Nạp tiền", refId: ""),
    ServiceModel(id: "2", name: "cashOut", icon: "square.and.arrow.down", title: "Rút tiền", subtitle: "Rút tiền", refId: ""),
    ServiceModel(id: "3", name: "transfer", icon: "arrow.left.arrow.right.square", title: "Chuyển tiền", subtitle: "Chuyển tiền", refId: ""),
    ServiceModel(id: "4", name: "add", icon: "square.grid.2x2", title: "Thêm", refId: "")
]

protocol ServiceLocalDataSource {
    func readServices() -> [Service]
    func createService() -> Bool
}

protocol ServiceRemoteDataSource {
    func getServices() -> [Service]
    func postService() -> Bool
}

class ServiceLocalDataSourceImpl: ServiceLocalDataSource {
    func readServices() -> [Service] {
        return []
    }
    
    func createService() -> Bool {
        return true
    }
    
    
}

class ServiceRemoteDataSourceImpl: ServiceRemoteDataSource {
    func getServices() -> [Service] {
        return favoriteServices
    }
    
    func postService() -> Bool {
        return true
    }
    
    
}
