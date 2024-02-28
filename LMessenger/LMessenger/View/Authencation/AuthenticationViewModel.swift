//
//  AuthenticationViewModel.swift
//  LMessenger
//
//  Created by KMUSER on 2024/02/27.
//

import Foundation

enum AuthenticationStae {
    case unauthenticated
    case authenticated
}

class AuthenticationViewModel: ObservableObject {
    
    @Published var authenticationStae: AuthenticationStae = .unauthenticated
    
    private var container: DiContainer
    
    init(container: DiContainer) {
        self.container = container
    }
}
