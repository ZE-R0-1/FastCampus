//
//  Services.swift
//  LMessenger
//
//  Created by zero on 7/9/24.
//

import Foundation

protocol ServiceType {
    var authService: AuthenticationServiceType { get set }
}

class Services: ServiceType {
    var authService: AuthenticationServiceType
    
    init() {
        self.authService = AuthenticationService()
    }
}

class StubService: ServiceType {
    var authService:  AuthenticationServiceType = StubAuthenticationService()
}
