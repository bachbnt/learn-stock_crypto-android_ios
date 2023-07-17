//
//  ServiceModel.swift
//  Stokrypto
//
//  Created by bach.bui on 14/07/2023.
//

import Foundation

class ServiceModel: Service {
    var id: String
    var name: String
    var icon: String
    var title: String
    var subtitle: String
    var refId: String
    
    init(id: String, name: String, icon: String, title: String, subtitle: String = "", refId: String) {
        self.id = id
        self.name = name
        self.icon = icon
        self.title = title
        self.subtitle = subtitle
        self.refId = refId
    }
}
