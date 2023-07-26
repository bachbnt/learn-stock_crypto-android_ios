//
//  DIContainer.swift
//  Stokrypto
//
//  Created by bach.bui on 26/07/2023.
//

import Foundation

protocol DIContainer {
    func register<Component>(type: Component.Type, component: Any)
    func resolve<Component>(type: Component.Type) -> Component?
}

class DIContainerImpl: DIContainer {
    static let shared = DIContainerImpl()
    
    private init(){}
    
    var components: [String: Any] = [:]

    func register<Component>(type: Component.Type, component: Any) {
        components["\(type)"] = component
    }
    
    func resolve<Component>(type: Component.Type) -> Component? {
        return components["\(type)"] as? Component
    }
}
