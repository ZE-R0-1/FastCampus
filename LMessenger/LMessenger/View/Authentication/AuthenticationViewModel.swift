//
//  AuthenticationViewModel.swift
//  LMessenger
//
//  Created by zero on 7/9/24.
//

import Foundation

enum AuthenticationStae {
    case unauthenticated
    case authenticated
}

class AuthenticationViewModel: ObservableObject {
    @Published var authenticationState: AuthenticationStae = .unauthenticated
    
    private var container: DIContainer
    
    init(container: DIContainer) {
        self.container = container
    }
}
