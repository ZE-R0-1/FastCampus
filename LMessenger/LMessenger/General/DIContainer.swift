//
//  DIContainer.swift
//  LMessenger
//
//  Created by KMUSER on 2024/02/27.
//

import Foundation

class DiContainer: ObservableObject {
    var services: ServiceType
    
    init(services: ServiceType) {
        self.services = services
    }
}
