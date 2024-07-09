//
//  DIContainer.swift
//  LMessenger
//
//  Created by zero on 7/9/24.
//

import Foundation

class DIContainer: ObservableObject {
    var service: ServiceType
    
    init(service: ServiceType) {
        self.service = service
    }
}
