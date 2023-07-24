//
//  ServiceRepository.swift
//  Stokrypto
//
//  Created by bach.bui on 14/07/2023.
//

import Foundation

protocol ServiceRepository {
    func getServices() -> [Service]
}
