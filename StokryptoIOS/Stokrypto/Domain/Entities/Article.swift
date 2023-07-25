//
//  Article.swift
//  Stokrypto
//
//  Created by bach.bui on 24/07/2023.
//

import Foundation

protocol Article {
    var id: String { get }
    var title: String { get }
    var subtitle: String { get }
    var description: String { get }
    var content: String { get }
    var image: String { get }
    var timestamp: Int { get }
}
