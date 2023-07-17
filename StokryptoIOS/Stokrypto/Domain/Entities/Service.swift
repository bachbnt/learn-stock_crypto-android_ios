//
//  Service.swift
//  Stokrypto
//
//  Created by bach.bui on 14/07/2023.
//

import Foundation

protocol Service {
    var id: String { get }
    var name: String { get }
    var icon: String { get }
    var title: String { get }
    var subtitle: String { get }
    var refId: String { get }
}
