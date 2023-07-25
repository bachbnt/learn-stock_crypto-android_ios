//
//  ServiceUseCase.swift
//  Stokrypto
//
//  Created by bach.bui on 24/07/2023.
//

import Foundation

protocol ServiceUseCase {
    func invoke() -> [Service]
}

class FetchServiceUseCase: ServiceUseCase {
    let repository: ServiceRepository
    
    init(repository: ServiceRepository) {
        self.repository = repository
    }
    
    func invoke() -> [Service] {
        return repository.getServices()
    }
}
