//
//  DIContainer.swift
//  LMessenger
//
//  Created by zero on 7/9/24.
//

import Foundation

class DIContainer: ObservableObject {
    var services: ServiceType
    
    init(services: ServiceType) {
        self.services = services
    }
}
